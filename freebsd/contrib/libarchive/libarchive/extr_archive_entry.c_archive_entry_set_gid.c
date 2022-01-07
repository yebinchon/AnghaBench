
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aest_gid; } ;
struct archive_entry {TYPE_1__ ae_stat; scalar_t__ stat_valid; } ;
typedef int la_int64_t ;



void
archive_entry_set_gid(struct archive_entry *entry, la_int64_t g)
{
 entry->stat_valid = 0;
 entry->ae_stat.aest_gid = g;
}
