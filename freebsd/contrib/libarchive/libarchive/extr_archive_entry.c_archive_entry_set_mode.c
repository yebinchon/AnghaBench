
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct archive_entry {TYPE_1__ acl; scalar_t__ stat_valid; } ;
typedef int mode_t ;



void
archive_entry_set_mode(struct archive_entry *entry, mode_t m)
{
 entry->stat_valid = 0;
 entry->acl.mode = m;
}
