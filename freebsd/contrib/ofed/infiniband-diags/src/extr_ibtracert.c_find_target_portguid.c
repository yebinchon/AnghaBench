
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int ib_portid_t ;
struct TYPE_3__ {int portguid; } ;
typedef TYPE_1__ Port ;
typedef int Node ;


 int IBWARN (char*) ;
 scalar_t__ get_node (int *,TYPE_1__*,int *) ;

__attribute__((used)) static uint64_t find_target_portguid(ib_portid_t * to)
{
 Node tonode;
 Port toport;

 if (get_node(&tonode, &toport, to) < 0) {
  IBWARN("can't find to port\n");
  return -1;
 }

 return toport.portguid;
}
