
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int WINDOW ;
struct TYPE_3__ {int _use_meta; } ;
typedef TYPE_1__ SCREEN ;


 TYPE_1__* _nc_screen_of (int *) ;

__attribute__((used)) static int
_nc_use_meta(WINDOW *win)
{
    SCREEN *sp = _nc_screen_of(win);
    return (sp ? sp->_use_meta : 0);
}
