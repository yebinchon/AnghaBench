
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_dev_entered {int is_local; } ;


 struct cuse_dev_entered* cuse_dev_get_entered () ;

void
cuse_set_local(int val)
{
 struct cuse_dev_entered *pe;

 pe = cuse_dev_get_entered();
 if (pe == ((void*)0))
  return;

 pe->is_local = val;
}
