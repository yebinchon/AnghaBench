
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_10__ ;


typedef int u_int ;
struct TYPE_16__ {scalar_t__ cno; int lno; } ;
struct TYPE_17__ {TYPE_1__ m_final; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_18__ {scalar_t__ cno; int lno; } ;
struct TYPE_15__ {int lno; } ;
typedef TYPE_3__ SCR ;
typedef int ARG_CHAR_T ;


 int F_CLR (TYPE_3__*,int ) ;
 int F_SET (TYPE_3__*,int ) ;
 scalar_t__ IS_ONELINE (TYPE_3__*) ;
 int LF_SET (int) ;
 int O_ALTWERASE ;
 scalar_t__ O_ISSET (TYPE_3__*,int ) ;
 int O_TTYWERASE ;
 int SC_SCR_REDRAW ;
 int SC_TINPUT_INFO ;
 TYPE_10__* TMAP ;
 int TXT_ALTWERASE ;
 int TXT_APPENDEOL ;
 int TXT_CR ;
 int TXT_ESCAPE ;
 int TXT_INFOLINE ;
 int TXT_MAPINPUT ;
 int TXT_TTYWERASE ;
 scalar_t__ txt_map_end (TYPE_3__*) ;
 scalar_t__ txt_map_init (TYPE_3__*) ;
 scalar_t__ v_txt (TYPE_3__*,TYPE_2__*,int *,int *,int ,int ,int ,int,int ) ;

int
v_tcmd(SCR *sp, VICMD *vp, ARG_CHAR_T prompt, u_int flags)
{

 vp->m_final.lno = sp->lno;
 vp->m_final.cno = sp->cno;


 if (txt_map_init(sp))
  return (1);


 sp->lno = TMAP[0].lno;
 sp->cno = 0;


 F_SET(sp, SC_TINPUT_INFO);


 LF_SET(TXT_APPENDEOL |
     TXT_CR | TXT_ESCAPE | TXT_INFOLINE | TXT_MAPINPUT);
 if (O_ISSET(sp, O_ALTWERASE))
  LF_SET(TXT_ALTWERASE);
 if (O_ISSET(sp, O_TTYWERASE))
  LF_SET(TXT_TTYWERASE);


 if (v_txt(sp, vp, ((void*)0), ((void*)0), 0, prompt, 0, 1, flags))
  return (1);


 F_CLR(sp, SC_TINPUT_INFO);


 if (txt_map_end(sp))
  return (1);

 if (IS_ONELINE(sp))
  F_SET(sp, SC_SCR_REDRAW);


 sp->lno = vp->m_final.lno;
 sp->cno = vp->m_final.cno;

 return (0);
}
