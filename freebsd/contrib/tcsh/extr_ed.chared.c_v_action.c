
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Char ;
typedef int CCRETVAL ;


 int ActionFlag ;
 void* ActionPos ;
 int CC_ARGHACK ;
 int CC_ERROR ;
 int CC_REFRESH ;
 void* Cursor ;
 void* InputBuf ;
 int * LastChar ;
 int TCSHOP_DELETE ;
 int TCSHOP_INSERT ;
 int TCSHOP_NOP ;
 int UndoAction ;
 int * UndoBuf ;
 void* UndoPtr ;
 scalar_t__ UndoSize ;
 int c_alternativ_key_map (int ) ;

__attribute__((used)) static CCRETVAL
v_action(int c)
{
    Char *cp, *kp;

    if (ActionFlag == TCSHOP_DELETE) {
 ActionFlag = TCSHOP_NOP;
 ActionPos = 0;

 UndoSize = 0;
 kp = UndoBuf;
 for (cp = InputBuf; cp < LastChar; cp++) {
     *kp++ = *cp;
     UndoSize++;
 }

 UndoAction = TCSHOP_INSERT;
 UndoPtr = InputBuf;
 LastChar = InputBuf;
 Cursor = InputBuf;
 if (c & TCSHOP_INSERT)
     c_alternativ_key_map(0);

 return(CC_REFRESH);
    }



 ActionPos = Cursor;
 ActionFlag = c;
 return(CC_ARGHACK);
}
