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
typedef  int /*<<< orphan*/  EC_KEY ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  EC_KEY_PRINT_PARAM ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ ) ; 

int FUNC1(BIO *bp, const EC_KEY *x)
{
    return FUNC0(bp, x, 4, EC_KEY_PRINT_PARAM);
}