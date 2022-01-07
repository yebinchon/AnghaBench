
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unicx {int bufsiz; char* buf; } ;



__attribute__((used)) static void
uni_putc(int c, struct unicx *cx)
{
 if(cx->bufsiz > 1) {
  *cx->buf++ = c;
  cx->bufsiz--;
  *cx->buf = '\0';
 }
}
