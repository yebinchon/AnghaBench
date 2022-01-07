
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int spinlock_t ;


 int spin_lock (int *) ;

__attribute__((used)) static void
linux_kq_lock(void *arg)
{
 spinlock_t *s = arg;

 spin_lock(s);
}
