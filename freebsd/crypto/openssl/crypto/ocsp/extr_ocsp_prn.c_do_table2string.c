
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long t; char const* m; } ;
typedef TYPE_1__ OCSP_TBLSTR ;



__attribute__((used)) static const char *do_table2string(long s, const OCSP_TBLSTR *ts, size_t len)
{
    size_t i;
    for (i = 0; i < len; i++, ts++)
        if (ts->t == s)
            return ts->m;
    return "(UNKNOWN)";
}
