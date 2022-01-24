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
struct ptunit_result {int dummy; } ;
struct pt_tnt_cache {int /*<<< orphan*/  index; int /*<<< orphan*/  tnt; } ;
struct pt_packet_tnt {unsigned long long bit_size; unsigned long long payload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pt_tnt_cache*) ; 
 int FUNC1 (struct pt_tnt_cache*,struct pt_packet_tnt*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct ptunit_result FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long long) ; 

__attribute__((used)) static struct ptunit_result FUNC5(void)
{
	struct pt_tnt_cache tnt_cache;
	struct pt_packet_tnt packet;
	int errcode;

	FUNC0(&tnt_cache);

	packet.bit_size = 4ull;
	packet.payload = 8ull;

	errcode = FUNC1(&tnt_cache, &packet, NULL);
	FUNC2(errcode, 0);
	FUNC4(tnt_cache.tnt, 8ull);
	FUNC4(tnt_cache.index, 1ull << 3);

	return FUNC3();
}