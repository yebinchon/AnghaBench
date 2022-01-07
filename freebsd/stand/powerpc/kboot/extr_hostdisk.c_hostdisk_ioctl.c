
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
struct open_file {int dummy; } ;


 int EINVAL ;

__attribute__((used)) static int
hostdisk_ioctl(struct open_file *f, u_long cmd, void *data)
{

 return (EINVAL);
}
