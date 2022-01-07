
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char* const) ;
 char* suboptarg ;

int
getsubopt(char **optionp, char * const *tokens, char **valuep)
{
 int cnt;
 char *p;

 suboptarg = *valuep = ((void*)0);

 if (!optionp || !*optionp)
  return(-1);


 for (p = *optionp; *p && (*p == ',' || *p == ' ' || *p == '\t'); ++p);

 if (!*p) {
  *optionp = p;
  return(-1);
 }


 for (suboptarg = p;
     *++p && *p != ',' && *p != '=' && *p != ' ' && *p != '\t';);

 if (*p) {





  if (*p == '=') {
   *p = '\0';
   for (*valuep = ++p;
       *p && *p != ',' && *p != ' ' && *p != '\t'; ++p);
   if (*p)
    *p++ = '\0';
  } else
   *p++ = '\0';

  for (; *p && (*p == ',' || *p == ' ' || *p == '\t'); ++p);
 }


 *optionp = p;

 for (cnt = 0; *tokens; ++tokens, ++cnt)
  if (!strcmp(suboptarg, *tokens))
   return(cnt);
 return(-1);
}
