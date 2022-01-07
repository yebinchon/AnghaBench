
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ESC_BOL ;
 int ESC_EOL ;
 int ESC_FON ;
 int ESC_HYP ;
 int ESC_NUM ;
 int ESC_SQU ;
 int MD_spc ;
 int MD_spc_force ;
 int code_blocks ;
 int escflags ;
 int fputs (char const*,int ) ;
 int mandoc_escape (char const**,char const**,int*) ;
 int mchars_num2char (char const*,int) ;
 int mchars_num2uc (char const*,int) ;
 int mchars_spec2cp (char const*,int) ;
 char* mchars_uc2str (int) ;
 int md_char (char) ;
 int md_named (char*) ;
 int md_preword () ;
 int md_rawword (char const*) ;
 int outcount ;
 int outflags ;
 int printf (char*,...) ;
 int putchar (char) ;
 int stdout ;
 int * strchr (char*,char const) ;
 int strlen (char const*) ;

__attribute__((used)) static void
md_word(const char *s)
{
 const char *seq, *prevfont, *currfont, *nextfont;
 char c;
 int bs, sz, uc, breakline;


 if (s[0] != '\0' && s[1] == '\0' &&
     strchr("!),.:;?]", s[0]) != ((void*)0) &&
     (outflags & MD_spc_force) == 0)
  outflags &= ~MD_spc;

 md_preword();

 if (*s == '\0')
  return;


 if ((s[0] == '(' || s[0] == '[') && s[1] == '\0')
  outflags &= ~MD_spc;

 breakline = 0;
 prevfont = currfont = "";
 while ((c = *s++) != '\0') {
  bs = 0;
  switch(c) {
  case 145:
   if (code_blocks)
    c = ' ';
   else {
    md_named("nbsp");
    c = '\0';
   }
   break;
  case 146:
   bs = escflags & ESC_BOL && !code_blocks;
   c = '-';
   break;
  case 147:
   continue;
  case '#':
  case '+':
  case '-':
   bs = escflags & ESC_BOL && !code_blocks;
   break;
  case '(':
   bs = escflags & ESC_HYP && !code_blocks;
   break;
  case ')':
   bs = escflags & ESC_NUM && !code_blocks;
   break;
  case '*':
  case '[':
  case '_':
  case '`':
   bs = !code_blocks;
   break;
  case '.':
   bs = escflags & ESC_NUM && !code_blocks;
   break;
  case '<':
   if (code_blocks == 0) {
    md_named("lt");
    c = '\0';
   }
   break;
  case '=':
   if (escflags & ESC_BOL && !code_blocks) {
    md_named("equals");
    c = '\0';
   }
   break;
  case '>':
   if (code_blocks == 0) {
    md_named("gt");
    c = '\0';
   }
   break;
  case '\\':
   uc = 0;
   nextfont = ((void*)0);
   switch (mandoc_escape(&s, &seq, &sz)) {
   case 128:
    uc = mchars_num2uc(seq + 1, sz - 1);
    break;
   case 133:
    uc = mchars_num2char(seq, sz);
    break;
   case 130:
    uc = mchars_spec2cp(seq, sz);
    break;
   case 129:
    uc = *seq;
    break;
   case 143:
    md_rawword("markdown");
    continue;
   case 139:
    nextfont = "**";
    break;
   case 137:
    nextfont = "*";
    break;
   case 140:
    nextfont = "***";
    break;
   case 141:
   case 138:
   case 135:
    nextfont = "";
    break;
   case 136:
    nextfont = prevfont;
    break;
   case 144:
    breakline = 1;
    break;
   case 134:
   case 131:
   case 132:


   case 142:
   default:
    break;
   }
   if (nextfont != ((void*)0) && !code_blocks) {
    if (*currfont != '\0') {
     outflags &= ~MD_spc;
     md_rawword(currfont);
    }
    prevfont = currfont;
    currfont = nextfont;
    if (*currfont != '\0') {
     outflags &= ~MD_spc;
     md_rawword(currfont);
    }
   }
   if (uc) {
    if ((uc < 0x20 && uc != 0x09) ||
        (uc > 0x7E && uc < 0xA0))
     uc = 0xFFFD;
    if (code_blocks) {
     seq = mchars_uc2str(uc);
     fputs(seq, stdout);
     outcount += strlen(seq);
    } else {
     printf("&#%d;", uc);
     outcount++;
    }
    escflags &= ~ESC_FON;
   }
   c = '\0';
   break;
  case ']':
   bs = escflags & ESC_SQU && !code_blocks;
   escflags |= ESC_HYP;
   break;
  default:
   break;
  }
  if (bs)
   putchar('\\');
  md_char(c);
  if (breakline &&
      (*s == '\0' || *s == ' ' || *s == 145)) {
   printf("  \n");
   breakline = 0;
   while (*s == ' ' || *s == 145)
    s++;
  }
 }
 if (*currfont != '\0') {
  outflags &= ~MD_spc;
  md_rawword(currfont);
 } else if (s[-2] == ' ')
  escflags |= ESC_EOL;
 else
  escflags &= ~ESC_EOL;
}
