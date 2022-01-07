
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int xo_handle_t ;
typedef int ssize_t ;
struct TYPE_5__ {int c_flags; } ;
typedef TYPE_1__ csv_private_t ;


 int CF_DEBUG ;
 int CF_DOS_NEWLINE ;
 int CF_HAS_PATH ;
 int CF_NO_HEADER ;
 int CF_NO_KEYS ;
 int CF_NO_QUOTES ;
 int CF_VALUE_ONLY ;
 char* alloca (int) ;
 scalar_t__ csv_record_leafs (int *,TYPE_1__*,char*) ;
 scalar_t__ csv_record_path (int *,TYPE_1__*,char*) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 scalar_t__ xo_streq (char*,char*) ;
 int xo_warn_hc (int *,int,char*,char*) ;

__attribute__((used)) static int
csv_options (xo_handle_t *xop, csv_private_t *csv, const char *raw_opts)
{
    ssize_t len = strlen(raw_opts);
    char *options = alloca(len + 1);
    memcpy(options, raw_opts, len);
    options[len] = '\0';

    char *cp, *ep, *np, *vp;
    for (cp = options, ep = options + len + 1; cp && cp < ep; cp = np) {
 np = strchr(cp, '+');
 if (np)
     *np++ = '\0';

 vp = strchr(cp, '=');
 if (vp)
     *vp++ = '\0';

 if (xo_streq(cp, "path")) {

     if (vp != ((void*)0) && csv_record_path(xop, csv, vp))
    return -1;

     csv->c_flags |= CF_HAS_PATH;

 } else if (xo_streq(cp, "leafs")
     || xo_streq(cp, "leaf")
     || xo_streq(cp, "leaves")) {

     if (vp != ((void*)0) && csv_record_leafs(xop, csv, vp))
    return -1;

 } else if (xo_streq(cp, "no-keys")) {
     csv->c_flags |= CF_NO_KEYS;
 } else if (xo_streq(cp, "no-header")) {
     csv->c_flags |= CF_NO_HEADER;
 } else if (xo_streq(cp, "value-only")) {
     csv->c_flags |= CF_VALUE_ONLY;
 } else if (xo_streq(cp, "dos")) {
     csv->c_flags |= CF_DOS_NEWLINE;
 } else if (xo_streq(cp, "no-quotes")) {
     csv->c_flags |= CF_NO_QUOTES;
 } else if (xo_streq(cp, "debug")) {
     csv->c_flags |= CF_DEBUG;
 } else {
     xo_warn_hc(xop, -1,
         "unknown encoder option value: '%s'", cp);
     return -1;
 }
    }

    return 0;
}
