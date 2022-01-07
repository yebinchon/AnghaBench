
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {scalar_t__ os_zil; int os_logbias; } ;
typedef TYPE_1__ objset_t ;


 int ASSERT (int) ;
 int ZFS_LOGBIAS_LATENCY ;
 int ZFS_LOGBIAS_THROUGHPUT ;
 int zil_set_logbias (scalar_t__,int ) ;

__attribute__((used)) static void
logbias_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;

 ASSERT(newval == ZFS_LOGBIAS_LATENCY ||
     newval == ZFS_LOGBIAS_THROUGHPUT);
 os->os_logbias = newval;
 if (os->os_zil)
  zil_set_logbias(os->os_zil, newval);
}
