
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sc; } ;
typedef TYPE_2__ scr_stat ;
struct TYPE_4__ {int adp; } ;


 int mouse_pointer ;
 int vidd_putm (int ,int,int,int ,int,int,int) ;

__attribute__((used)) static void
am335x_rend_draw_mouse(scr_stat* scp, int x, int y, int on)
{
 vidd_putm(scp->sc->adp, x, y, mouse_pointer, 0xffffffff, 16, 8);
}
