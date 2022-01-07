
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {long aest_ctime_nsec; } ;
struct archive_entry {TYPE_1__ ae_stat; } ;



long
archive_entry_ctime_nsec(struct archive_entry *entry)
{
 return (entry->ae_stat.aest_ctime_nsec);
}
