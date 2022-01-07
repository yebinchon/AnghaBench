
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tOptions ;
struct TYPE_3__ {scalar_t__ optCookie; } ;
typedef TYPE_1__ tOptDesc ;


 char const* const OR_STR ;
 int fputs (char const* const,int ) ;
 int stdout ;

__attribute__((used)) static void
set_memb_shell(tOptions * pOpts, tOptDesc * pOD, char const * const * paz_names,
               unsigned int name_ct)
{



    unsigned int ix = 0;
    uintptr_t bits = (uintptr_t)pOD->optCookie;
    size_t len = 0;

    (void)pOpts;
    bits &= ((uintptr_t)1 << (uintptr_t)name_ct) - (uintptr_t)1;

    while (bits != 0) {
        if (bits & 1) {
            if (len++ > 0) fputs(OR_STR, stdout);
            fputs(paz_names[ix], stdout);
        }
        if (++ix >= name_ct) break;
        bits >>= 1;
    }
}
