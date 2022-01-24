#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int optCt; TYPE_2__* pOptDesc; } ;
typedef  TYPE_1__ tOptions ;
struct TYPE_7__ {char const* pz_Name; scalar_t__* pz_DisableName; } ;
typedef  TYPE_2__ tOptDesc ;
typedef  int /*<<< orphan*/  name_bf ;

/* Variables and functions */
 char const NUL ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (char const) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 scalar_t__ FUNC5 (unsigned char) ; 
 char* zOptionFullName ; 
 char* zOptionPartName ; 

__attribute__((used)) static void
FUNC6(char const * name, tOptDesc * cod, tOptions * opts)
{
    char name_bf[32];
    unsigned int    min_match_ct = 2;
    unsigned int    max_match_ct = FUNC4(name) - 1;

    if (max_match_ct >= sizeof(name_bf) - 1)
        goto leave;
    
    {
        tOptDesc *  od = opts->pOptDesc;
        int         ct = opts->optCt;

        for (; ct-- > 0; od++) {
            unsigned int match_ct = 0;

            /*
             *  Omit the current option, Doc opts and compiled out opts.
             */
            if ((od == cod) || FUNC0(od))
                continue;

            /*
             *  Check each character of the name case insensitively.
             *  They must not be the same.  They cannot be, because it would
             *  not compile correctly if they were.
             */
            while (FUNC1(od->pz_Name[match_ct]) == FUNC1(name[match_ct]))
                match_ct++;

            if (match_ct > min_match_ct)
                min_match_ct = match_ct;

            /*
             *  Check the disablement name, too.
             */
            if (od->pz_DisableName == NULL)
                continue;

            match_ct = 0;
            while (  FUNC5((unsigned char)od->pz_DisableName[match_ct])
                  == FUNC5((unsigned char)name[match_ct]))
                match_ct++;
            if (match_ct > min_match_ct)
                min_match_ct = match_ct;
        }
    }

    /*
     *  Don't bother emitting partial matches if there is only one possible
     *  partial match.
     */
    if (min_match_ct < max_match_ct) {
        char *  pz    = name_bf + min_match_ct;
        int     nm_ix = min_match_ct;

        FUNC2(name_bf, name, min_match_ct);

        for (;;) {
            *pz = NUL;
            FUNC3(zOptionPartName, name_bf);
            *pz++ = name[nm_ix++];
            if (name[nm_ix] == NUL) {
                *pz = NUL;
                break;
            }
        }
    }

leave:
    FUNC3(zOptionFullName, name);
}