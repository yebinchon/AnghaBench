
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CUSE_ERR_INVALID ;
 int CUSE_ERR_NO_MEMORY ;
 int CUSE_IOCTL_FREE_UNIT ;
 scalar_t__ f_cuse ;
 int ioctl (scalar_t__,int ,int*) ;

int
cuse_free_unit_number(int num)
{
 int error;

 if (f_cuse < 0)
  return (CUSE_ERR_INVALID);

 error = ioctl(f_cuse, CUSE_IOCTL_FREE_UNIT, &num);
 if (error)
  return (CUSE_ERR_NO_MEMORY);

 return (0);
}
