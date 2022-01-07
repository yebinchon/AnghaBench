
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int crmod ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;

__attribute__((used)) static int
togcrmod()
{
    crmod = !crmod;
    printf("Deprecated usage - please use 'toggle crmod' in the future.\r\n");
    printf("%s map carriage return on output.\r\n", crmod ? "Will" : "Won't");
    fflush(stdout);
    return 1;
}
