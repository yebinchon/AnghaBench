
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int * xe_name; } ;
typedef TYPE_1__ xo_encoder_node_t ;
typedef int ssize_t ;


 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int memcpy (int *,char const*,int) ;
 int strlen (char const*) ;
 int xe_link ;
 int xo_encoders ;
 int xo_free (TYPE_1__*) ;
 void* xo_realloc (int *,int) ;

__attribute__((used)) static xo_encoder_node_t *
xo_encoder_list_add (const char *name)
{
    if (name == ((void*)0))
 return ((void*)0);

    xo_encoder_node_t *xep = xo_realloc(((void*)0), sizeof(*xep));
    if (xep) {
 ssize_t len = strlen(name) + 1;
 xep->xe_name = xo_realloc(((void*)0), len);
 if (xep->xe_name == ((void*)0)) {
     xo_free(xep);
     return ((void*)0);
 }

 memcpy(xep->xe_name, name, len);

 TAILQ_INSERT_TAIL(&xo_encoders, xep, xe_link);
    }

    return xep;
}
