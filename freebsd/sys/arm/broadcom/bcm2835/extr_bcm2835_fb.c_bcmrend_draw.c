
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int video_adapter_t ;
typedef int uint16_t ;
struct TYPE_5__ {int vtb; TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_4__ {int * adp; } ;


 int sc_vtb_geta (int *,int) ;
 int sc_vtb_getc (int *,int) ;
 scalar_t__ sc_vtb_pointer (int *,int) ;
 int vidd_putc (int *,int,int,int) ;
 int vidd_puts (int *,int,int *,int) ;

__attribute__((used)) static void
bcmrend_draw(scr_stat* scp, int from, int count, int flip)
{
 video_adapter_t* adp = scp->sc->adp;
 int i, c, a;

 if (!flip) {

  vidd_puts(adp, from, (uint16_t*)sc_vtb_pointer(&scp->vtb, from), count);
 } else {

  for (i = count; i-- > 0; ++from) {
   c = sc_vtb_getc(&scp->vtb, from);
   a = sc_vtb_geta(&scp->vtb, from) >> 8;
   vidd_putc(adp, from, c, (a >> 4) | ((a & 0xf) << 4));
  }
 }
}
