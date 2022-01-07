
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int * frp; } ;
struct TYPE_10__ {int * frp; int fname; } ;
typedef TYPE_1__ TAG ;
typedef TYPE_2__ SCR ;


 int FS_ALL ;
 int FS_POSSIBLE ;
 int FS_SETALT ;
 int F_CLR (TYPE_2__*,int ) ;
 int F_SET (TYPE_2__*,int ) ;
 int SC_FSWITCH ;
 int SC_SCR_CENTER ;
 int SC_SCR_TOP ;
 int * file_add (TYPE_2__*,int ) ;
 scalar_t__ file_init (TYPE_2__*,int *,int *,int ) ;
 scalar_t__ file_m1 (TYPE_2__*,int,int) ;

int
ex_tag_nswitch(SCR *sp, TAG *tp, int force)
{

 if (tp->frp == ((void*)0) && (tp->frp = file_add(sp, tp->fname)) == ((void*)0))
  return (1);


 if (tp->frp == sp->frp)
  return (0);


 if (file_m1(sp, force, FS_ALL | FS_POSSIBLE))
  return (1);


 if (file_init(sp, tp->frp, ((void*)0), FS_SETALT))
  return (1);


 F_CLR(sp, SC_SCR_TOP);
 F_SET(sp, SC_SCR_CENTER);


 F_SET(sp, SC_FSWITCH);
 return (0);
}
