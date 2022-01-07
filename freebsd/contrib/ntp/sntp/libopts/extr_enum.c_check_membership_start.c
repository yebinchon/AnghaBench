
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* argString; } ;
struct TYPE_5__ {TYPE_1__ optArg; int optCookie; } ;
typedef TYPE_2__ tOptDesc ;


 char const NUL ;
 char* SPN_WHITESPACE_CHARS (char const*) ;

__attribute__((used)) static uintptr_t
check_membership_start(tOptDesc * od, char const ** argp, bool * invert)
{
    uintptr_t res = (uintptr_t)od->optCookie;
    char const * arg = SPN_WHITESPACE_CHARS(od->optArg.argString);
    if ((arg == ((void*)0)) || (*arg == NUL))
        goto member_start_fail;

    *invert = 0;

    switch (*arg) {
    case '=':
        res = 0UL;
        arg = SPN_WHITESPACE_CHARS(arg + 1);
        switch (*arg) {
        case '=': case ',':
            goto member_start_fail;
        case '^':
            goto inversion;
        default:
            break;
        }
        break;

    case '^':
    inversion:
        *invert = 1;
        arg = SPN_WHITESPACE_CHARS(arg + 1);
        if (*arg != ',')
            break;


    case ',':
        goto member_start_fail;

    default:
        break;
    }

    *argp = arg;
    return res;

member_start_fail:
    *argp = ((void*)0);
    return 0UL;
}
