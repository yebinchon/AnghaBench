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
 int FUNC0 (char*,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

int FUNC1(char *buf, int buf_len, const ASN1_OBJECT *a)
{
    return FUNC0(buf, buf_len, a, 0);
}