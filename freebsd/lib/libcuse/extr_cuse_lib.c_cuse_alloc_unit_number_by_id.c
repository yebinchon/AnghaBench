
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CUSE_ERR_INVALID ;
 int CUSE_ERR_NO_MEMORY ;
 int CUSE_ID_MASK ;
 int CUSE_IOCTL_ALLOC_UNIT_BY_ID ;
 scalar_t__ f_cuse ;
 int ioctl (scalar_t__,int ,int*) ;

int
cuse_alloc_unit_number_by_id(int *pnum, int id)
{
 int error;

 if (f_cuse < 0)
  return (CUSE_ERR_INVALID);

 *pnum = (id & CUSE_ID_MASK);

 error = ioctl(f_cuse, CUSE_IOCTL_ALLOC_UNIT_BY_ID, pnum);
 if (error)
  return (CUSE_ERR_NO_MEMORY);

 return (0);

}
