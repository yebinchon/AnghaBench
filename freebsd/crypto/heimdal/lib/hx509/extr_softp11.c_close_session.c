
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ attributes; } ;
struct session_state {int session_handle; TYPE_1__ find; } ;
struct TYPE_4__ {void* notify; void* application; } ;


 int CK_INVALID_HANDLE ;
 void* NULL_PTR ;
 int application_error (char*) ;
 int find_object_final (struct session_state*) ;
 int reset_crypto_state (struct session_state*) ;
 TYPE_2__ soft_token ;

__attribute__((used)) static void
close_session(struct session_state *state)
{
    if (state->find.attributes) {
 application_error("application didn't do C_FindObjectsFinal\n");
 find_object_final(state);
    }

    state->session_handle = CK_INVALID_HANDLE;
    soft_token.application = NULL_PTR;
    soft_token.notify = NULL_PTR;
    reset_crypto_state(state);
}
