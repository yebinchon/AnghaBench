
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* xb_curp; char* xb_bufp; } ;
struct TYPE_8__ {TYPE_1__ xo_data; int * xo_gt_domain; } ;
typedef TYPE_2__ xo_handle_t ;
struct TYPE_9__ {char* xfi_format; scalar_t__ xfi_flen; } ;
typedef TYPE_3__ xo_field_info_t ;
typedef scalar_t__ ssize_t ;


 int xo_do_format_field (TYPE_2__*,int *,char const*,scalar_t__,int ) ;
 int xo_free (int *) ;
 int * xo_strndup (char const*,scalar_t__) ;

__attribute__((used)) static void
xo_set_gettext_domain (xo_handle_t *xop, xo_field_info_t *xfip,
         const char *str, ssize_t len)
{
    const char *fmt = xfip->xfi_format;
    ssize_t flen = xfip->xfi_flen;


    if (xop->xo_gt_domain) {
 xo_free(xop->xo_gt_domain);
 xop->xo_gt_domain = ((void*)0);
    }


    if (len == 0 && flen == 0)
 return;

    ssize_t start_offset = -1;
    if (len == 0 && flen != 0) {

 start_offset = xop->xo_data.xb_curp - xop->xo_data.xb_bufp;
 xo_do_format_field(xop, ((void*)0), fmt, flen, 0);

 ssize_t end_offset = xop->xo_data.xb_curp - xop->xo_data.xb_bufp;
 len = end_offset - start_offset;
 str = xop->xo_data.xb_bufp + start_offset;
    }

    xop->xo_gt_domain = xo_strndup(str, len);


    if (start_offset >= 0)
 xop->xo_data.xb_curp = xop->xo_data.xb_bufp + start_offset;
}
