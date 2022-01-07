
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pidfh {int dummy; } ;


 int _pidfile_remove (struct pidfh*,int) ;

int
pidfile_remove(struct pidfh *pfh)
{

 return (_pidfile_remove(pfh, 1));
}
