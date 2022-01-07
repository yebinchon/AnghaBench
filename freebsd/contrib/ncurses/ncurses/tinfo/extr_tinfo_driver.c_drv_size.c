
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int use_env; int use_tioctl; } ;
struct TYPE_8__ {int _use_env; int _use_tioctl; scalar_t__ _filtered; } ;
struct TYPE_7__ {int Filedes; } ;
struct TYPE_6__ {TYPE_3__* csp; } ;
typedef TYPE_1__ TERMINAL_CONTROL_BLOCK ;
typedef TYPE_2__ TERMINAL ;
typedef int STRUCT_WINSIZE ;
typedef TYPE_3__ SCREEN ;


 int AssertTCB () ;
 scalar_t__ EINTR ;
 int IOCTL_WINSIZE ;
 int OK ;
 int T (char*) ;
 int TRUE ;
 int WINSIZE_COLS (int ) ;
 int WINSIZE_ROWS (int ) ;
 int _nc_getenv_num (char*) ;
 TYPE_5__ _nc_prescreen ;
 int _nc_setenv_num (char*,int) ;
 int _scrsize (int*) ;
 short columns ;
 scalar_t__ errno ;
 scalar_t__ ioctl (int ,int ,int *) ;
 scalar_t__ isatty (int ) ;
 short lines ;

__attribute__((used)) static int
drv_size(TERMINAL_CONTROL_BLOCK * TCB, int *linep, int *colp)
{
    SCREEN *sp;
    bool useEnv = TRUE;
    bool useTioctl = TRUE;

    AssertTCB();
    sp = TCB->csp;

    if (sp) {
 useEnv = sp->_use_env;
 useTioctl = sp->_use_tioctl;
    } else {
 useEnv = _nc_prescreen.use_env;
 useTioctl = _nc_prescreen.use_tioctl;
    }


    T(("screen size: terminfo lines = %d columns = %d", lines, columns));

    *linep = (int) lines;
    *colp = (int) columns;

    if (useEnv || useTioctl) {
 int value;
 if (useEnv) {
     if (useTioctl) {



  if ((sp == 0 || !sp->_filtered) && _nc_getenv_num("LINES") > 0) {
      _nc_setenv_num("LINES", *linep);
  }
  if (_nc_getenv_num("COLUMNS") > 0) {
      _nc_setenv_num("COLUMNS", *colp);
  }
     }







     if ((value = _nc_getenv_num("LINES")) > 0) {
  *linep = value;
  T(("screen size: environment LINES = %d", *linep));
     }
     if ((value = _nc_getenv_num("COLUMNS")) > 0) {
  *colp = value;
  T(("screen size: environment COLUMNS = %d", *colp));
     }
 }


 if (*linep <= 0) {
     *linep = (int) lines;
 }
 if (*colp <= 0) {
     *colp = (int) columns;
 }


 if (*linep <= 0) {
     *linep = 24;
 }
 if (*colp <= 0) {
     *colp = 80;
 }





 lines = (short) (*linep);
 columns = (short) (*colp);
    }

    T(("screen size is %dx%d", *linep, *colp));
    return OK;
}
