
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;


 char CHAR ;
 scalar_t__* CurrentKeyMap ;
 int ERR_SYSTEM ;
 scalar_t__ F_XKEY ;
 unsigned char INVALID_BYTE ;
 scalar_t__** KeyMacro ;
 int Load_input_line () ;
 size_t MB_CUR_MAX ;
 int MB_LEN_MAX ;
 size_t MacroLvl ;
 scalar_t__ Rawmode () ;
 int SHIN ;
 char __nt_vcode ;
 int __nt_want_vcode ;
 int check_window_size (int ) ;
 int errno ;
 int fixio (int ,int ) ;
 scalar_t__ haveungetchar ;
 int normal_mbtowc (char*,char*,size_t) ;
 int progname ;
 int reset_mbtowc () ;
 int stderror (int ,int ,int ) ;
 int strerror (int ) ;
 char ungetchar ;
 scalar_t__ windowchg ;
 int xread (int ,char*,int) ;

int
GetNextChar(Char *cp)
{
    int num_read;
    int tried = 0;
    char cbuf[MB_LEN_MAX];
    size_t cbp;

    if (haveungetchar) {
 haveungetchar = 0;
 *cp = ungetchar;
 return 1;
    }
    for (;;) {
 if (MacroLvl < 0) {
     if (!Load_input_line())
  break;
 }
 if (*KeyMacro[MacroLvl] == 0) {
     MacroLvl--;
     continue;
 }
 *cp = *KeyMacro[MacroLvl]++ & CHAR;
 if (*KeyMacro[MacroLvl] == 0) {
     MacroLvl--;
 }
 return (1);
    }

    if (Rawmode() < 0)
 return 0;
    cbp = 0;
    for (;;) {
 while ((num_read = xread(SHIN, cbuf + cbp, 1)) == -1) {
     if (!tried && fixio(SHIN, errno) != -1)
  tried = 1;
     else {







  *cp = '\0';
  return -1;
     }
 }
 if (cbp == 0
     && CurrentKeyMap[(unsigned char)*cbuf] == F_XKEY) {
     *cp = (unsigned char)*cbuf;
 } else {
     cbp++;
     if (normal_mbtowc(cp, cbuf, cbp) == -1) {
  reset_mbtowc();
  if (cbp < MB_CUR_MAX)
      continue;

  *cp = (unsigned char)*cbuf | INVALID_BYTE;
     }
 }
 break;
    }






    return num_read;
}
