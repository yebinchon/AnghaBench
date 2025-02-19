
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int xo_mbstate; } ;
typedef TYPE_1__ xo_handle_t ;
struct TYPE_9__ {int xb_curp; } ;
typedef TYPE_2__ xo_buffer_t ;
typedef scalar_t__ wchar_t ;
typedef scalar_t__ ssize_t ;


 scalar_t__ MB_LEN_MAX ;
 scalar_t__ XOF_ISSET (TYPE_1__*,int ) ;
 int XOF_NO_LOCALE ;
 int bzero (int *,int) ;
 int memcpy (int ,char const*,scalar_t__) ;
 scalar_t__ wcrtomb (int ,scalar_t__,int *) ;
 int xo_buf_has_room (TYPE_2__*,scalar_t__) ;
 int xo_failure (TYPE_1__*,char*,...) ;
 scalar_t__ xo_utf8_char (char const*,scalar_t__) ;
 scalar_t__ xo_wcwidth (scalar_t__) ;

__attribute__((used)) static ssize_t
xo_buf_append_locale_from_utf8 (xo_handle_t *xop, xo_buffer_t *xbp,
    const char *ibuf, ssize_t ilen)
{
    wchar_t wc;
    ssize_t len;






    wc = xo_utf8_char(ibuf, ilen);
    if (wc == (wchar_t) -1) {
 xo_failure(xop, "invalid UTF-8 byte sequence");
 return 0;
    }

    if (XOF_ISSET(xop, XOF_NO_LOCALE)) {
 if (!xo_buf_has_room(xbp, ilen))
     return 0;

 memcpy(xbp->xb_curp, ibuf, ilen);
 xbp->xb_curp += ilen;

    } else {
 if (!xo_buf_has_room(xbp, MB_LEN_MAX + 1))
     return 0;

 bzero(&xop->xo_mbstate, sizeof(xop->xo_mbstate));
 len = wcrtomb(xbp->xb_curp, wc, &xop->xo_mbstate);

 if (len <= 0) {
     xo_failure(xop, "could not convert wide char: %lx",
         (unsigned long) wc);
     return 0;
 }
 xbp->xb_curp += len;
    }

    return xo_wcwidth(wc);
}
