
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* el_calloc (size_t,int) ;
 int el_free (char**) ;
 char** el_realloc (char**,size_t) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 char* stub1 (char const*,int) ;

char **
completion_matches(const char *text, char *(*genfunc)(const char *, int))
{
 char **match_list = ((void*)0), *retstr, *prevstr;
 size_t match_list_len, max_equal, which, i;
 size_t matches;

 matches = 0;
 match_list_len = 1;
 while ((retstr = (*genfunc) (text, (int)matches)) != ((void*)0)) {

  if (matches + 3 >= match_list_len) {
   char **nmatch_list;
   while (matches + 3 >= match_list_len)
    match_list_len <<= 1;
   nmatch_list = el_realloc(match_list,
       match_list_len * sizeof(*nmatch_list));
   if (nmatch_list == ((void*)0)) {
    el_free(match_list);
    return ((void*)0);
   }
   match_list = nmatch_list;

  }
  match_list[++matches] = retstr;
 }

 if (!match_list)
  return ((void*)0);


 which = 2;
 prevstr = match_list[1];
 max_equal = strlen(prevstr);
 for (; which <= matches; which++) {
  for (i = 0; i < max_equal &&
      prevstr[i] == match_list[which][i]; i++)
   continue;
  max_equal = i;
 }

 retstr = el_calloc(max_equal + 1, sizeof(*retstr));
 if (retstr == ((void*)0)) {
  el_free(match_list);
  return ((void*)0);
 }
 (void)strncpy(retstr, match_list[1], max_equal);
 retstr[max_equal] = '\0';
 match_list[0] = retstr;


 match_list[matches + 1] = ((void*)0);

 return match_list;
}
