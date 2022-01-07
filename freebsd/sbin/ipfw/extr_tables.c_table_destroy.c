
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int opheader; } ;
typedef TYPE_1__ ipfw_obj_header ;


 int IP_FW_TABLE_XDESTROY ;
 scalar_t__ do_set3 (int ,int *,int) ;

__attribute__((used)) static int
table_destroy(ipfw_obj_header *oh)
{

 if (do_set3(IP_FW_TABLE_XDESTROY, &oh->opheader, sizeof(*oh)) != 0)
  return (-1);

 return (0);
}
