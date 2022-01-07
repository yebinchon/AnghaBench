
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int u32 ;
struct TYPE_4__ {struct socket_call* data; } ;
struct socket_call {struct client* c; TYPE_1__ in; scalar_t__ cred; } ;
struct client {int flags; int calls; } ;
typedef scalar_t__ heim_sipc_call ;
struct TYPE_5__ {int length; int * data; } ;
typedef TYPE_2__ heim_idata ;


 int HTTP_REPLY ;
 int INCLUDE_ERROR_CODE ;
 int WAITING_CLOSE ;
 int WAITING_READ ;
 int abort () ;
 int free (struct socket_call*) ;
 int heim_ipc_free_cred (scalar_t__) ;
 int htonl (int) ;
 int maybe_close (struct client*) ;
 int output_data (struct client*,int *,int) ;

__attribute__((used)) static void
socket_complete(heim_sipc_call ctx, int returnvalue, heim_idata *reply)
{
    struct socket_call *sc = (struct socket_call *)ctx;
    struct client *c = sc->c;


    if (c == ((void*)0))
 abort();

    if ((c->flags & WAITING_CLOSE) == 0) {
 uint32_t u32;


 u32 = htonl(reply->length);
 output_data(c, &u32, sizeof(u32));


 if (c->flags & INCLUDE_ERROR_CODE) {
     u32 = htonl(returnvalue);
     output_data(c, &u32, sizeof(u32));
 }


 output_data(c, reply->data, reply->length);


 if (c->flags & HTTP_REPLY) {
     c->flags |= WAITING_CLOSE;
     c->flags &= ~WAITING_READ;
 }
    }

    c->calls--;
    if (sc->cred)
 heim_ipc_free_cred(sc->cred);
    free(sc->in.data);
    sc->c = ((void*)0);
    free(sc);

    maybe_close(c);
}
