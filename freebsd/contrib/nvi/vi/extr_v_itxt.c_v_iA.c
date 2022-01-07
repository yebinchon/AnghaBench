
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int lno; } ;
struct TYPE_10__ {TYPE_1__ m_start; } ;
typedef TYPE_2__ VICMD ;
struct TYPE_11__ {size_t cno; } ;
typedef TYPE_3__ SCR ;


 int LOG_CORRECT ;
 int db_get (TYPE_3__*,int ,int ,int *,size_t*) ;
 int v_ia (TYPE_3__*,TYPE_2__*) ;

int
v_iA(SCR *sp, VICMD *vp)
{
 size_t len;

 if (!db_get(sp, vp->m_start.lno, 0, ((void*)0), &len))
  sp->cno = len == 0 ? 0 : len - 1;

 LOG_CORRECT;

 return (v_ia(sp, vp));
}
