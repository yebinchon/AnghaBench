
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aest_rdev; int aest_rdevmajor; scalar_t__ aest_rdev_is_broken_down; } ;
struct archive_entry {TYPE_1__ ae_stat; } ;
typedef int dev_t ;


 int major (int ) ;

dev_t
archive_entry_rdevmajor(struct archive_entry *entry)
{
 if (entry->ae_stat.aest_rdev_is_broken_down)
  return (entry->ae_stat.aest_rdevmajor);
 else
  return major(entry->ae_stat.aest_rdev);
}
