
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_4__ {int info; } ;
typedef TYPE_1__ ibnd_node_t ;


 int IB_NODE_SYSTEM_GUID_F ;
 int IB_NODE_VENDORID_F ;
 scalar_t__ SS_VENDOR_ID ;
 scalar_t__ TS_VENDOR_ID ;
 scalar_t__ XS_VENDOR_ID ;
 scalar_t__ ibnd_is_xsigo_guid (int ) ;
 scalar_t__ mad_get_field (int ,int ,int ) ;
 int mad_get_field64 (int ,int ,int ) ;
 int topspin_chassisguid (int ) ;
 int xsigo_chassisguid (TYPE_1__*) ;

__attribute__((used)) static uint64_t get_chassisguid(ibnd_node_t * node)
{
 uint32_t vendid = mad_get_field(node->info, 0, IB_NODE_VENDORID_F);
 uint64_t sysimgguid =
     mad_get_field64(node->info, 0, IB_NODE_SYSTEM_GUID_F);

 if (vendid == TS_VENDOR_ID || vendid == SS_VENDOR_ID)
  return topspin_chassisguid(sysimgguid);
 else if (vendid == XS_VENDOR_ID || ibnd_is_xsigo_guid(sysimgguid))
  return xsigo_chassisguid(node);
 else
  return sysimgguid;
}
