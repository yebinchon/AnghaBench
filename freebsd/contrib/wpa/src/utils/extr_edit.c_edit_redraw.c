
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* cmdbuf ;
 size_t cmdbuf_len ;
 size_t cmdbuf_pos ;
 int fflush (int ) ;
 int printf (char*,char*,char*) ;
 char* ps2 ;
 int stdout ;

void edit_redraw(void)
{
 char tmp;
 cmdbuf[cmdbuf_len] = '\0';
 printf("\r%s> %s", ps2 ? ps2 : "", cmdbuf);
 if (cmdbuf_pos != cmdbuf_len) {
  tmp = cmdbuf[cmdbuf_pos];
  cmdbuf[cmdbuf_pos] = '\0';
  printf("\r%s> %s", ps2 ? ps2 : "", cmdbuf);
  cmdbuf[cmdbuf_pos] = tmp;
 }
 fflush(stdout);
}
