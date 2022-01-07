
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct suj_ino {int si_skipparent; int si_ino; } ;
typedef int ino_t ;


 int DOTDOT_OFFSET ;
 scalar_t__ ino_isat (int ,int ,int ,int*,int*) ;

__attribute__((used)) static void
ino_setskip(struct suj_ino *sino, ino_t parent)
{
 int isdot;
 int mode;

 if (ino_isat(sino->si_ino, DOTDOT_OFFSET, parent, &mode, &isdot))
  sino->si_skipparent = 1;
}
