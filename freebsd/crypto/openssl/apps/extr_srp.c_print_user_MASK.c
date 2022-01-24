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
struct TYPE_7__ {TYPE_1__* db; } ;
struct TYPE_6__ {int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ CA_DB ;

/* Variables and functions */
 size_t DB_srpgN ; 
 size_t DB_srptype ; 
 int FUNC0 (TYPE_2__*,char*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int,char*) ; 
 char** FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC3(CA_DB *db, int userindex, int verbose)
{
    if (verbose > 0) {
        char **pp = FUNC2(db->db->data, userindex);

        if (pp[DB_srptype][0] != 'I') {
            FUNC1(db, userindex, verbose, "User entry");
            FUNC1(db, FUNC0(db, pp[DB_srpgN], 'I'), verbose,
                        "g N entry");
        }

    }
}