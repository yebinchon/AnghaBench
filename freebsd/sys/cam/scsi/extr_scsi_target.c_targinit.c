
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int GID_WHEEL ;
 int UID_ROOT ;
 struct cdev* make_dev (int *,int ,int ,int ,int,char*) ;
 int make_dev_alias (struct cdev*,char*) ;
 int targ_cdevsw ;

__attribute__((used)) static void
targinit(void)
{
 struct cdev *dev;


 dev = make_dev(&targ_cdevsw, 0, UID_ROOT, GID_WHEEL, 0600, "targ");
 make_dev_alias(dev, "targ0");
}
