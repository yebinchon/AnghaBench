
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; scalar_t__ ino; } ;


 int IFDIR ;
 int IFMT ;
 TYPE_1__ curfile ;
 int skipfile () ;

void
skipdirs(void)
{

 while (curfile.ino && (curfile.mode & IFMT) == IFDIR) {
  skipfile();
 }
}
