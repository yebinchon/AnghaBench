
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Exit (int ) ;
 int bye ;
 int call (int ,char*,char*,int ) ;

int
quit(void)
{
 call(bye, "bye", "fromquit", 0);
 Exit(0);
 return 0;
}
