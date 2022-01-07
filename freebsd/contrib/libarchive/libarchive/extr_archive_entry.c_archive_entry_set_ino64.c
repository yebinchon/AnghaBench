
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int aest_ino; } ;
struct archive_entry {TYPE_1__ ae_stat; int ae_set; scalar_t__ stat_valid; } ;
typedef int la_int64_t ;


 int AE_SET_INO ;

void
archive_entry_set_ino64(struct archive_entry *entry, la_int64_t ino)
{
 entry->stat_valid = 0;
 entry->ae_set |= AE_SET_INO;
 entry->ae_stat.aest_ino = ino;
}
