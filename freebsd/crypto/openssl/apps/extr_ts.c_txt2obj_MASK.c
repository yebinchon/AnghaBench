#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bio_err ; 

__attribute__((used)) static ASN1_OBJECT *FUNC2(const char *oid)
{
    ASN1_OBJECT *oid_obj = NULL;

    if ((oid_obj = FUNC1(oid, 0)) == NULL)
        FUNC0(bio_err, "cannot convert %s to OID\n", oid);

    return oid_obj;
}