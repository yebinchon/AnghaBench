
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
struct TYPE_3__ {int e_c; } ;
typedef int SCR ;
typedef TYPE_1__ EVENT ;
typedef int ARG_CHAR_T ;


 int EC_MAPCOMMAND ;
 int EC_MAPNODIGIT ;
 scalar_t__ GC_OK ;
 scalar_t__ ISDIGIT (int) ;
 int M_ERR ;
 int ULONG_MAX ;
 int msgq (int *,int ,char*,int ) ;
 scalar_t__ v_key (int *,int ,TYPE_1__*,int) ;

__attribute__((used)) static int
v_count(
 SCR *sp,
 ARG_CHAR_T fkey,
 u_long *countp)
{
 EVENT ev;
 u_long count, tc;

 ev.e_c = fkey;
 count = tc = 0;
 do {




  tc = count * 10 + ev.e_c - '0';
  if (count > tc) {

   do {
    if (v_key(sp, 0, &ev,
        EC_MAPCOMMAND | EC_MAPNODIGIT) != GC_OK)
     return (1);
   } while (ISDIGIT(ev.e_c));
   msgq(sp, M_ERR,
       "235|Number larger than %lu", ULONG_MAX);
   return (1);
  }
  count = tc;
  if (v_key(sp, 0, &ev, EC_MAPCOMMAND | EC_MAPNODIGIT) != GC_OK)
   return (1);
 } while (ISDIGIT(ev.e_c));
 *countp = count;
 return (0);
}
