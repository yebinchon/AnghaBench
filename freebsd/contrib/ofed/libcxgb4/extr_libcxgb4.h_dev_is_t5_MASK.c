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
struct c4iw_dev {scalar_t__ chip_version; } ;

/* Variables and functions */
 scalar_t__ CHELSIO_T5 ; 

__attribute__((used)) static inline int FUNC0(struct c4iw_dev *dev)
{
	return dev->chip_version == CHELSIO_T5;
}