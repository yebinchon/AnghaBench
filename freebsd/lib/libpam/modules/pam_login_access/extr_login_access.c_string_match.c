
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NO ;
 int YES ;
 scalar_t__ strcasecmp (char const*,char const*) ;

__attribute__((used)) static int
string_match(const char *tok, const char *string)
{






    if (strcasecmp(tok, "ALL") == 0) {
 return (YES);
    } else if (strcasecmp(tok, string) == 0) {
 return (YES);
    }
    return (NO);
}
