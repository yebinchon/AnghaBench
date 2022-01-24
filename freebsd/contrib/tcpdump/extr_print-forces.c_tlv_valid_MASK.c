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
typedef  scalar_t__ u_int ;
struct forces_tlv {int /*<<< orphan*/  length; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ INVALID_ALEN ; 
 scalar_t__ INVALID_LTLN ; 
 scalar_t__ INVALID_RLEN ; 
 scalar_t__ INVALID_STLN ; 
 scalar_t__ TLV_HDRL ; 

__attribute__((used)) static inline u_int FUNC2(const struct forces_tlv *tlv, u_int rlen)
{
	if (rlen < TLV_HDRL)
		return INVALID_RLEN;
	if (FUNC0(&tlv->length) < TLV_HDRL)
		return INVALID_STLN;
	if (FUNC0(&tlv->length) > rlen)
		return INVALID_LTLN;
	if (rlen < FUNC1(FUNC0(&tlv->length)))
		return INVALID_ALEN;

	return 0;
}