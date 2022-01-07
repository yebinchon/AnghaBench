
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,size_t) ;
 int free (char*) ;
 char* match_list (char*,char*,int *) ;
 char* strdup (char const*) ;
 size_t strlcat (char*,char*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 int strlen (char const*) ;
 char* strsep (char**,char*) ;

char *
kex_names_cat(const char *a, const char *b)
{
 char *ret = ((void*)0), *tmp = ((void*)0), *cp, *p, *m;
 size_t len;

 if (a == ((void*)0) || *a == '\0')
  return strdup(b);
 if (b == ((void*)0) || *b == '\0')
  return strdup(a);
 if (strlen(b) > 1024*1024)
  return ((void*)0);
 len = strlen(a) + strlen(b) + 2;
 if ((tmp = cp = strdup(b)) == ((void*)0) ||
     (ret = calloc(1, len)) == ((void*)0)) {
  free(tmp);
  return ((void*)0);
 }
 strlcpy(ret, a, len);
 for ((p = strsep(&cp, ",")); p && *p != '\0'; (p = strsep(&cp, ","))) {
  if ((m = match_list(ret, p, ((void*)0))) != ((void*)0)) {
   free(m);
   continue;
  }
  if (strlcat(ret, ",", len) >= len ||
      strlcat(ret, p, len) >= len) {
   free(tmp);
   free(ret);
   return ((void*)0);
  }
 }
 free(tmp);
 return ret;
}
