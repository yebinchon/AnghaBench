
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_3__ {unsigned int xfi_fnum; } ;
typedef TYPE_1__ xo_field_info_t ;
typedef unsigned int uint64_t ;


 int xo_failure (int *,char*,...) ;

__attribute__((used)) static int
xo_parse_field_numbers (xo_handle_t *xop, const char *fmt,
   xo_field_info_t *fields, unsigned num_fields)
{
    xo_field_info_t *xfip;
    unsigned field, fnum;
    uint64_t bits = 0;
    const uint64_t one = 1;

    for (xfip = fields, field = 0; field < num_fields; xfip++, field++) {

 if (xfip->xfi_fnum == 0)
     xfip->xfi_fnum = field + 1;
 else if (xfip->xfi_fnum > num_fields) {
     xo_failure(xop, "field number exceeds number of fields: '%s'", fmt);
     return -1;
 }

 fnum = xfip->xfi_fnum - 1;
 if (fnum < 64) {
     if (bits & (one << fnum)) {
  xo_failure(xop, "field number %u reused: '%s'",
      xfip->xfi_fnum, fmt);
  return -1;
     }
     bits |= one << fnum;
 }
    }

    return 0;
}
