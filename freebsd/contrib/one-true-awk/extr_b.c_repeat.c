
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uschar ;


 int FATAL (char*) ;
 int REPEAT_PLUS_APPENDED ;
 int REPEAT_SIMPLE ;
 int REPEAT_WITH_Q ;
 int REPEAT_ZERO ;
 int replace_repeat (int const*,int,int const*,int,int,int,int ) ;

__attribute__((used)) static int repeat(const uschar *reptok, int reptoklen, const uschar *atom,
    int atomlen, int firstnum, int secondnum)
{







 if (secondnum < 0) {
  if (firstnum < 2) {

   FATAL("internal error");
  } else {
   return replace_repeat(reptok, reptoklen, atom, atomlen,
    firstnum, secondnum, REPEAT_PLUS_APPENDED);
  }
 } else if (firstnum == secondnum) {
  if (firstnum == 0) {



   return replace_repeat(reptok, reptoklen, atom, atomlen,
     firstnum, secondnum, REPEAT_ZERO);
  } else {
   return replace_repeat(reptok, reptoklen, atom, atomlen,
     firstnum, secondnum, REPEAT_SIMPLE);
  }
 } else if (firstnum < secondnum) {

  return replace_repeat(reptok, reptoklen, atom, atomlen,
     firstnum, secondnum, REPEAT_WITH_Q);
 } else {
  FATAL("internal error");
 }
 return 0;
}
