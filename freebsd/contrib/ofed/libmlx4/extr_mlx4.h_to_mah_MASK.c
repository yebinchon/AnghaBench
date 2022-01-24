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
struct mlx4_ah {int dummy; } ;
struct ibv_ah {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ah ; 
 struct mlx4_ah* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct mlx4_ah *FUNC1(struct ibv_ah *ibah)
{
	return FUNC0(ah, ah);
}