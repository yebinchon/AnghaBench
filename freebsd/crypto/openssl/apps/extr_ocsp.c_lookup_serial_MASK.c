#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  db; } ;
typedef  TYPE_1__ CA_DB ;
typedef  int /*<<< orphan*/  BIGNUM ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int DB_NUMBER ; 
 size_t DB_serial ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 
 char** FUNC7 (int /*<<< orphan*/ ,size_t,char**) ; 

__attribute__((used)) static char **FUNC8(CA_DB *db, ASN1_INTEGER *ser)
{
    int i;
    BIGNUM *bn = NULL;
    char *itmp, *row[DB_NUMBER], **rrow;
    for (i = 0; i < DB_NUMBER; i++)
        row[i] = NULL;
    bn = FUNC0(ser, NULL);
    FUNC4(bn);         /* FIXME: should report an error at this
                                 * point and abort */
    if (FUNC3(bn))
        itmp = FUNC6("00");
    else
        itmp = FUNC1(bn);
    row[DB_serial] = itmp;
    FUNC2(bn);
    rrow = FUNC7(db->db, DB_serial, row);
    FUNC5(itmp);
    return rrow;
}