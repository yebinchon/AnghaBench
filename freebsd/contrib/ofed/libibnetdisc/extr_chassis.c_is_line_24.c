
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {int info; } ;
typedef TYPE_1__ ibnd_node_t ;


 int IB_NODE_DEVID_F ;
 scalar_t__ VTR_DEVID_SLB24 ;
 scalar_t__ VTR_DEVID_SLB24_DDR ;
 scalar_t__ VTR_DEVID_SRB2004 ;
 scalar_t__ mad_get_field (int ,int ,int ) ;

__attribute__((used)) static int is_line_24(ibnd_node_t * n)
{
 uint32_t devid = mad_get_field(n->info, 0, IB_NODE_DEVID_F);
 return (devid == VTR_DEVID_SLB24 ||
  devid == VTR_DEVID_SLB24_DDR || devid == VTR_DEVID_SRB2004);
}
