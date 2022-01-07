
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iter_qstate {int state; int * response; } ;
typedef enum iter_state { ____Placeholder_iter_state } iter_state ;


 scalar_t__ iter_state_is_responsestate (int) ;
 int log_err (char*) ;

__attribute__((used)) static int
next_state(struct iter_qstate* iq, enum iter_state nextstate)
{


 if(iter_state_is_responsestate(nextstate)) {
  if(iq->response == ((void*)0)) {
   log_err("transitioning to response state sans "
    "response.");
  }
 }
 iq->state = nextstate;
 return 1;
}
