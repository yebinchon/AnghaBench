
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ChangeSize (int,int) ;
 int ClearDisp () ;
 int ClearLines () ;
 scalar_t__ GetSize (int*,int*) ;
 scalar_t__ GettingInput ;
 int MoveToChar (int ) ;
 int MoveToLine (int ) ;
 int Refresh () ;
 int cleanup_push (int *,int ) ;
 int cleanup_until (int *) ;
 int disabled_cleanup ;
 int pintr_disabled ;
 scalar_t__ windowchg ;

void
check_window_size(int force)
{
    int lins, cols;


    pintr_disabled++;
    cleanup_push(&pintr_disabled, disabled_cleanup);





    if (GetSize(&lins, &cols) || force) {
 if (GettingInput) {
     ClearLines();
     ClearDisp();
     MoveToLine(0);
     MoveToChar(0);
     ChangeSize(lins, cols);
     Refresh();
 }
 else
     ChangeSize(lins, cols);
    }
    windowchg = 0;
    cleanup_until(&pintr_disabled);
}
