
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int xo_columns; int xo_anchor_columns; } ;
typedef TYPE_1__ xo_handle_t ;
struct TYPE_12__ {int xb_bufp; int xb_curp; } ;
typedef TYPE_2__ xo_buffer_t ;
typedef int ssize_t ;


 int XOF_COLUMNS ;
 scalar_t__ XOF_ISSET (TYPE_1__*,int ) ;
 int XOIF_ANCHOR ;
 scalar_t__ XOIF_ISSET (TYPE_1__*,int ) ;
 int xo_buf_append (TYPE_2__*,char const*,int) ;
 scalar_t__ xo_buf_append_locale_from_utf8 (TYPE_1__*,TYPE_2__*,char const*,int) ;
 int xo_buf_utf8_len (TYPE_1__*,char const*,int) ;
 int xo_is_utf8 (char const) ;

__attribute__((used)) static void
xo_buf_append_locale (xo_handle_t *xop, xo_buffer_t *xbp,
        const char *cp, ssize_t len)
{
    const char *sp = cp, *ep = cp + len;
    ssize_t save_off = xbp->xb_bufp - xbp->xb_curp;
    ssize_t slen;
    int cols = 0;

    for ( ; cp < ep; cp++) {
 if (!xo_is_utf8(*cp)) {
     cols += 1;
     continue;
 }
 if (sp != cp)
     xo_buf_append(xbp, sp, cp - sp);

 slen = xo_buf_utf8_len(xop, cp, ep - cp);
 if (slen <= 0) {

     xbp->xb_curp = xbp->xb_bufp + save_off;
     return;
 }

 cols += xo_buf_append_locale_from_utf8(xop, xbp, cp, slen);


 cp += slen - 1;
 sp = cp + 1;
    }


    if (XOF_ISSET(xop, XOF_COLUMNS))
 xop->xo_columns += cols;
    if (XOIF_ISSET(xop, XOIF_ANCHOR))
 xop->xo_anchor_columns += cols;


    len = ep - sp;
    if (len != 0)
 xo_buf_append(xbp, sp, len);
}
