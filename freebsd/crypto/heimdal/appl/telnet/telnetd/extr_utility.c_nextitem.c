
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char IAC ;

 int SE ;



char *
nextitem(char *current)
{
    if ((*current&0xff) != IAC) {
 return current+1;
    }
    switch (*(current+1)&0xff) {
    case 132:
    case 131:
    case 129:
    case 128:
 return current+3;
    case 130:{

 char *look = current+2;

 for (;;) {
     if ((*look++&0xff) == IAC) {
  if ((*look++&0xff) == SE) {
      return look;
  }
     }
 }
    }
    default:
 return current+2;
    }
}
