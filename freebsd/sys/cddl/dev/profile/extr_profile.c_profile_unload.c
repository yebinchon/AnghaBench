
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int ) ;
 int dtrace_unregister (int ) ;
 int profile_cdev ;
 int profile_id ;

__attribute__((used)) static int
profile_unload()
{
 int error = 0;

 if ((error = dtrace_unregister(profile_id)) != 0)
  return (error);

 destroy_dev(profile_cdev);

 return (error);
}
