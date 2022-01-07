
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int minor_t ;


 int ASSERT (int ) ;
 int MUTEX_HELD (int *) ;
 int ZFSDEV_MAX_MINOR ;
 int * ddi_get_soft_state (int ,int) ;
 int spa_namespace_lock ;
 int zfsdev_state ;

minor_t
zfsdev_minor_alloc(void)
{
 static minor_t last_minor;
 minor_t m;

 ASSERT(MUTEX_HELD(&spa_namespace_lock));

 for (m = last_minor + 1; m != last_minor; m++) {
  if (m > ZFSDEV_MAX_MINOR)
   m = 1;
  if (ddi_get_soft_state(zfsdev_state, m) == ((void*)0)) {
   last_minor = m;
   return (m);
  }
 }

 return (0);
}
