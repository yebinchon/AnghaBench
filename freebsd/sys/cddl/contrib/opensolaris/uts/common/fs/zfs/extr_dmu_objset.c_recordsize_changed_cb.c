
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int os_recordsize; } ;
typedef TYPE_1__ objset_t ;



__attribute__((used)) static void
recordsize_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;

 os->os_recordsize = newval;
}
