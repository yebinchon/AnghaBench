
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct html {int dummy; } ;





 int print_byte (struct html*,char) ;
 int print_word (struct html*,char*) ;

__attribute__((used)) static int
print_escape(struct html *h, char c)
{

 switch (c) {
 case '<':
  print_word(h, "&lt;");
  break;
 case '>':
  print_word(h, "&gt;");
  break;
 case '&':
  print_word(h, "&amp;");
  break;
 case '"':
  print_word(h, "&quot;");
  break;
 case 128:
  print_word(h, "&nbsp;");
  break;
 case 129:
  print_byte(h, '-');
  break;
 case 130:
  break;
 default:
  return 0;
 }
 return 1;
}
