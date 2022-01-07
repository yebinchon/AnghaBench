
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_10__ {unsigned int* xb_curp; unsigned int* xb_bufp; } ;
typedef TYPE_1__ xo_buffer_t ;
struct TYPE_11__ {int c_indent; } ;
typedef TYPE_2__ cbor_private_t ;


 int CBOR_ULIMIT ;
 int XOF_PRETTY ;
 int cbor_encode_uint (TYPE_1__*,unsigned int,int ) ;
 int cbor_memdump (int ,char*,int ,unsigned int*,char*,int) ;
 int stdout ;
 int xo_buf_append (TYPE_1__*,char const*,unsigned int) ;
 int xo_buf_data (TYPE_1__*,unsigned int) ;
 int xo_buf_has_room (TYPE_1__*,unsigned int) ;
 unsigned int xo_buf_offset (TYPE_1__*) ;
 int xo_get_flags (int *) ;

__attribute__((used)) static void
cbor_append (xo_handle_t *xop, cbor_private_t *cbor, xo_buffer_t *xbp,
      unsigned major, unsigned minor, const char *data)
{
    if (!xo_buf_has_room(xbp, minor + 2))
 return;

    unsigned offset = xo_buf_offset(xbp);

    *xbp->xb_curp = major;
    cbor_encode_uint(xbp, minor, CBOR_ULIMIT);
    if (data)
 xo_buf_append(xbp, data, minor);

    if (xo_get_flags(xop) & XOF_PRETTY)
 cbor_memdump(stdout, "append", xo_buf_data(xbp, offset),
       xbp->xb_curp - xbp->xb_bufp - offset, "",
       cbor->c_indent * 2);
}
