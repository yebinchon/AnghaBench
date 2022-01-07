
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int type; scalar_t__ a_seek; scalar_t__ f_seek; } ;
struct TYPE_3__ {int type; scalar_t__ a_seek; scalar_t__ f_seek; } ;
struct whyle {TYPE_2__ w_end; TYPE_1__ w_start; struct whyle* w_next; } ;
struct Ain {int type; scalar_t__ a_seek; scalar_t__ f_seek; } ;


 int TCSH_F_SEEK ;
 int TCSH_I_SEEK ;
 int btell (struct Ain*) ;
 struct whyle* whyles ;
 int wpfree (struct whyle*) ;
 int xprintf (char*,char const,scalar_t__,scalar_t__) ;

void
wfree(void)
{
    struct Ain o;
    struct whyle *nwp;
    btell(&o);






    for (; whyles; whyles = nwp) {
 struct whyle *wp = whyles;
 nwp = wp->w_next;
 if (wp->w_end.type != TCSH_I_SEEK && wp->w_start.type == wp->w_end.type &&
     wp->w_start.type == o.type) {
     if (wp->w_end.type == TCSH_F_SEEK) {
  if (o.f_seek >= wp->w_start.f_seek &&
      (wp->w_end.f_seek == 0 || o.f_seek < wp->w_end.f_seek))
      break;
     }
     else {
  if (o.a_seek >= wp->w_start.a_seek &&
      (wp->w_end.a_seek == 0 || o.a_seek < wp->w_end.a_seek))
      break;
     }
 }

 wpfree(wp);
    }
}
