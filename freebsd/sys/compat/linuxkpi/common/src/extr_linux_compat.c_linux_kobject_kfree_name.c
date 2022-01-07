
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {int name; } ;


 int kfree (int ) ;

__attribute__((used)) static void
linux_kobject_kfree_name(struct kobject *kobj)
{
 if (kobj) {
  kfree(kobj->name);
 }
}
