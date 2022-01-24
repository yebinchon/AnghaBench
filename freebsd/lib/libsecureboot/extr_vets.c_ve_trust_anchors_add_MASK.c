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
typedef  int /*<<< orphan*/  br_x509_certificate ;

/* Variables and functions */
 int /*<<< orphan*/  trust_anchors ; 
 size_t FUNC0 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,char*) ; 

size_t
FUNC1(br_x509_certificate *xcs, size_t num)
{
	return (FUNC0(xcs, num, &trust_anchors, "trusted"));
}