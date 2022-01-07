
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_4__ {int (* ndo_error ) (TYPE_1__*,char*) ;} ;
typedef TYPE_1__ netdissect_options ;


 int AREAMASK ;
 int AREASHIFT ;
 int NODEMASK ;
 scalar_t__ malloc (size_t) ;
 int snprintf (char*,size_t,char*,int,int) ;
 int stub1 (TYPE_1__*,char*) ;

const char *
dnnum_string(netdissect_options *ndo, u_short dnaddr)
{
 char *str;
 size_t siz;
 int area = (u_short)(dnaddr & AREAMASK) >> AREASHIFT;
 int node = dnaddr & NODEMASK;

 str = (char *)malloc(siz = sizeof("00.0000"));
 if (str == ((void*)0))
  (*ndo->ndo_error)(ndo, "dnnum_string: malloc");
 snprintf(str, siz, "%d.%d", area, node);
 return(str);
}
