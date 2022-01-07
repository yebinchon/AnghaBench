
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int aest_nlink; } ;
struct archive_entry {TYPE_1__ ae_stat; scalar_t__ stat_valid; } ;



void
archive_entry_set_nlink(struct archive_entry *entry, unsigned int nlink)
{
 entry->stat_valid = 0;
 entry->ae_stat.aest_nlink = nlink;
}
