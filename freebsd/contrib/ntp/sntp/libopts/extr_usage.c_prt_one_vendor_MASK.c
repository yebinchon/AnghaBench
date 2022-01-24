#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  z ;
struct TYPE_10__ {char* pzProgName; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_11__ {int fOptState; char* pz_Name; char* pzText; int /*<<< orphan*/ * pOptProc; } ;
typedef  TYPE_2__ tOptDesc ;
struct TYPE_12__ {char* pzOpt; char* pzNo; char* pzKey; char* pzFile; char* pzKeyL; char* pzBool; char* pzNum; char* pzNest; char* pzStr; char* pzTime; } ;
typedef  TYPE_3__ arg_types_t ;

/* Variables and functions */
 char const NUL ; 
#define  OPARG_TYPE_BOOLEAN 136 
#define  OPARG_TYPE_ENUMERATION 135 
#define  OPARG_TYPE_FILE 134 
#define  OPARG_TYPE_HIERARCHY 133 
#define  OPARG_TYPE_MEMBERSHIP 132 
#define  OPARG_TYPE_NONE 131 
#define  OPARG_TYPE_NUMERIC 130 
#define  OPARG_TYPE_STRING 129 
#define  OPARG_TYPE_TIME 128 
 int OPTST_ARG_OPTIONAL ; 
 int FUNC0 (int) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int displayEnum ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,char*,char*) ; 
 int /*<<< orphan*/  option_usage_fp ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  zbad_arg_type_msg ; 
 char* zbad_od ; 

__attribute__((used)) static void
FUNC6(tOptions *    opts,  tOptDesc *   od,
               arg_types_t * argtp, char const * usefmt)
{
    FUNC4(opts, od, argtp);

    {
        char z[ 80 ];
        char const *  pzArgType;

        /*
         *  Determine the argument type string first on its usage, then,
         *  when the option argument is required, base the type string on the
         *  argument type.
         */
        if (od->fOptState & OPTST_ARG_OPTIONAL) {
            pzArgType = argtp->pzOpt;

        } else switch (FUNC0(od->fOptState)) {
        case OPARG_TYPE_NONE:        pzArgType = argtp->pzNo;   break;
        case OPARG_TYPE_ENUMERATION: pzArgType = argtp->pzKey;  break;
        case OPARG_TYPE_FILE:        pzArgType = argtp->pzFile; break;
        case OPARG_TYPE_MEMBERSHIP:  pzArgType = argtp->pzKeyL; break;
        case OPARG_TYPE_BOOLEAN:     pzArgType = argtp->pzBool; break;
        case OPARG_TYPE_NUMERIC:     pzArgType = argtp->pzNum;  break;
        case OPARG_TYPE_HIERARCHY:   pzArgType = argtp->pzNest; break;
        case OPARG_TYPE_STRING:      pzArgType = argtp->pzStr;  break;
        case OPARG_TYPE_TIME:        pzArgType = argtp->pzTime; break;
        default:                     goto bogus_desc;
        }

        pzArgType = FUNC1(pzArgType);
        if (*pzArgType == NUL)
            FUNC5(z, sizeof(z), "%s", od->pz_Name);
        else
            FUNC5(z, sizeof(z), "%s=%s", od->pz_Name, pzArgType);
        FUNC3(option_usage_fp, usefmt, z, od->pzText);

        switch (FUNC0(od->fOptState)) {
        case OPARG_TYPE_ENUMERATION:
        case OPARG_TYPE_MEMBERSHIP:
            displayEnum = (od->pOptProc != NULL) ? true : displayEnum;
        }
    }

    return;

 bogus_desc:
    FUNC3(stderr, zbad_od, opts->pzProgName, od->pz_Name);
    FUNC2(zbad_arg_type_msg);
}