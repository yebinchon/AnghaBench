
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vfsoptlist {int dummy; } ;
struct prison {int dummy; } ;
typedef int jsys ;


 int JAIL_SYS_INHERIT ;
 int linux_alloc_prison (struct prison*,int *) ;
 scalar_t__ vfs_copyopt (struct vfsoptlist*,char*,int*,int) ;

__attribute__((used)) static int
linux_prison_create(void *obj, void *data)
{
 struct prison *pr = obj;
 struct vfsoptlist *opts = data;
 int jsys;

 if (vfs_copyopt(opts, "linux", &jsys, sizeof(jsys)) == 0 &&
     jsys == JAIL_SYS_INHERIT)
  return (0);




 linux_alloc_prison(pr, ((void*)0));
 return (0);
}
