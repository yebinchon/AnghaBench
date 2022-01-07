
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int xo_xff_flags_t ;
typedef int xo_handle_t ;
struct TYPE_7__ {int xb_curp; } ;
typedef TYPE_1__ xo_buffer_t ;
typedef scalar_t__ ssize_t ;






 int memcpy (int ,char const*,scalar_t__) ;
 int xo_buf_has_room (TYPE_1__*,scalar_t__) ;
 scalar_t__ xo_escape_json (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ xo_escape_sdparams (TYPE_1__*,scalar_t__,int ) ;
 scalar_t__ xo_escape_xml (TYPE_1__*,scalar_t__,int ) ;
 int xo_style (int *) ;

__attribute__((used)) static void
xo_buf_escape (xo_handle_t *xop, xo_buffer_t *xbp,
        const char *str, ssize_t len, xo_xff_flags_t flags)
{
    if (!xo_buf_has_room(xbp, len))
 return;

    memcpy(xbp->xb_curp, str, len);

    switch (xo_style(xop)) {
    case 128:
    case 131:
 len = xo_escape_xml(xbp, len, flags);
 break;

    case 130:
 len = xo_escape_json(xbp, len, flags);
 break;

    case 129:
 len = xo_escape_sdparams(xbp, len, flags);
 break;
    }

    xbp->xb_curp += len;
}
