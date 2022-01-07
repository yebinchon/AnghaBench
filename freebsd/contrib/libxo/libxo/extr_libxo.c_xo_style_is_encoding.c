
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;


 scalar_t__ XO_STYLE_ENCODER ;
 scalar_t__ XO_STYLE_JSON ;
 scalar_t__ XO_STYLE_SDPARAMS ;
 scalar_t__ XO_STYLE_XML ;
 scalar_t__ xo_style (int *) ;

__attribute__((used)) static int
xo_style_is_encoding (xo_handle_t *xop)
{
    if (xo_style(xop) == XO_STYLE_JSON
 || xo_style(xop) == XO_STYLE_XML
 || xo_style(xop) == XO_STYLE_SDPARAMS
 || xo_style(xop) == XO_STYLE_ENCODER)
 return 1;
    return 0;
}
