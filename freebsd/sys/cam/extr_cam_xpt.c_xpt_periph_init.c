
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GID_OPERATOR ;
 int UID_ROOT ;
 int make_dev (int *,int ,int ,int ,int,char*) ;
 int xpt_cdevsw ;

__attribute__((used)) static void
xpt_periph_init()
{
 make_dev(&xpt_cdevsw, 0, UID_ROOT, GID_OPERATOR, 0600, "xpt0");
}
