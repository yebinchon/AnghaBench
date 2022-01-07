
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {int aest_atime; } ;
struct archive_entry {TYPE_1__ ae_stat; } ;



time_t
archive_entry_atime(struct archive_entry *entry)
{
 return (entry->ae_stat.aest_atime);
}
