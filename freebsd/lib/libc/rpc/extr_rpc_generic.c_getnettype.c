
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; scalar_t__ name; } ;


 int _RPC_NETPATH ;
 TYPE_1__* _rpctypelist ;
 scalar_t__ strcasecmp (char const*,scalar_t__) ;
 char* strlocase (char const*) ;

__attribute__((used)) static int
getnettype(const char *nettype)
{
 int i;

 if ((nettype == ((void*)0)) || (nettype[0] == 0)) {
  return (_RPC_NETPATH);
 }




 for (i = 0; _rpctypelist[i].name; i++)
  if (strcasecmp(nettype, _rpctypelist[i].name) == 0) {
   return (_rpctypelist[i].type);
  }
 return (_rpctypelist[i].type);
}
