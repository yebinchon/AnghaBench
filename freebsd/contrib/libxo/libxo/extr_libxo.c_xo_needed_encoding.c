
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_handle_t ;


 int XF_ENC_LOCALE ;
 int XF_ENC_UTF8 ;
 scalar_t__ XOF_ISSET (int *,int ) ;
 int XOF_UTF8 ;
 scalar_t__ XO_STYLE_TEXT ;
 scalar_t__ xo_style (int *) ;

__attribute__((used)) static int
xo_needed_encoding (xo_handle_t *xop)
{
    if (XOF_ISSET(xop, XOF_UTF8))
 return XF_ENC_UTF8;

    if (xo_style(xop) == XO_STYLE_TEXT)
 return XF_ENC_LOCALE;

    return XF_ENC_UTF8;
}
