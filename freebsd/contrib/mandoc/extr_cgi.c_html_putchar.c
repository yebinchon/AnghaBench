
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*) ;
 int putchar (unsigned char) ;

__attribute__((used)) static void
html_putchar(char c)
{

 switch (c) {
 case '"':
  printf("&quot;");
  break;
 case '&':
  printf("&amp;");
  break;
 case '>':
  printf("&gt;");
  break;
 case '<':
  printf("&lt;");
  break;
 default:
  putchar((unsigned char)c);
  break;
 }
}
