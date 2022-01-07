
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobject {struct kobj_type* ktype; struct kobject* parent; } ;
struct kobj_type {struct attribute** default_attrs; } ;
struct attribute {int dummy; } ;


 int sysfs_create_dir (struct kobject*) ;
 int sysfs_create_file (struct kobject*,struct attribute*) ;
 int sysfs_remove_dir (struct kobject*) ;

__attribute__((used)) static int
kobject_add_complete(struct kobject *kobj, struct kobject *parent)
{
 const struct kobj_type *t;
 int error;

 kobj->parent = parent;
 error = sysfs_create_dir(kobj);
 if (error == 0 && kobj->ktype && kobj->ktype->default_attrs) {
  struct attribute **attr;
  t = kobj->ktype;

  for (attr = t->default_attrs; *attr != ((void*)0); attr++) {
   error = sysfs_create_file(kobj, *attr);
   if (error)
    break;
  }
  if (error)
   sysfs_remove_dir(kobj);

 }
 return (error);
}
