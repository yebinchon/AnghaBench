
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int _mouse_initialized; int _mouse_type; scalar_t__ _mouse_events; int _mouse_eventp; } ;
typedef TYPE_1__ SCREEN ;


 int EV_MAX ;
 int FALSE ;
 int FirstEV (TYPE_1__*) ;
 int Invalidate (scalar_t__) ;
 int MY_TRACE ;
 int T (char*) ;
 int TR (int ,char*) ;
 int TRUE ;
 int initialize_mousetype (TYPE_1__*) ;

__attribute__((used)) static bool
_nc_mouse_init(SCREEN *sp)

{
    bool result = FALSE;
    int i;

    if (sp != 0) {
 if (!sp->_mouse_initialized) {
     sp->_mouse_initialized = TRUE;

     TR(MY_TRACE, ("_nc_mouse_init() called"));

     sp->_mouse_eventp = FirstEV(sp);
     for (i = 0; i < EV_MAX; i++)
  Invalidate(sp->_mouse_events + i);

     initialize_mousetype(sp);

     T(("_nc_mouse_init() set mousetype to %d", sp->_mouse_type));
 }
 result = sp->_mouse_initialized;
    }
    return result;
}
