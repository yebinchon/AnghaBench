
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ len; int * buf; } ;
typedef TYPE_1__ CStr ;


 int CGETS (int,int,char*) ;
 scalar_t__* CcAltMap ;
 scalar_t__* CcKeyMap ;
 int PrintArrowKeys (TYPE_1__*) ;
 int PrintXkey (int *) ;
 int printkeys (scalar_t__*,int,int) ;
 int xprintf (char*,int ) ;

__attribute__((used)) static void
print_all_keys(void)
{
    int prev, i;
    CStr nilstr;
    nilstr.buf = ((void*)0);
    nilstr.len = 0;


    xprintf("%s", CGETS(20, 6, "Standard key bindings\n"));
    prev = 0;
    for (i = 0; i < 256; i++) {
 if (CcKeyMap[prev] == CcKeyMap[i])
     continue;
 printkeys(CcKeyMap, prev, i - 1);
 prev = i;
    }
    printkeys(CcKeyMap, prev, i - 1);

    xprintf("%s", CGETS(20, 7, "Alternative key bindings\n"));
    prev = 0;
    for (i = 0; i < 256; i++) {
 if (CcAltMap[prev] == CcAltMap[i])
     continue;
 printkeys(CcAltMap, prev, i - 1);
 prev = i;
    }
    printkeys(CcAltMap, prev, i - 1);
    xprintf("%s", CGETS(20, 8, "Multi-character bindings\n"));
    PrintXkey(((void*)0));
    xprintf("%s", CGETS(20, 9, "Arrow key bindings\n"));
    PrintArrowKeys(&nilstr);
}
