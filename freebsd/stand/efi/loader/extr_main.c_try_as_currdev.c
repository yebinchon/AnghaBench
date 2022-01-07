
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int pd_handle; } ;
typedef TYPE_1__ pdinfo_t ;


 scalar_t__ efizfs_get_guid_by_handle (int ,int *) ;
 int probe_zfs_currdev (int ) ;
 int sanity_check_currdev () ;
 int set_currdev_pdinfo (TYPE_1__*) ;

__attribute__((used)) static bool
try_as_currdev(pdinfo_t *hd, pdinfo_t *pp)
{
 uint64_t guid;
 set_currdev_pdinfo(pp);
 return (sanity_check_currdev());
}
