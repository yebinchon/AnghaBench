
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AUDIT_CONTROL_FILE ;
 int AU_LINE_MAX ;
 int delim ;
 scalar_t__ ferror (int *) ;
 int * fgets (char*,int ,int *) ;
 int * fopen (int ,char*) ;
 int * fp ;
 char* linestr ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strtok_r (char*,int ,char**) ;

__attribute__((used)) static int
getstrfromtype_locked(const char *name, char **str)
{
 char *type, *nl;
 char *tokptr;
 char *last;

 *str = ((void*)0);

 if ((fp == ((void*)0)) && ((fp = fopen(AUDIT_CONTROL_FILE, "r")) == ((void*)0)))
  return (-1);

 while (1) {
  if (fgets(linestr, AU_LINE_MAX, fp) == ((void*)0)) {
   if (ferror(fp))
    return (-1);
   return (0);
  }

  if (linestr[0] == '#')
   continue;


  nl = strchr(linestr, '\0') - 1;
  while (nl >= linestr && ('\n' == *nl || ' ' == *nl ||
   '\t' == *nl)) {
   *nl = '\0';
   nl--;
  }

  tokptr = linestr;
  if ((type = strtok_r(tokptr, delim, &last)) != ((void*)0)) {
   if (strcmp(name, type) == 0) {

    *str = last;
    return (0);
   }
  }
 }
}
