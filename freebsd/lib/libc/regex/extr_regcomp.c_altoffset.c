
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sop ;
 int OP (int) ;
 int OPND (int) ;


 scalar_t__ O_CH ;
 scalar_t__ O_QUEST ;

__attribute__((used)) static int
altoffset(sop *scan, int offset)
{
 int largest;
 int try;
 sop s;


 if (offset == -1)
  return -1;

 largest = 0;
 try = 0;
 s = *scan++;
 while (OP(s) != (sop)O_QUEST && OP(s) != (sop)O_CH) {
  switch (OP(s)) {
  case 131:
   if (try > largest)
    largest = try;
   try = 0;
   break;
  case 129:
  case 134:
   try = altoffset(scan, try);
   if (try == -1)
    return -1;
   scan--;
   do {
    scan += OPND(s);
    s = *scan;
    if (OP(s) != (sop)O_QUEST &&
        OP(s) != (sop)O_CH && OP(s) != (sop)130)
     return -1;
   } while (OP(s) != (sop)O_QUEST && OP(s) != (sop)O_CH);



   scan++;
   break;
  case 137:
  case 135:
  case 138:
   try++;
  case 136:
  case 133:
  case 132:
  case 128:
  case 130:
   break;
  default:
   try = -1;
   break;
  }
  if (try == -1)
   return -1;
  s = *scan++;
 }

 if (try > largest)
  largest = try;

 return largest+offset;
}
