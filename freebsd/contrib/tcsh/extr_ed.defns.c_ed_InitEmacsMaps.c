
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; int len; } ;
typedef char Char ;
typedef TYPE_1__ CStr ;


 int AddXkey (TYPE_1__*,int ,int ) ;
 int BindArrowKeys () ;
 char CTL_ESC (char) ;
 int * CcAltMap ;
 int * CcEmacsMap ;
 int * CcKeyMap ;
 int F_COMMAND_NORM ;
 int F_COMPLETE_ALL ;
 int F_EXCHANGE_MARK ;
 int F_EXPAND_GLOB ;
 int F_EXPAND_VARS ;
 int F_LIST_ALL ;
 int F_LIST_GLOB ;
 int F_PATH_NORM ;
 int F_UNASSIGNED ;
 int NT_NUM_KEYS ;
 int ResetArrowKeys () ;
 int ResetXmap () ;
 int STRvimode ;
 scalar_t__ VImode ;
 int XK_CMD ;
 int XmapCmd (int ) ;
 scalar_t__ adrof (int ) ;
 int ed_InitMetaBindings () ;
 int ed_InitNLSMaps () ;
 int unsetv (int ) ;
 int update_wordchars () ;

void
ed_InitEmacsMaps(void)
{
    int i;
    Char buf[3];
    CStr cstr;
    cstr.buf = buf;
    cstr.len = 2;

    VImode = 0;
    if (adrof(STRvimode))
 unsetv(STRvimode);
    update_wordchars();

    ResetXmap();
    for (i = 0; i < NT_NUM_KEYS; i++) {
 CcKeyMap[i] = CcEmacsMap[i];
 CcAltMap[i] = F_UNASSIGNED;
    }
    ed_InitMetaBindings();
    ed_InitNLSMaps();
    buf[0] = CTL_ESC('\030');
    buf[2] = 0;
    buf[1] = CTL_ESC('\030');
    AddXkey(&cstr, XmapCmd(F_EXCHANGE_MARK), XK_CMD);
    buf[1] = '*';
    AddXkey(&cstr, XmapCmd(F_EXPAND_GLOB), XK_CMD);
    buf[1] = '$';
    AddXkey(&cstr, XmapCmd(F_EXPAND_VARS), XK_CMD);
    buf[1] = 'G';
    AddXkey(&cstr, XmapCmd(F_LIST_GLOB), XK_CMD);
    buf[1] = 'g';
    AddXkey(&cstr, XmapCmd(F_LIST_GLOB), XK_CMD);
    buf[1] = 'n';
    AddXkey(&cstr, XmapCmd(F_PATH_NORM), XK_CMD);
    buf[1] = 'N';
    AddXkey(&cstr, XmapCmd(F_PATH_NORM), XK_CMD);
    buf[1] = '?';
    AddXkey(&cstr, XmapCmd(F_COMMAND_NORM), XK_CMD);
    buf[1] = '\t';
    AddXkey(&cstr, XmapCmd(F_COMPLETE_ALL), XK_CMD);
    buf[1] = CTL_ESC('\004');
    AddXkey(&cstr, XmapCmd(F_LIST_ALL), XK_CMD);
    ResetArrowKeys();
    BindArrowKeys();
}
