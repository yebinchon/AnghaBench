
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESC_EOL ;
 int ESC_FON ;
 int ESC_HYP ;
 int ESC_SQU ;
 int code_blocks ;
 int escflags ;
 int fputs (char*,int ) ;
 int md_char (int ) ;
 int md_preword () ;
 int stdout ;

__attribute__((used)) static void
md_rawword(const char *s)
{
 md_preword();

 if (*s == '\0')
  return;

 if (escflags & ESC_FON) {
  escflags &= ~ESC_FON;
  if (*s == '*' && !code_blocks)
   fputs("&zwnj;", stdout);
 }

 while (*s != '\0') {
  switch(*s) {
  case '*':
   if (s[1] == '\0')
    escflags |= ESC_FON;
   break;
  case '[':
   escflags |= ESC_SQU;
   break;
  case ']':
   escflags |= ESC_HYP;
   escflags &= ~ESC_SQU;
   break;
  default:
   break;
  }
  md_char(*s++);
 }
 if (s[-1] == ' ')
  escflags |= ESC_EOL;
 else
  escflags &= ~ESC_EOL;
}
