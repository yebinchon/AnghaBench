
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint32_t ;
typedef scalar_t__ uint16_t ;
struct TYPE_5__ {scalar_t__ e_type; scalar_t__ s; } ;
struct TYPE_6__ {TYPE_1__ hdr32; } ;
struct TYPE_7__ {TYPE_2__ tt; } ;
typedef TYPE_3__ tokenstr_t ;
typedef int time_t ;


 int AU_PRS_BOTH ;
 int AU_PRS_USECACHE ;
 scalar_t__ ISOPTSET (int ,int) ;
 int OPT_A ;
 int OPT_a ;
 int OPT_b ;
 int OPT_c ;
 int OPT_m ;
 int OPT_v ;
 int SETOPT (int ,int) ;
 int au_preselect (scalar_t__,int *,int ,int ) ;
 scalar_t__ difftime (int ,int ) ;
 int maskp ;
 int opttochk ;
 int p_atime ;
 int p_btime ;
 scalar_t__* p_evec ;
 size_t p_evec_used ;

__attribute__((used)) static int
select_hdr32(tokenstr_t tok, uint32_t *optchkd)
{
 uint16_t *ev;
 int match;

 SETOPT((*optchkd), (OPT_A | OPT_a | OPT_b | OPT_c | OPT_m | OPT_v));


 if (!ISOPTSET(opttochk, OPT_A)) {
  if (ISOPTSET(opttochk, OPT_a)) {
   if (difftime((time_t)tok.tt.hdr32.s, p_atime) < 0) {

    return (0);
   }
  }

  if (ISOPTSET(opttochk, OPT_b)) {
   if (difftime(p_btime, (time_t)tok.tt.hdr32.s) < 0) {

    return (0);
   }
  }
 }

 if (ISOPTSET(opttochk, OPT_c)) {




  if (au_preselect(tok.tt.hdr32.e_type, &maskp, AU_PRS_BOTH,
      AU_PRS_USECACHE) != 1)
   return (0);
 }


 if (ISOPTSET(opttochk, OPT_m)) {
  match = 0;
  for (ev = p_evec; ev < &p_evec[p_evec_used]; ev++)
   if (tok.tt.hdr32.e_type == *ev)
    match = 1;
  if (match == 0)
   return (0);
 }

 return (1);
}
