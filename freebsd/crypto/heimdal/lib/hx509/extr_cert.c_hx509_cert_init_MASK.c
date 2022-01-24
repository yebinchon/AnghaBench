#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  hx509_context ;
typedef  TYPE_2__* hx509_cert ;
struct TYPE_8__ {int /*<<< orphan*/ * val; scalar_t__ len; } ;
struct TYPE_9__ {int ref; struct TYPE_9__* data; int /*<<< orphan*/ * ctx; int /*<<< orphan*/ * release; int /*<<< orphan*/ * basename; int /*<<< orphan*/ * private_key; TYPE_1__ attrs; int /*<<< orphan*/ * friendlyname; } ;
typedef  int /*<<< orphan*/  Certificate ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_2__* FUNC0 (int,int) ; 
 int FUNC1 (int /*<<< orphan*/  const*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int) ; 

int
FUNC4(hx509_context context, const Certificate *c, hx509_cert *cert)
{
    int ret;

    *cert = FUNC3(sizeof(**cert));
    if (*cert == NULL)
	return ENOMEM;
    (*cert)->ref = 1;
    (*cert)->friendlyname = NULL;
    (*cert)->attrs.len = 0;
    (*cert)->attrs.val = NULL;
    (*cert)->private_key = NULL;
    (*cert)->basename = NULL;
    (*cert)->release = NULL;
    (*cert)->ctx = NULL;

    (*cert)->data = FUNC0(1, sizeof(*(*cert)->data));
    if ((*cert)->data == NULL) {
	FUNC2(*cert);
	return ENOMEM;
    }
    ret = FUNC1(c, (*cert)->data);
    if (ret) {
	FUNC2((*cert)->data);
	FUNC2(*cert);
	*cert = NULL;
    }
    return ret;
}