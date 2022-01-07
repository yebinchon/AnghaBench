
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int mode_t ;
struct TYPE_2__ {int cmd; int cmd2; int bits; } ;
typedef TYPE_1__ BITCMD ;


 int CMD2_CLR ;
 int CMD2_GBITS ;
 int CMD2_OBITS ;
 int CMD2_SET ;
 int CMD2_UBITS ;
 int S_IFDIR ;
 int S_IRWXG ;
 int S_IRWXO ;
 int S_IRWXU ;
 int S_IXGRP ;
 int S_IXOTH ;
 int S_IXUSR ;
 int printf (char*,int,int) ;

mode_t
getmode(const void *bbox, mode_t omode)
{
 const BITCMD *set;
 mode_t clrval, newmode, value;

 set = (const BITCMD *)bbox;
 newmode = omode;
 for (value = 0;; set++)
  switch(set->cmd) {






  case 'u':
   value = (newmode & S_IRWXU) >> 6;
   goto common;

  case 'g':
   value = (newmode & S_IRWXG) >> 3;
   goto common;

  case 'o':
   value = newmode & S_IRWXO;
common: if (set->cmd2 & CMD2_CLR) {
    clrval =
        (set->cmd2 & CMD2_SET) ? S_IRWXO : value;
    if (set->cmd2 & CMD2_UBITS)
     newmode &= ~((clrval<<6) & set->bits);
    if (set->cmd2 & CMD2_GBITS)
     newmode &= ~((clrval<<3) & set->bits);
    if (set->cmd2 & CMD2_OBITS)
     newmode &= ~(clrval & set->bits);
   }
   if (set->cmd2 & CMD2_SET) {
    if (set->cmd2 & CMD2_UBITS)
     newmode |= (value<<6) & set->bits;
    if (set->cmd2 & CMD2_GBITS)
     newmode |= (value<<3) & set->bits;
    if (set->cmd2 & CMD2_OBITS)
     newmode |= value & set->bits;
   }
   break;

  case '+':
   newmode |= set->bits;
   break;

  case '-':
   newmode &= ~set->bits;
   break;

  case 'X':
   if (omode & (S_IFDIR|S_IXUSR|S_IXGRP|S_IXOTH))
    newmode |= set->bits;
   break;

  case '\0':
  default:



   return (newmode);
  }
}
