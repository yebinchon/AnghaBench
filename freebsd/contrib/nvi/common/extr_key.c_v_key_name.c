
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef void* u_char ;
typedef int * iconv_src_t ;
struct TYPE_7__ {int * id; } ;
struct TYPE_8__ {scalar_t__ lastc; char* cname; size_t clen; TYPE_1__ conv; } ;
typedef TYPE_2__ SCR ;
typedef scalar_t__ ARG_CHAR_T ;


 scalar_t__ CAN_PRINT (TYPE_2__*,scalar_t__) ;
 size_t IC_IE_TO_UTF16 ;
 scalar_t__ INTISWIDE (scalar_t__) ;
 size_t MB_CUR_MAX ;
 scalar_t__ O_ISSET (TYPE_2__*,int ) ;
 int O_NOPRINT ;
 int O_OCTAL ;
 int O_PRINT ;
 char* O_STR (TYPE_2__*,int ) ;
 int codeset () ;
 int decode_utf16 (char*,int) ;
 int decode_utf8 (char*) ;
 int iconv (int ,int *,size_t*,char**,size_t*) ;
 scalar_t__ iscntrl (int) ;
 size_t snprintf (char*,int,char*,int) ;
 int strcmp (int ,char*) ;
 int * strstr (char*,char*) ;
 size_t wctomb (char*,scalar_t__) ;

char *
v_key_name(
 SCR *sp,
 ARG_CHAR_T ach)
{
 static const char hexdigit[] = "0123456789abcdef";
 static const char octdigit[] = "01234567";
 int ch;
 size_t len;
 char *chp;





 if (ach && sp->lastc == ach)
  return (sp->cname);
 sp->lastc = ach;





  sp->cname[(len = 1)-1] = (u_char)ach;

 ch = (u_char)sp->cname[0];
 sp->cname[len] = '\0';


 if ((chp = O_STR(sp, O_PRINT)) != ((void*)0))
  if (strstr(chp, sp->cname) != ((void*)0))
   goto done;
 if ((chp = O_STR(sp, O_NOPRINT)) != ((void*)0))
  if (strstr(chp, sp->cname) != ((void*)0))
   goto nopr;
 if (CAN_PRINT(sp, ach))
  goto done;
nopr: if (iscntrl(ch) && (ch < 0x20 || ch == 0x7f)) {
  sp->cname[0] = '^';
  sp->cname[1] = ch == 0x7f ? '?' : '@' + ch;
  len = 2;
  goto done;
 }
 if (O_ISSET(sp, O_OCTAL)) {
  sp->cname[0] = '\\';
  sp->cname[1] = octdigit[(ch & 0300) >> 6];
  sp->cname[2] = octdigit[(ch & 070) >> 3];
  sp->cname[3] = octdigit[ ch & 07 ];
 } else {
  sp->cname[0] = '\\';
  sp->cname[1] = 'x';
  sp->cname[2] = hexdigit[(ch & 0xf0) >> 4];
  sp->cname[3] = hexdigit[ ch & 0x0f ];
 }
 len = 4;
done: sp->cname[sp->clen = len] = '\0';
 return (sp->cname);
}
