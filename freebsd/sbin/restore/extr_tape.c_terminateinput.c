
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ action; char* name; int ino; scalar_t__ mode; } ;


 scalar_t__ UNKNOWN ;
 scalar_t__ USING ;
 TYPE_1__ curfile ;
 scalar_t__ gettingfile ;
 int longjmp (int ,int) ;
 int maxino ;
 int printf (char*,char*,char*) ;
 int restart ;

__attribute__((used)) static void
terminateinput(void)
{

 if (gettingfile && curfile.action == USING) {
  printf("Warning: %s %s\n",
      "End-of-input encountered while extracting", curfile.name);
 }
 curfile.name = "<name unknown>";
 curfile.action = UNKNOWN;
 curfile.mode = 0;
 curfile.ino = maxino;
 if (gettingfile) {
  gettingfile = 0;
  longjmp(restart, 1);
 }
}
