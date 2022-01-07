
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int keylist ;
typedef int WORD ;
struct TYPE_2__ {int map; } ;
typedef int TERMINAL_CONTROL_BLOCK ;
typedef int LONG ;


 int AssertTCB () ;
 scalar_t__ FKEYS ;
 int GenMap (int,int ) ;
 int LOWORD (int ) ;
 scalar_t__ N_INI ;
 TYPE_1__* PropOf (int *) ;
 void* bsearch (int *,int ,size_t,int,int ) ;
 int keycompare ;

__attribute__((used)) static int
MapKey(TERMINAL_CONTROL_BLOCK * TCB, WORD vKey)
{
    WORD nKey = 0;
    void *res;
    LONG key = GenMap(vKey, 0);
    int code = -1;

    AssertTCB();

    res = bsearch(&key,
    PropOf(TCB)->map,
    (size_t) (N_INI + FKEYS),
    sizeof(keylist[0]),
    keycompare);
    if (res) {
 key = *((LONG *) res);
 nKey = LOWORD(key);
 code = (int) (nKey & 0x7fff);
 if (nKey & 0x8000)
     code = -code;
    }
    return code;
}
