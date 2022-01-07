
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct program_bidder {struct program_bidder* signature; struct program_bidder* cmd; } ;


 int free (struct program_bidder*) ;

__attribute__((used)) static void
free_state(struct program_bidder *state)
{

 if (state) {
  free(state->cmd);
  free(state->signature);
  free(state);
 }
}
