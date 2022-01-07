
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int time_t ;
struct TYPE_2__ {long aest_ctime_nsec; int aest_ctime; } ;
struct archive_entry {TYPE_1__ ae_stat; int ae_set; scalar_t__ stat_valid; } ;


 int AE_SET_CTIME ;
 int FIX_NS (int ,long) ;

void
archive_entry_set_ctime(struct archive_entry *entry, time_t t, long ns)
{
 FIX_NS(t, ns);
 entry->stat_valid = 0;
 entry->ae_set |= AE_SET_CTIME;
 entry->ae_stat.aest_ctime = t;
 entry->ae_stat.aest_ctime_nsec = ns;
}
