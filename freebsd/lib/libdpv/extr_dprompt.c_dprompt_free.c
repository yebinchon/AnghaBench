
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FM_DONE ;
 int FM_FAIL ;
 int FM_PEND ;
 int * done ;
 int dprompt_free_mask ;
 int * fail ;
 int free (int *) ;
 int * pend ;

void
dprompt_free(void)
{
 if ((dprompt_free_mask & FM_DONE) != 0) {
  dprompt_free_mask ^= FM_DONE;
  free(done);
  done = ((void*)0);
 }
 if ((dprompt_free_mask & FM_FAIL) != 0) {
  dprompt_free_mask ^= FM_FAIL;
  free(fail);
  fail = ((void*)0);
 }
 if ((dprompt_free_mask & FM_PEND) != 0) {
  dprompt_free_mask ^= FM_PEND;
  free(pend);
  pend = ((void*)0);
 }
}
