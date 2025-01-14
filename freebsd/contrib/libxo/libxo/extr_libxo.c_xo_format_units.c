
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int xo_xff_flags_t ;
struct TYPE_14__ {scalar_t__ xb_curp; scalar_t__ xb_bufp; } ;
struct TYPE_12__ {scalar_t__ xo_units_offset; TYPE_3__ xo_data; } ;
typedef TYPE_1__ xo_handle_t ;
struct TYPE_13__ {char* xfi_format; scalar_t__ xfi_flen; int xfi_flags; } ;
typedef TYPE_2__ xo_field_info_t ;
typedef TYPE_3__ xo_buffer_t ;
typedef int units_start_xml ;
typedef int units_start_html ;
typedef scalar_t__ ssize_t ;


 int XOIF_ISSET (TYPE_1__*,int ) ;
 int XOIF_UNITS_PENDING ;
 scalar_t__ XO_STYLE_HTML ;
 scalar_t__ XO_STYLE_XML ;
 char* alloca (scalar_t__) ;
 int memcpy (char*,scalar_t__,scalar_t__) ;
 int memmove (scalar_t__,char*,scalar_t__) ;
 int xo_buf_append (TYPE_3__*,char*,int) ;
 int xo_data_escape (TYPE_1__*,char const*,scalar_t__) ;
 int xo_do_format_field (TYPE_1__*,int *,char const*,scalar_t__,int ) ;
 int xo_format_content (TYPE_1__*,char*,int *,char const*,scalar_t__,char const*,scalar_t__,int ) ;
 scalar_t__ xo_style (TYPE_1__*) ;

__attribute__((used)) static void
xo_format_units (xo_handle_t *xop, xo_field_info_t *xfip,
   const char *value, ssize_t vlen)
{
    const char *fmt = xfip->xfi_format;
    ssize_t flen = xfip->xfi_flen;
    xo_xff_flags_t flags = xfip->xfi_flags;

    static char units_start_xml[] = " units=\"";
    static char units_start_html[] = " data-units=\"";

    if (!XOIF_ISSET(xop, XOIF_UNITS_PENDING)) {
 xo_format_content(xop, "units", ((void*)0), value, vlen, fmt, flen, flags);
 return;
    }

    xo_buffer_t *xbp = &xop->xo_data;
    ssize_t start = xop->xo_units_offset;
    ssize_t stop = xbp->xb_curp - xbp->xb_bufp;

    if (xo_style(xop) == XO_STYLE_XML)
 xo_buf_append(xbp, units_start_xml, sizeof(units_start_xml) - 1);
    else if (xo_style(xop) == XO_STYLE_HTML)
 xo_buf_append(xbp, units_start_html, sizeof(units_start_html) - 1);
    else
 return;

    if (vlen)
 xo_data_escape(xop, value, vlen);
    else
 xo_do_format_field(xop, ((void*)0), fmt, flen, flags);

    xo_buf_append(xbp, "\"", 1);

    ssize_t now = xbp->xb_curp - xbp->xb_bufp;
    ssize_t delta = now - stop;
    if (delta <= 0) {
 xbp->xb_curp = xbp->xb_bufp + stop;
 return;
    }







    char *buf = alloca(delta);

    memcpy(buf, xbp->xb_bufp + stop, delta);
    memmove(xbp->xb_bufp + start + delta, xbp->xb_bufp + start, stop - start);
    memmove(xbp->xb_bufp + start, buf, delta);
}
