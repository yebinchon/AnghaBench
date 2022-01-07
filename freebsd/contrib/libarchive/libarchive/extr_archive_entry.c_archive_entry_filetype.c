
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; } ;
struct archive_entry {TYPE_1__ acl; } ;
typedef int mode_t ;


 int AE_IFMT ;

mode_t
archive_entry_filetype(struct archive_entry *entry)
{
 return (AE_IFMT & entry->acl.mode);
}
