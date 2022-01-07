
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_encoder_node_t ;


 int TAILQ_REMOVE (int *,int *,int ) ;
 int xe_link ;
 int * xo_encoder_find (char const*) ;
 int xo_encoder_setup () ;
 int xo_encoders ;
 int xo_free (int *) ;

void
xo_encoder_unregister (const char *name)
{
    xo_encoder_setup();

    xo_encoder_node_t *xep = xo_encoder_find(name);
    if (xep) {
 TAILQ_REMOVE(&xo_encoders, xep, xe_link);
 xo_free(xep);
    }
}
