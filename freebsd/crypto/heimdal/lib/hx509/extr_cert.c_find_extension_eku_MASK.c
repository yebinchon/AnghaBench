#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  length; int /*<<< orphan*/  data; } ;
struct TYPE_5__ {TYPE_1__ extnValue; } ;
typedef  TYPE_2__ Extension ;
typedef  int /*<<< orphan*/  ExtKeyUsage ;
typedef  int /*<<< orphan*/  Certificate ;

/* Variables and functions */
 int HX509_EXTENSION_NOT_FOUND ; 
 int /*<<< orphan*/  asn1_oid_id_x509_ce_extKeyUsage ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t*) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *,size_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(const Certificate *cert, ExtKeyUsage *eku)
{
    const Extension *e;
    size_t size;
    size_t i = 0;

    FUNC2(eku, 0, sizeof(*eku));

    e = FUNC1(cert, &asn1_oid_id_x509_ce_extKeyUsage, &i);
    if (e == NULL)
	return HX509_EXTENSION_NOT_FOUND;

    return FUNC0(e->extnValue.data,
			      e->extnValue.length,
			      eku, &size);
}