#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* exptext; TYPE_4__* noticeref; } ;
typedef  TYPE_3__ USERNOTICE ;
struct TYPE_9__ {int /*<<< orphan*/  noticenos; TYPE_1__* organization; } ;
struct TYPE_7__ {char* data; } ;
struct TYPE_6__ {char* data; } ;
typedef  TYPE_4__ NOTICEREF ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC6(BIO *out, USERNOTICE *notice, int indent)
{
    int i;
    if (notice->noticeref) {
        NOTICEREF *ref;
        ref = notice->noticeref;
        FUNC0(out, "%*sOrganization: %s\n", indent, "",
                   ref->organization->data);
        FUNC0(out, "%*sNumber%s: ", indent, "",
                   FUNC4(ref->noticenos) > 1 ? "s" : "");
        for (i = 0; i < FUNC4(ref->noticenos); i++) {
            ASN1_INTEGER *num;
            char *tmp;
            num = FUNC5(ref->noticenos, i);
            if (i)
                FUNC1(out, ", ");
            if (num == NULL)
                FUNC1(out, "(null)");
            else {
                tmp = FUNC3(NULL, num);
                if (tmp == NULL)
                    return;
                FUNC1(out, tmp);
                FUNC2(tmp);
            }
        }
        FUNC1(out, "\n");
    }
    if (notice->exptext)
        FUNC0(out, "%*sExplicit Text: %s\n", indent, "",
                   notice->exptext->data);
}