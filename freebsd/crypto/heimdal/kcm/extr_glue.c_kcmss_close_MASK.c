#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  krb5_error_code ;
typedef  int /*<<< orphan*/  krb5_context ;
typedef  TYPE_2__* krb5_ccache ;
typedef  int /*<<< orphan*/  kcm_ccache ;
struct TYPE_5__ {scalar_t__ length; int /*<<< orphan*/ * data; } ;
struct TYPE_6__ {TYPE_1__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static krb5_error_code
FUNC2(krb5_context context,
	    krb5_ccache id)
{
    kcm_ccache c = FUNC0(id);

    FUNC1(c);

    id->data.data = NULL;
    id->data.length = 0;

    return 0;
}