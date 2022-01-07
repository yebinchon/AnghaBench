
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ len; } ;
typedef TYPE_1__ CStr ;


 int CGETS (int,int,char*) ;
 int TryDeleteNode (int **,TYPE_1__*) ;
 int * Xmap ;
 int xprintf (char*,int ) ;

int
DeleteXkey(const CStr *Xkey)
{
    CStr s;

    s = *Xkey;
    if (s.len == 0) {
 xprintf("%s",
         CGETS(9, 3, "DeleteXkey: Null extended-key not allowed.\n"));
 return (-1);
    }

    if (Xmap == ((void*)0))
 return (0);

    (void) TryDeleteNode(&Xmap, &s);
    return (0);
}
