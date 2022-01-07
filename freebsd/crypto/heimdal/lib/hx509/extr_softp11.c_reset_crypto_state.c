
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct session_state {int sign_object; int verify_object; void* verify_mechanism; void* sign_mechanism; } ;


 void* NULL_PTR ;
 int free (void*) ;

__attribute__((used)) static void
reset_crypto_state(struct session_state *state)
{
    state->sign_object = -1;
    if (state->sign_mechanism)
 free(state->sign_mechanism);
    state->sign_mechanism = NULL_PTR;
    state->verify_object = -1;
    if (state->verify_mechanism)
 free(state->verify_mechanism);
    state->verify_mechanism = NULL_PTR;
}
