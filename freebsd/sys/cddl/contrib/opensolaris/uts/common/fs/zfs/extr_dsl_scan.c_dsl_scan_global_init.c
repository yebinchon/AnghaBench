
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_weight ;
 int zfs_scan_fill_weight ;

void
dsl_scan_global_init(void)
{
 fill_weight = zfs_scan_fill_weight;
}
