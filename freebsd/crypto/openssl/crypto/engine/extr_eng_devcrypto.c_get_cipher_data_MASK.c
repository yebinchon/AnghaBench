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
struct cipher_data_st {int dummy; } ;

/* Variables and functions */
 struct cipher_data_st const* cipher_data ; 
 size_t FUNC0 (int) ; 

__attribute__((used)) static const struct cipher_data_st *FUNC1(int nid)
{
    return &cipher_data[FUNC0(nid)];
}