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
struct cert_status {int haveSKI; } ;
typedef  int /*<<< orphan*/  hx509_validate_ctx ;
typedef  enum critical_flag { ____Placeholder_critical_flag } critical_flag ;
struct TYPE_8__ {size_t length; int /*<<< orphan*/  data; } ;
struct TYPE_10__ {TYPE_1__ extnValue; } ;
struct TYPE_9__ {int length; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ SubjectKeyIdentifier ;
typedef  TYPE_3__ Extension ;

/* Variables and functions */
 int /*<<< orphan*/  HX509_VALIDATE_F_VALIDATE ; 
 int /*<<< orphan*/  HX509_VALIDATE_F_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct cert_status*,int,TYPE_3__ const*) ; 
 int FUNC1 (int /*<<< orphan*/ ,size_t,TYPE_2__*,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static int
FUNC6(hx509_validate_ctx ctx,
			   struct cert_status *status,
			   enum critical_flag cf,
			   const Extension *e)
{
    SubjectKeyIdentifier si;
    size_t size;
    int ret;

    status->haveSKI = 1;
    FUNC0(ctx, status, cf, e);

    ret = FUNC1(e->extnValue.data,
				      e->extnValue.length,
				      &si, &size);
    if (ret) {
	FUNC5(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Decoding SubjectKeyIdentifier failed: %d", ret);
	return 1;
    }
    if (size != e->extnValue.length) {
	FUNC5(ctx, HX509_VALIDATE_F_VALIDATE,
		       "Decoding SKI ahve extra bits on the end");
	return 1;
    }
    if (si.length == 0)
	FUNC5(ctx, HX509_VALIDATE_F_VALIDATE,
		       "SKI is too short (0 bytes)");
    if (si.length > 20)
	FUNC5(ctx, HX509_VALIDATE_F_VALIDATE,
		       "SKI is too long");

    {
	char *id;
	FUNC4(si.data, si.length, &id);
	if (id) {
	    FUNC5(ctx, HX509_VALIDATE_F_VERBOSE,
			   "\tsubject key id: %s\n", id);
	    FUNC2(id);
	}
    }

    FUNC3(&si);

    return 0;
}