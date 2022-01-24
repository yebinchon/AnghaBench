#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  X509_NAME ;
struct TYPE_8__ {int /*<<< orphan*/  directoryName; } ;
struct TYPE_11__ {int /*<<< orphan*/  type; TYPE_1__ d; } ;
struct TYPE_9__ {TYPE_4__* requestorName; } ;
struct TYPE_10__ {TYPE_2__ tbsRequest; } ;
typedef  TYPE_3__ OCSP_REQUEST ;
typedef  TYPE_4__ GENERAL_NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 TYPE_4__* FUNC1 () ; 
 int /*<<< orphan*/  GEN_DIRNAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC3(OCSP_REQUEST *req, X509_NAME *nm)
{
    GENERAL_NAME *gen;

    gen = FUNC1();
    if (gen == NULL)
        return 0;
    if (!FUNC2(&gen->d.directoryName, nm)) {
        FUNC0(gen);
        return 0;
    }
    gen->type = GEN_DIRNAME;
    FUNC0(req->tbsRequest.requestorName);
    req->tbsRequest.requestorName = gen;
    return 1;
}