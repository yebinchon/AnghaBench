
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char* Cursor ;
 char* InputBuf ;
 char* LastChar ;
 int MISMATCH (char) ;
 int SPELL ;
 scalar_t__ find_cmd (char*,int ) ;
 scalar_t__ iscmdmeta (char) ;
 scalar_t__ ismetahash (char) ;
 scalar_t__ starting_a_command (char*,char*) ;
 int tenematch (char*,int,int ) ;

__attribute__((used)) static int
SpellLine(int cmdonly)
{
    int endflag, matchval;
    Char *argptr, *OldCursor, *OldLastChar;

    OldLastChar = LastChar;
    OldCursor = Cursor;
    argptr = InputBuf;
    endflag = 1;
    matchval = 0;
    do {
 while (ismetahash(*argptr) || iscmdmeta(*argptr))
     argptr++;
 for (Cursor = argptr;
      *Cursor != '\0' && ((Cursor != argptr && Cursor[-1] == '\\') ||
     (!ismetahash(*Cursor) && !iscmdmeta(*Cursor)));
      Cursor++)
      continue;
 if (*Cursor == '\0') {
     Cursor = LastChar;
     if (LastChar[-1] == '\n')
  Cursor--;
     endflag = 0;
 }
 if (!MISMATCH(*argptr) &&
     (!cmdonly || starting_a_command(argptr, InputBuf))) {






     {
  switch (tenematch(InputBuf, Cursor - InputBuf, SPELL)) {
  case 1:
      matchval = 1;
      break;
  case -1:
      if (!matchval)
   matchval = -1;
      break;
  default:
      break;
  }
     }
     if (LastChar != OldLastChar) {
  if (argptr < OldCursor)
      OldCursor += (LastChar - OldLastChar);
  OldLastChar = LastChar;
     }
 }
 argptr = Cursor;
    } while (endflag);
    Cursor = OldCursor;
    return matchval;
}
