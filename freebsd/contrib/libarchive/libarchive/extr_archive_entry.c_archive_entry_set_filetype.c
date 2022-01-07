
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int mode; } ;
struct archive_entry {TYPE_1__ acl; scalar_t__ stat_valid; } ;


 unsigned int AE_IFMT ;

void
archive_entry_set_filetype(struct archive_entry *entry, unsigned int type)
{
 entry->stat_valid = 0;
 entry->acl.mode &= ~AE_IFMT;
 entry->acl.mode |= AE_IFMT & type;
}
