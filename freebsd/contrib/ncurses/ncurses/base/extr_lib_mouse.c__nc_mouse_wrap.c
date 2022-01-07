
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int _mouse_type; int _mouse_mask; } ;
typedef TYPE_1__ SCREEN ;


 int FALSE ;
 int MY_TRACE ;





 int TR (int ,char*) ;
 int mouse_activate (TYPE_1__*,int ) ;

__attribute__((used)) static void
_nc_mouse_wrap(SCREEN *sp)

{
    TR(MY_TRACE, ("_nc_mouse_wrap() called"));

    switch (sp->_mouse_type) {
    case 128:
 if (sp->_mouse_mask)
     mouse_activate(sp, FALSE);
 break;
    case 131:
 break;
    }
}
