
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* from; char* to; } ;
typedef TYPE_1__ assoc ;


 int FALSE ;
 int MAX_TERMINFO_LENGTH ;
 int TRUE ;
 int _nc_STRCAT (char*,char const*,int ) ;
 scalar_t__ same_param (char*,char const*,size_t) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;

__attribute__((used)) static char *
lookup_params(const assoc * table, char *dst, char *src)
{
    char *result = 0;
    const char *ep = strtok(src, ";");

    if (ep != 0) {
 const assoc *ap;

 do {
     bool found = FALSE;

     for (ap = table; ap->from; ap++) {
  size_t tlen = strlen(ap->from);

  if (same_param(ap->from, ep, tlen)) {
      _nc_STRCAT(dst, ap->to, MAX_TERMINFO_LENGTH);
      found = TRUE;
      break;
  }
     }

     if (!found)
  _nc_STRCAT(dst, ep, MAX_TERMINFO_LENGTH);
     _nc_STRCAT(dst, ";", MAX_TERMINFO_LENGTH);
 } while
     ((ep = strtok((char *) 0, ";")));

 dst[strlen(dst) - 1] = '\0';

 result = dst;
    }
    return result;
}
