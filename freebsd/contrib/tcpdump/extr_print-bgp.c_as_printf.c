
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_3__ {int ndo_bflag; } ;
typedef TYPE_1__ netdissect_options ;


 int snprintf (char*,int,char*,int,...) ;

__attribute__((used)) static char *
as_printf(netdissect_options *ndo,
          char *str, int size, u_int asnum)
{
 if (!ndo->ndo_bflag || asnum <= 0xFFFF) {
  snprintf(str, size, "%u", asnum);
 } else {
  snprintf(str, size, "%u.%u", asnum >> 16, asnum & 0xFFFF);
 }
 return str;
}
