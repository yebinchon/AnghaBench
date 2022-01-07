
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO ;
 int YES ;
 int netgroup_match (char const*,char const*,char*) ;
 scalar_t__ strcasecmp (char const*,char const*) ;
 scalar_t__ strchr (char const*,char) ;
 scalar_t__ string_match (char const*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int
from_match(const char *tok, const char *string)
{
    int tok_len;
    int str_len;
    if (tok[0] == '@') {
 return (netgroup_match(tok + 1, string, (char *) 0));
    } else if (string_match(tok, string)) {
 return (YES);
    } else if (tok[0] == '.') {
 if ((str_len = strlen(string)) > (tok_len = strlen(tok))
     && strcasecmp(tok, string + str_len - tok_len) == 0)
     return (YES);
    } else if (strcasecmp(tok, "LOCAL") == 0) {
 if (strchr(string, '.') == 0)
     return (YES);
    } else if (tok[(tok_len = strlen(tok)) - 1] == '.'
        && strncmp(tok, string, tok_len) == 0) {
 return (YES);
    }
    return (NO);
}
