
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_10__ {int * xb_bufp; int * xb_curp; } ;
typedef TYPE_1__ xo_buffer_t ;
struct TYPE_11__ {int c_indent; TYPE_1__ c_data; } ;
typedef TYPE_2__ cbor_private_t ;


 int CBOR_FALSE ;
 int CBOR_NEGATIVE ;
 int CBOR_NLIMIT ;
 int CBOR_STRING ;
 int CBOR_TRUE ;
 int CBOR_ULIMIT ;
 int CBOR_UNSIGNED ;
 unsigned long long ULLONG_MAX ;
 int XOF_PRETTY ;
 int cbor_append (int *,TYPE_2__*,TYPE_1__*,int ,int ,char const*) ;
 int cbor_encode_uint (TYPE_1__*,unsigned long long,int ) ;
 int cbor_memdump (int ,char*,int ,int *,char*,int) ;
 int stdout ;
 int strlen (char const*) ;
 unsigned long long strtoull (char const*,char**,int ) ;
 int xo_buf_data (TYPE_1__*,unsigned int) ;
 unsigned int xo_buf_offset (TYPE_1__*) ;
 int xo_get_flags (int *) ;
 scalar_t__ xo_streq (char const*,char*) ;

__attribute__((used)) static int
cbor_content (xo_handle_t *xop, cbor_private_t *cbor, xo_buffer_t *xbp,
       const char *value)
{
    int rc = 0;

    unsigned offset = xo_buf_offset(xbp);

    if (value == ((void*)0) || *value == '\0' || xo_streq(value, "true"))
 cbor_append(xop, cbor, &cbor->c_data, CBOR_TRUE, 0, ((void*)0));
    else if (xo_streq(value, "false"))
 cbor_append(xop, cbor, &cbor->c_data, CBOR_FALSE, 0, ((void*)0));
    else {
 int negative = 0;
 if (*value == '-') {
     value += 1;
     negative = 1;
 }

 char *ep;
 unsigned long long ival;
 ival = strtoull(value, &ep, 0);
 if (ival == ULLONG_MAX)
     cbor_append(xop, cbor, xbp, CBOR_STRING, strlen(value), value);
 else {
     *xbp->xb_curp = negative ? CBOR_NEGATIVE : CBOR_UNSIGNED;
     if (negative)
  ival -= 1;
     cbor_encode_uint(xbp, ival, negative ? CBOR_NLIMIT : CBOR_ULIMIT);
 }
    }

    if (xo_get_flags(xop) & XOF_PRETTY)
 cbor_memdump(stdout, "content", xo_buf_data(xbp, offset),
       xbp->xb_curp - xbp->xb_bufp - offset, "",
       cbor->c_indent * 2);

    return rc;
}
