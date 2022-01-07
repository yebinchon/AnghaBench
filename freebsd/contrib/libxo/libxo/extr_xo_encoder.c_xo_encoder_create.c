
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_xof_flags_t ;
typedef int xo_handle_t ;


 int XO_STYLE_ENCODER ;
 int * xo_create (int ,int ) ;
 int xo_destroy (int *) ;
 scalar_t__ xo_encoder_init (int *,char const*) ;

xo_handle_t *
xo_encoder_create (const char *name, xo_xof_flags_t flags)
{
    xo_handle_t *xop;

    xop = xo_create(XO_STYLE_ENCODER, flags);
    if (xop) {
 if (xo_encoder_init(xop, name)) {
     xo_destroy(xop);
     xop = ((void*)0);
 }
    }

    return xop;
}
