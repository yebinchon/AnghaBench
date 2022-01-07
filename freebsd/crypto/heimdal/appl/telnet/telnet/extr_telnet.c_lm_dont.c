
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;

void
lm_dont(unsigned char *cmd, int len)
{
    if (len < 1) {
      printf("lm_dont: no command!!!\n");
 return;
    }
    switch(cmd[0]) {
    case 128:
    default:

 break;
    }
}
