
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mv_gpio_pindev {int dummy; } ;


 int M_DEVBUF ;
 int free (struct mv_gpio_pindev*,int ) ;

void
mv_gpio_finish_intrhandler(struct mv_gpio_pindev *s)
{
 free(s, M_DEVBUF);
}
