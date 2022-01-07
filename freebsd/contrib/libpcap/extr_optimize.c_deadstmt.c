
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stmt {int code; } ;
struct TYPE_3__ {scalar_t__ done; } ;
typedef TYPE_1__ opt_state_t ;


 int AX_ATOM ;
 size_t A_ATOM ;
 int NOP ;
 size_t X_ATOM ;
 int atomdef (struct stmt*) ;
 int atomuse (struct stmt*) ;

__attribute__((used)) static void
deadstmt(opt_state_t *opt_state, register struct stmt *s, register struct stmt *last[])
{
 register int atom;

 atom = atomuse(s);
 if (atom >= 0) {
  if (atom == AX_ATOM) {
   last[X_ATOM] = 0;
   last[A_ATOM] = 0;
  }
  else
   last[atom] = 0;
 }
 atom = atomdef(s);
 if (atom >= 0) {
  if (last[atom]) {
   opt_state->done = 0;
   last[atom]->code = NOP;
  }
  last[atom] = s;
 }
}
