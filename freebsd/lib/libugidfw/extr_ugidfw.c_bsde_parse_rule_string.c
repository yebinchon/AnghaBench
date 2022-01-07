
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_bsdextended_rule {int dummy; } ;


 int bsde_parse_rule (int,char**,struct mac_bsdextended_rule*,size_t,char*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 char* strsep (char**,char*) ;

int
bsde_parse_rule_string(const char *string, struct mac_bsdextended_rule *rule,
    size_t buflen, char *errstr)
{
 char *stringdup, *stringp, *argv[100], **ap;
 int argc, error;

 stringp = stringdup = strdup(string);
 while (*stringp == ' ' || *stringp == '\t')
  stringp++;

 argc = 0;
 for (ap = argv; (*ap = strsep(&stringp, " \t")) != ((void*)0);) {
  argc++;
  if (**ap != '\0')
   if (++ap >= &argv[100])
    break;
 }

 error = bsde_parse_rule(argc, argv, rule, buflen, errstr);

 free(stringdup);

 return (error);
}
