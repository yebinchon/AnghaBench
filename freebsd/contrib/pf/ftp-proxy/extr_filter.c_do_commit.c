
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIOCXCOMMIT ;
 int dev ;
 int ioctl (int ,int ,int *) ;
 int pft ;

int
do_commit(void)
{
 if (ioctl(dev, DIOCXCOMMIT, &pft) == -1)
  return (-1);

 return (0);
}
