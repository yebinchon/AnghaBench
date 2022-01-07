
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int prefix; int interface_id; } ;
struct TYPE_5__ {TYPE_1__ unicast; } ;
typedef TYPE_2__ ib_gid_t ;


 int INT_ID_MASK ;
 int INT_ID_SIGNATURE ;
 int PREFIX_MASK ;
 int PREFIX_SIGNATURE ;

__attribute__((used)) static unsigned match_ipv6_snm_mgid(ib_gid_t * mgid)
{
 return ((mgid->unicast.prefix & PREFIX_MASK) == PREFIX_SIGNATURE &&
  (mgid->unicast.interface_id & INT_ID_MASK) == INT_ID_SIGNATURE);
}
