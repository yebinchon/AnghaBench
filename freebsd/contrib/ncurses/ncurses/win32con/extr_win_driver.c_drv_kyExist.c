
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int keylist ;
typedef int WORD ;
struct TYPE_2__ {int rmap; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef int SCREEN ;
typedef int LONG ;


 int AssertTCB () ;
 int FALSE ;
 scalar_t__ FKEYS ;
 int GenMap (int ,int) ;
 int LOWORD (int ) ;
 scalar_t__ N_INI ;
 TYPE_1__* PropOf (int *) ;
 int SetSP () ;
 int T (int ) ;
 int TRUE ;
 int T_CALLED (char*) ;
 void* bsearch (int *,int ,size_t,int,int ) ;
 int returnCode (int) ;
 int rkeycompare ;

__attribute__((used)) static bool
drv_kyExist(TERMINAL_CONTROL_BLOCK * TCB, int keycode)
{
    SCREEN *sp;
    WORD nKey;
    void *res;
    bool found = FALSE;
    LONG key = GenMap(0, (WORD) keycode);

    AssertTCB();
    SetSP();

    AssertTCB();

    T((T_CALLED("win32con::drv_kyExist(%p, %d)"), TCB, keycode));
    res = bsearch(&key,
    PropOf(TCB)->rmap,
    (size_t) (N_INI + FKEYS),
    sizeof(keylist[0]),
    rkeycompare);
    if (res) {
 key = *((LONG *) res);
 nKey = LOWORD(key);
 if (!(nKey & 0x8000))
     found = TRUE;
    }
    returnCode(found);
}
