
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct open_file {int * f_devdata; } ;


 scalar_t__ debug ;
 int netdev_opens ;
 int printf (char*,int) ;

__attribute__((used)) static int
net_close(struct open_file *f)
{






 f->f_devdata = ((void*)0);

 return (0);
}
