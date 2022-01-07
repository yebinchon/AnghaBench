
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ActionFlag ;
 scalar_t__ ActionPos ;
 scalar_t__ Cursor ;
 int RefCursor () ;
 int TCSHOP_INSERT ;
 int TCSHOP_NOP ;
 int UndoAction ;
 scalar_t__ UndoPtr ;
 int UndoSize ;
 int c_alternativ_key_map (int ) ;
 int c_delafter (int) ;
 int c_delbefore (int) ;

__attribute__((used)) static void
c_delfini(void)
{
    int Size;

    if (ActionFlag & TCSHOP_INSERT)
 c_alternativ_key_map(0);

    ActionFlag = TCSHOP_NOP;

    if (ActionPos == 0)
 return;

    UndoAction = TCSHOP_INSERT;

    if (Cursor > ActionPos) {
 Size = (int) (Cursor-ActionPos);
 c_delbefore(Size);
 RefCursor();
    }
    else if (Cursor < ActionPos) {
 Size = (int)(ActionPos-Cursor);
 c_delafter(Size);
    }
    else {
 Size = 1;
 c_delafter(Size);
    }
    UndoPtr = Cursor;
    UndoSize = Size;
}
