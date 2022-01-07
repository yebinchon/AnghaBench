
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xo_handle_t ;
struct TYPE_5__ {char const* xfi_start; int xfi_len; char const* xfi_content; int xfi_clen; char const* xfi_next; char const* xfi_encoding; int xfi_elen; int xfi_flags; char const* xfi_format; int xfi_flen; int xfi_ftype; scalar_t__ xfi_fnum; } ;
typedef TYPE_1__ xo_field_info_t ;
typedef int ssize_t ;


 int XFF_ARGUMENT ;
 int XO_ROLE_EBRACE ;
 int XO_ROLE_NEWLINE ;
 int XO_ROLE_TEXT ;
 char const* xo_default_format ;
 int xo_failure (int *,char*,...) ;
 int xo_parse_field_numbers (int *,char const*,TYPE_1__*,unsigned int) ;
 char* xo_parse_roles (int *,char const*,char const*,TYPE_1__*) ;
 int xo_printable (char const*) ;
 scalar_t__ xo_role_wants_default_format (int ) ;

__attribute__((used)) static int
xo_parse_fields (xo_handle_t *xop, xo_field_info_t *fields,
   unsigned num_fields, const char *fmt)
{
    const char *cp, *sp, *ep, *basep;
    unsigned field = 0;
    xo_field_info_t *xfip = fields;
    unsigned seen_fnum = 0;

    for (cp = fmt; *cp && field < num_fields; field++, xfip++) {
 xfip->xfi_start = cp;

 if (*cp == '\n') {
     xfip->xfi_ftype = XO_ROLE_NEWLINE;
     xfip->xfi_len = 1;
     cp += 1;
     continue;
 }

 if (*cp != '{') {

     for (sp = cp; *sp; sp++) {
  if (*sp == '{' || *sp == '\n')
      break;
     }

     xfip->xfi_ftype = XO_ROLE_TEXT;
     xfip->xfi_content = cp;
     xfip->xfi_clen = sp - cp;
     xfip->xfi_next = sp;

     cp = sp;
     continue;
 }

 if (cp[1] == '{') {
     xfip->xfi_start = cp + 1;
     xfip->xfi_ftype = XO_ROLE_EBRACE;

     cp += 2;
     for (sp = cp; *sp; sp++) {
  if (*sp == '}' && sp[1] == '}')
      break;
     }
     if (*sp == '\0') {
  xo_failure(xop, "missing closing '}}': '%s'",
      xo_printable(fmt));
  return -1;
     }

     xfip->xfi_len = sp - xfip->xfi_start + 1;


     if (*sp == '}' && sp[1] == '}')
  sp += 2;

     cp = sp;
     xfip->xfi_next = cp;
     continue;
 }


 xfip->xfi_start = basep = cp + 1;

 const char *format = ((void*)0);
 ssize_t flen = 0;


 sp = xo_parse_roles(xop, fmt, basep, xfip);
 if (sp == ((void*)0)) {

     return -1;
 }

 if (xfip->xfi_fnum)
     seen_fnum = 1;


 if (*sp == ':') {
     for (ep = ++sp; *sp; sp++) {
  if (*sp == '}' || *sp == '/')
      break;
  if (*sp == '\\') {
      if (sp[1] == '\0') {
   xo_failure(xop, "backslash at the end of string");
   return -1;
      }
      sp += 1;
      continue;
  }
     }
     if (ep != sp) {
  xfip->xfi_clen = sp - ep;
  xfip->xfi_content = ep;
     }
 } else {
     xo_failure(xop, "missing content (':'): '%s'", xo_printable(fmt));
     return -1;
 }


 if (*sp == '/') {
     for (ep = ++sp; *sp; sp++) {
  if (*sp == '}' || *sp == '/')
      break;
  if (*sp == '\\') {
      if (sp[1] == '\0') {
   xo_failure(xop, "backslash at the end of string");
   return -1;
      }
      sp += 1;
      continue;
  }
     }
     flen = sp - ep;
     format = ep;
 }


 if (*sp == '/') {
     for (ep = ++sp; *sp; sp++) {
  if (*sp == '}')
      break;
     }

     xfip->xfi_encoding = ep;
     xfip->xfi_elen = sp - ep;
 }

 if (*sp != '}') {
     xo_failure(xop, "missing closing '}': %s", xo_printable(fmt));
     return -1;
 }

 xfip->xfi_len = sp - xfip->xfi_start;
 xfip->xfi_next = ++sp;


 if (xfip->xfi_clen || format || (xfip->xfi_flags & XFF_ARGUMENT)) {
     if (format) {
  xfip->xfi_format = format;
  xfip->xfi_flen = flen;
     } else if (xo_role_wants_default_format(xfip->xfi_ftype)) {
  xfip->xfi_format = xo_default_format;
  xfip->xfi_flen = 2;
     }
 }

 cp = sp;
    }

    int rc = 0;





    if (seen_fnum)
 rc = xo_parse_field_numbers(xop, fmt, fields, field);

    return rc;
}
