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
struct status_map_st {scalar_t__ bit; int /*<<< orphan*/  text; } ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_BIT_STRING ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 

__attribute__((used)) static int FUNC2(BIO *bio, const struct status_map_st *a,
                               const ASN1_BIT_STRING *v)
{
    int lines = 0;

    for (; a->bit >= 0; ++a) {
        if (FUNC0(v, a->bit)) {
            if (++lines > 1)
                FUNC1(bio, ", ");
            FUNC1(bio, "%s", a->text);
        }
    }

    return lines;
}