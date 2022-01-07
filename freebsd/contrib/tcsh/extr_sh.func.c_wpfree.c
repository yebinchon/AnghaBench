
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whyle {struct whyle* w_fename; scalar_t__ w_fe0; } ;


 int blkfree (scalar_t__) ;
 int xfree (struct whyle*) ;

__attribute__((used)) static void
wpfree(struct whyle *wp)
{
 if (wp->w_fe0)
     blkfree(wp->w_fe0);
 xfree(wp->w_fename);
 xfree(wp);
}
