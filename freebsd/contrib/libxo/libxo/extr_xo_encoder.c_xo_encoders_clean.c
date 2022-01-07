
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ xe_dlhandle; } ;
typedef TYPE_1__ xo_encoder_node_t ;


 TYPE_1__* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,TYPE_1__*,int ) ;
 int dlclose (scalar_t__) ;
 int xe_link ;
 int xo_encoder_path ;
 int xo_encoder_setup () ;
 int xo_encoders ;
 int xo_free (TYPE_1__*) ;
 int xo_string_list_clean (int *) ;

void
xo_encoders_clean (void)
{
    xo_encoder_node_t *xep;

    xo_encoder_setup();

    for (;;) {
 xep = TAILQ_FIRST(&xo_encoders);
        if (xep == ((void*)0))
            break;

        TAILQ_REMOVE(&xo_encoders, xep, xe_link);

 if (xep->xe_dlhandle)
     dlclose(xep->xe_dlhandle);

 xo_free(xep);
    }

    xo_string_list_clean(&xo_encoder_path);
}
