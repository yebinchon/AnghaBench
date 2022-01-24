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
struct TYPE_5__ {int /*<<< orphan*/  _save; } ;
struct TYPE_6__ {TYPE_1__ tbsCertificate; int /*<<< orphan*/  signatureAlgorithm; int /*<<< orphan*/  signatureValue; } ;
typedef  TYPE_2__ Certificate ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3(const Certificate *p, const Certificate *q)
{
    int diff;
    diff = FUNC1(&p->signatureValue, &q->signatureValue);
    if (diff)
	return diff;
    diff = FUNC0(&p->signatureAlgorithm,
					  &q->signatureAlgorithm);
    if (diff)
	return diff;
    diff = FUNC2(&p->tbsCertificate._save,
				     &q->tbsCertificate._save);
    return diff;
}