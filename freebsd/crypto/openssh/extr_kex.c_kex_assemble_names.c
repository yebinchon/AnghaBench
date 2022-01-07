
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_INTERNAL_ERROR ;
 int SSH_ERR_INVALID_ARGUMENT ;
 int free (char*) ;
 char* kex_names_cat (char const*,char*) ;
 char* match_filter_blacklist (char const*,char*) ;
 char* match_filter_whitelist (char const*,char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

int
kex_assemble_names(char **listp, const char *def, const char *all)
{
 char *cp, *tmp, *patterns;
 char *list = ((void*)0), *ret = ((void*)0), *matching = ((void*)0), *opatterns = ((void*)0);
 int r = SSH_ERR_INTERNAL_ERROR;

 if (listp == ((void*)0) || *listp == ((void*)0) || **listp == '\0') {
  if ((*listp = strdup(def)) == ((void*)0))
   return SSH_ERR_ALLOC_FAIL;
  return 0;
 }

 list = *listp;
 *listp = ((void*)0);
 if (*list == '+') {

  if ((tmp = kex_names_cat(def, list + 1)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto fail;
  }
  free(list);
  list = tmp;
 } else if (*list == '-') {

  if ((*listp = match_filter_blacklist(def, list + 1)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto fail;
  }
  free(list);

  return 0;
 } else {

 }






 ret = ((void*)0);
 if ((patterns = opatterns = strdup(list)) == ((void*)0)) {
  r = SSH_ERR_ALLOC_FAIL;
  goto fail;
 }

 while ((cp = strsep(&patterns, ",")) != ((void*)0)) {
  if (*cp == '!') {

   r = SSH_ERR_INVALID_ARGUMENT;
   goto fail;
  }
  free(matching);
  if ((matching = match_filter_whitelist(all, cp)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto fail;
  }
  if ((tmp = kex_names_cat(ret, matching)) == ((void*)0)) {
   r = SSH_ERR_ALLOC_FAIL;
   goto fail;
  }
  free(ret);
  ret = tmp;
 }
 if (ret == ((void*)0) || *ret == '\0') {


  r = SSH_ERR_INVALID_ARGUMENT;
  goto fail;
 }


 *listp = ret;
 ret = ((void*)0);
 r = 0;

 fail:
 free(matching);
 free(opatterns);
 free(list);
 free(ret);
 return r;
}
