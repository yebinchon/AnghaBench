#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int length; int /*<<< orphan*/  data; } ;
struct TYPE_9__ {TYPE_1__* db; } ;
struct TYPE_8__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ CA_DB ;
typedef  TYPE_3__ ASN1_UTCTIME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 TYPE_3__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 char DB_TYPE_EXP ; 
 char DB_TYPE_VAL ; 
 size_t DB_exp_date ; 
 size_t DB_serial ; 
 size_t DB_type ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int,char*) ; 
 int /*<<< orphan*/  bio_err ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 char** FUNC8 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC9 (char*,char*) ; 
 scalar_t__ FUNC10 (char*,char*,int) ; 

__attribute__((used)) static int FUNC11(CA_DB *db)
{
    ASN1_UTCTIME *a_tm = NULL;
    int i, cnt = 0;
    int db_y2k, a_y2k;          /* flags = 1 if y >= 2000 */
    char **rrow, *a_tm_s;

    a_tm = FUNC1();
    if (a_tm == NULL)
        return -1;

    /* get actual time and make a string */
    if (FUNC4(a_tm, 0) == NULL) {
        FUNC0(a_tm);
        return -1;
    }
    a_tm_s = FUNC5(a_tm->length + 1, "time string");

    FUNC6(a_tm_s, a_tm->data, a_tm->length);
    a_tm_s[a_tm->length] = '\0';

    if (FUNC10(a_tm_s, "49", 2) <= 0)
        a_y2k = 1;
    else
        a_y2k = 0;

    for (i = 0; i < FUNC7(db->db->data); i++) {
        rrow = FUNC8(db->db->data, i);

        if (rrow[DB_type][0] == DB_TYPE_VAL) {
            /* ignore entries that are not valid */
            if (FUNC10(rrow[DB_exp_date], "49", 2) <= 0)
                db_y2k = 1;
            else
                db_y2k = 0;

            if (db_y2k == a_y2k) {
                /* all on the same y2k side */
                if (FUNC9(rrow[DB_exp_date], a_tm_s) <= 0) {
                    rrow[DB_type][0] = DB_TYPE_EXP;
                    rrow[DB_type][1] = '\0';
                    cnt++;

                    FUNC2(bio_err, "%s=Expired\n", rrow[DB_serial]);
                }
            } else if (db_y2k < a_y2k) {
                rrow[DB_type][0] = DB_TYPE_EXP;
                rrow[DB_type][1] = '\0';
                cnt++;

                FUNC2(bio_err, "%s=Expired\n", rrow[DB_serial]);
            }

        }
    }

    FUNC0(a_tm);
    FUNC3(a_tm_s);
    return cnt;
}