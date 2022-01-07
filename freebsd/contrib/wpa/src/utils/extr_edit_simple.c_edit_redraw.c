
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdbuf ;
 size_t cmdbuf_pos ;
 int printf (char*,char*) ;

void edit_redraw(void)
{
 cmdbuf[cmdbuf_pos] = '\0';
 printf("\r> %s", cmdbuf);
}
