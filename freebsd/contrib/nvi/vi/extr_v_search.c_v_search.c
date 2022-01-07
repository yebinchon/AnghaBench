
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int ;
typedef int dir_t ;
struct TYPE_5__ {int m_stop; int m_final; int m_start; } ;
typedef TYPE_1__ VICMD ;
typedef int SCR ;
typedef int CHAR_T ;




 scalar_t__ ISMOTION (TYPE_1__*) ;
 int KEYS_WAITING (int *) ;
 int LF_SET (int ) ;
 int M_ERR ;

 int SEARCH_EOL ;
 int SEARCH_MSG ;
 int SEARCH_WMSG ;
 int abort () ;
 int b_search (int *,int *,int *,int *,size_t,int *,int ) ;
 int f_search (int *,int *,int *,int *,size_t,int *,int ) ;
 int msgq (int *,int ,char*) ;
 scalar_t__ v_correct (int *,TYPE_1__*,int ) ;

__attribute__((used)) static int
v_search(SCR *sp, VICMD *vp, CHAR_T *ptrn, size_t plen, u_int flags, dir_t dir)
{

 LF_SET(SEARCH_MSG);


 if (ISMOTION(vp))
  LF_SET(SEARCH_EOL);





 if (!KEYS_WAITING(sp))
  LF_SET(SEARCH_WMSG);

 switch (dir) {
 case 130:
  if (b_search(sp,
      &vp->m_start, &vp->m_stop, ptrn, plen, ((void*)0), flags))
   return (1);
  break;
 case 129:
  if (f_search(sp,
      &vp->m_start, &vp->m_stop, ptrn, plen, ((void*)0), flags))
   return (1);
  break;
 case 128:
  msgq(sp, M_ERR, "189|No previous search pattern");
  return (1);
 default:
  abort();
 }


 if (ISMOTION(vp)) {
  if (v_correct(sp, vp, 0))
   return(1);
 } else
  vp->m_final = vp->m_stop;
 return (0);
}
