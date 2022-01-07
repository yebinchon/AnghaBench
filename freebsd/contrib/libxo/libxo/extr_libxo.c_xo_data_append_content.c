
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int xo_xff_flags_t ;
struct TYPE_8__ {int xo_columns; int xo_anchor_columns; int xo_data; } ;
typedef TYPE_1__ xo_handle_t ;
typedef int ssize_t ;


 int XFF_GT_FLAGS ;
 int XFF_UNESCAPE ;
 int XF_ENC_UTF8 ;
 int XOF_COLUMNS ;
 scalar_t__ XOF_ISSET (TYPE_1__*,int ) ;
 int XOIF_ANCHOR ;
 scalar_t__ XOIF_ISSET (TYPE_1__*,int ) ;
 int xo_buf_offset (int *) ;
 int xo_format_gettext (TYPE_1__*,int,int ,int,int) ;
 int xo_format_string_direct (TYPE_1__*,int *,int,int *,char const*,int ,int,int,int ) ;
 int xo_needed_encoding (TYPE_1__*) ;

__attribute__((used)) static void
xo_data_append_content (xo_handle_t *xop, const char *str, ssize_t len,
   xo_xff_flags_t flags)
{
    int cols;
    int need_enc = xo_needed_encoding(xop);
    ssize_t start_offset = xo_buf_offset(&xop->xo_data);

    cols = xo_format_string_direct(xop, &xop->xo_data, XFF_UNESCAPE | flags,
       ((void*)0), str, len, -1,
       need_enc, XF_ENC_UTF8);
    if (flags & XFF_GT_FLAGS)
 cols = xo_format_gettext(xop, flags, start_offset, cols, need_enc);

    if (XOF_ISSET(xop, XOF_COLUMNS))
 xop->xo_columns += cols;
    if (XOIF_ISSET(xop, XOIF_ANCHOR))
 xop->xo_anchor_columns += cols;
}
