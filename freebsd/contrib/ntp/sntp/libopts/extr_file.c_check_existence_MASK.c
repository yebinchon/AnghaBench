#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int teOptFileType ;
struct TYPE_7__ {int /*<<< orphan*/  pzProgName; } ;
typedef  TYPE_2__ tOptions ;
struct TYPE_6__ {char* argString; } ;
struct TYPE_8__ {TYPE_1__ optArg; } ;
typedef  TYPE_3__ tOptDesc ;
struct stat {int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 char* FUNC0 (size_t,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DIRCH ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOENT ; 
 int FTYPE_MODE_EXIST_MASK ; 
#define  FTYPE_MODE_MAY_EXIST 130 
#define  FTYPE_MODE_MUST_EXIST 129 
#define  FTYPE_MODE_MUST_NOT_EXIST 128 
 char NUL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct stat*) ; 
 char* FUNC7 (char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8(teOptFileType ftype, tOptions * pOpts, tOptDesc * pOD)
{
    char const * fname = pOD->optArg.argString;
    struct stat sb;

    errno = 0;

    switch (ftype & FTYPE_MODE_EXIST_MASK) {
    case FTYPE_MODE_MUST_NOT_EXIST:
        if ((FUNC6(fname, &sb) == 0) || (errno != ENOENT)) {
            if (errno == 0)
                errno = EINVAL;
            FUNC4(pOpts->pzProgName, "stat", fname);
            /* NOTREACHED */
        }
        /* FALLTHROUGH */

    default:
    case FTYPE_MODE_MAY_EXIST:
    {
        char * p = FUNC7(fname, DIRCH);
        size_t l;

        if (p == NULL)
            /*
             *  The file may or may not exist and its directory is ".".
             *  Assume that "." exists.
             */
            break;

        l = (size_t)(p - fname);
        p = FUNC0(l + 1, "fname");
        FUNC5(p, fname, l);
        p[l] = NUL;

        if ((FUNC6(p, &sb) != 0) || (errno = EINVAL, ! FUNC2(sb.st_mode)))
            FUNC4(pOpts->pzProgName, "stat", p);
            /* NOTREACHED */

        FUNC1(p);
        break;
    }

    case FTYPE_MODE_MUST_EXIST:
        if (  (FUNC6(fname, &sb) != 0)
           || (errno = EINVAL, ! FUNC3(sb.st_mode))  )
            FUNC4(pOpts->pzProgName, "stat", fname);
            /* NOTREACHED */

        break;
    }
}