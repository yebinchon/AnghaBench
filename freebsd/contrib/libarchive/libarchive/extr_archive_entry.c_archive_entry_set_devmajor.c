
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aest_dev_is_broken_down; int aest_devmajor; } ;
struct archive_entry {TYPE_1__ ae_stat; int ae_set; scalar_t__ stat_valid; } ;
typedef int dev_t ;


 int AE_SET_DEV ;

void
archive_entry_set_devmajor(struct archive_entry *entry, dev_t m)
{
 entry->stat_valid = 0;
 entry->ae_set |= AE_SET_DEV;
 entry->ae_stat.aest_dev_is_broken_down = 1;
 entry->ae_stat.aest_devmajor = m;
}
