
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bol ;
 int command (int ,char*,int) ;
 scalar_t__ local ;

int
rlogin_susp(void)
{
    if (local) {
 local = 0;
 bol = 1;
 command(0, "z\n", 2);
 return(1);
    }
    return(0);
}
