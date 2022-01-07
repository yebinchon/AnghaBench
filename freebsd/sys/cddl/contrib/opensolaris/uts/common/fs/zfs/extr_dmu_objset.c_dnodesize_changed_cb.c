
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int os_dnodesize; } ;
typedef TYPE_1__ objset_t ;


 int DNODE_MIN_SIZE ;
__attribute__((used)) static void
dnodesize_changed_cb(void *arg, uint64_t newval)
{
 objset_t *os = arg;

 switch (newval) {
 case 128:
  os->os_dnodesize = DNODE_MIN_SIZE;
  break;
 case 129:






  os->os_dnodesize = DNODE_MIN_SIZE * 2;
  break;
 case 133:
 case 132:
 case 131:
 case 130:
 case 134:
  os->os_dnodesize = newval;
  break;
 }
}
