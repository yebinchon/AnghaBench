
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int ) ;
 int dtrace_unregister (int ) ;
 int prototype_cdev ;
 int prototype_id ;

__attribute__((used)) static int
prototype_unload()
{
 int error = 0;

 if ((error = dtrace_unregister(prototype_id)) != 0)
  return (error);

 destroy_dev(prototype_cdev);

 return (error);
}
