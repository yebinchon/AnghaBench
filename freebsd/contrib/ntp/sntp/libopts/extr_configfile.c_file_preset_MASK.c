#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tmap_info_t ;
struct TYPE_11__ {int fOptSet; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_12__ {void* flags; } ;
typedef  TYPE_2__ tOptState ;
typedef  void* opt_state_mask_t ;

/* Variables and functions */
 int DIRECTION_CALLED ; 
 int DIRECTION_PROCESS ; 
 scalar_t__ FUNC0 (char) ; 
 int /*<<< orphan*/  MAP_PRIVATE ; 
 char NL ; 
 int OPTPROC_ERRSTOP ; 
 int OPTPROC_PRESETTING ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 void* OPTST_DEFINED ; 
 void* OPTST_SET ; 
 int /*<<< orphan*/  PRESET ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 char* FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 char* FUNC4 (TYPE_1__*,TYPE_2__*,char*,int) ; 
 char* FUNC5 (char*) ; 
 char* FUNC6 (TYPE_1__*,char*) ; 
 char* FUNC7 (TYPE_1__*,char*) ; 
 char* FUNC8 (TYPE_1__*,TYPE_2__*,char*,int) ; 
 char* FUNC9 (char*,char) ; 
 char* FUNC10 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC12(tOptions * opts, char const * fname, int dir)
{
    tmap_info_t       cfgfile;
    tOptState         optst = FUNC1(PRESET);
    opt_state_mask_t  st_flags = optst.flags;
    opt_state_mask_t  fl_save  = opts->fOptSet;
    char *            ftext =
        FUNC10(fname, PROT_READ|PROT_WRITE, MAP_PRIVATE, &cfgfile);

    if (FUNC3(ftext))
        return;

    /*
     * While processing config files, we ignore errors.
     */
    opts->fOptSet &= ~OPTPROC_ERRSTOP;

    if (dir == DIRECTION_CALLED) {
        st_flags = OPTST_DEFINED;
        dir   = DIRECTION_PROCESS;
    }

    /*
     *  IF this is called via "optionProcess", then we are presetting.
     *  This is the default and the PRESETTING bit will be set.
     *  If this is called via "optionFileLoad", then the bit is not set
     *  and we consider stuff set herein to be "set" by the client program.
     */
    if ((opts->fOptSet & OPTPROC_PRESETTING) == 0)
        st_flags = OPTST_SET;

    do  {
        optst.flags = st_flags;
        ftext = FUNC2(ftext);

        if (FUNC0(*ftext)) {
            ftext = FUNC4(opts, &optst, ftext, dir);

        } else switch (*ftext) {
        case '<':
            if (FUNC0(ftext[1]))
                ftext = FUNC8(opts, &optst, ftext, dir);

            else switch (ftext[1]) {
            case '?':
                ftext = FUNC6(opts, ftext);
                break;

            case '!':
                ftext = FUNC5(ftext);
                break;

            case '/':
                ftext = FUNC9(ftext + 2, '>');
                if (ftext++ != NULL)
                    break;

            default:
                ftext = NULL;
            }
            if (ftext == NULL)
                goto all_done;
            break;

        case '[':
            ftext = FUNC7(opts, ftext);
            break;

        case '#':
            ftext = FUNC9(ftext + 1, NL);
            break;

        default:
            goto all_done; /* invalid format */
        }
    } while (ftext != NULL);

 all_done:
    FUNC11(&cfgfile);
    opts->fOptSet = fl_save;
}