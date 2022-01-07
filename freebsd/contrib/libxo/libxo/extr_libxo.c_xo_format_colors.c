
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


struct TYPE_25__ {int xoc_effects; } ;
struct TYPE_23__ {TYPE_3__ xo_colors; } ;
typedef TYPE_1__ xo_handle_t ;
struct TYPE_24__ {char* xfi_format; int xfi_flen; } ;
typedef TYPE_2__ xo_field_info_t ;
typedef TYPE_3__ xo_colors_t ;
struct TYPE_26__ {int xb_bufp; } ;
typedef TYPE_4__ xo_buffer_t ;
typedef int ssize_t ;


 int XO_EFF_RESET ;






 int xo_buf_append (TYPE_4__*,char const*,int) ;
 int xo_buf_cleanup (TYPE_4__*) ;
 int xo_buf_init (TYPE_4__*) ;
 scalar_t__ xo_colors_enabled (TYPE_1__*) ;
 int xo_colors_handle_html (TYPE_1__*,TYPE_3__*) ;
 int xo_colors_handle_text (TYPE_1__*,TYPE_3__*) ;
 int xo_colors_parse (TYPE_1__*,TYPE_3__*,int ) ;
 int xo_colors_update (TYPE_1__*,TYPE_3__*) ;
 int xo_do_format_field (TYPE_1__*,TYPE_4__*,char const*,int,int ) ;
 int const xo_style (TYPE_1__*) ;
 scalar_t__ xo_style_is_encoding (TYPE_1__*) ;

__attribute__((used)) static void
xo_format_colors (xo_handle_t *xop, xo_field_info_t *xfip,
    const char *value, ssize_t vlen)
{
    const char *fmt = xfip->xfi_format;
    ssize_t flen = xfip->xfi_flen;

    xo_buffer_t xb;


    if (vlen != 0 && xo_style_is_encoding(xop))
 return;

    xo_buf_init(&xb);

    if (vlen)
 xo_buf_append(&xb, value, vlen);
    else if (flen)
 xo_do_format_field(xop, &xb, fmt, flen, 0);
    else
 xo_buf_append(&xb, "reset", 6);

    if (xo_colors_enabled(xop)) {
 switch (xo_style(xop)) {
 case 129:
 case 132:
     xo_buf_append(&xb, "", 1);

     xo_colors_t xoc = xop->xo_colors;
     xo_colors_parse(xop, &xoc, xb.xb_bufp);
     xo_colors_update(xop, &xoc);

     if (xo_style(xop) == 129) {
  xo_colors_handle_text(xop, &xoc);
  xoc.xoc_effects &= ~XO_EFF_RESET;

     } else {





  xoc.xoc_effects &= ~XO_EFF_RESET;
  xo_colors_handle_html(xop, &xoc);
     }

     xop->xo_colors = xoc;
     break;

 case 128:
 case 131:
 case 130:
 case 133:




     break;
 }
    }

    xo_buf_cleanup(&xb);
}
