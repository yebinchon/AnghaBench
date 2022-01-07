
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ cmd; } ;
typedef TYPE_1__ XmapVal ;
struct TYPE_9__ {scalar_t__ len; int buf; } ;
typedef TYPE_2__ CStr ;


 int CGETS (int,int,char*) ;
 scalar_t__ F_XKEY ;
 int * GetFreeNode (TYPE_2__*) ;
 int TryNode (int *,TYPE_2__*,TYPE_1__*,int) ;
 int XK_CMD ;
 int * Xmap ;
 int xprintf (char*,int ) ;

void
AddXkey(const CStr *Xkey, XmapVal *val, int ntype)
{
    CStr cs;
    cs.buf = Xkey->buf;
    cs.len = Xkey->len;
    if (Xkey->len == 0) {
 xprintf("%s", CGETS(9, 1, "AddXkey: Null extended-key not allowed.\n"));
 return;
    }

    if (ntype == XK_CMD && val->cmd == F_XKEY) {
 xprintf("%s",
     CGETS(9, 2, "AddXkey: sequence-lead-in command not allowed\n"));
 return;
    }

    if (Xmap == ((void*)0))

 Xmap = GetFreeNode(&cs);


    (void) TryNode(Xmap, &cs, val, ntype);
    return;
}
