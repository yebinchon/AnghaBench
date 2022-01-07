
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int VICMD ;
typedef int SCR ;


 scalar_t__ F_ISSET (int *,int ) ;
 int LF_SET (int) ;
 int MAPPED_KEYS_WAITING (int *) ;
 int O_ALTWERASE ;
 int O_AUTOINDENT ;
 int O_BEAUTIFY ;
 scalar_t__ O_ISSET (int *,int ) ;
 int O_SHOWMATCH ;
 int O_TTYWERASE ;
 int O_WRAPLEN ;
 int O_WRAPMARGIN ;
 int SC_SCRIPT ;
 int TXT_ALTWERASE ;
 int TXT_AUTOINDENT ;
 int TXT_BEAUTIFY ;
 int TXT_CNTRLT ;
 int TXT_CR ;
 int TXT_ESCAPE ;
 int TXT_MAPINPUT ;
 int TXT_RECORD ;
 int TXT_REPLAY ;
 int TXT_RESOLVE ;
 int TXT_SHOWMATCH ;
 int TXT_TTYWERASE ;
 int TXT_WRAPMARGIN ;
 int VC_C1SET ;
 int VC_ISDOT ;

__attribute__((used)) static u_int32_t
set_txt_std(SCR *sp, VICMD *vp, u_int32_t flags)
{
 LF_SET(TXT_CNTRLT |
     TXT_ESCAPE | TXT_MAPINPUT | TXT_RECORD | TXT_RESOLVE);

 if (F_ISSET(vp, VC_ISDOT))
  LF_SET(TXT_REPLAY);

 if (O_ISSET(sp, O_ALTWERASE))
  LF_SET(TXT_ALTWERASE);
 if (O_ISSET(sp, O_AUTOINDENT))
  LF_SET(TXT_AUTOINDENT);
 if (O_ISSET(sp, O_BEAUTIFY))
  LF_SET(TXT_BEAUTIFY);
 if (O_ISSET(sp, O_SHOWMATCH))
  LF_SET(TXT_SHOWMATCH);
 if (F_ISSET(sp, SC_SCRIPT))
  LF_SET(TXT_CR);
 if (O_ISSET(sp, O_TTYWERASE))
  LF_SET(TXT_TTYWERASE);
 if ((O_ISSET(sp, O_WRAPLEN) || O_ISSET(sp, O_WRAPMARGIN)) &&
     (!MAPPED_KEYS_WAITING(sp) || !F_ISSET(vp, VC_C1SET)))
  LF_SET(TXT_WRAPMARGIN);
 return (flags);
}
