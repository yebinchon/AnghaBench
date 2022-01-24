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
struct ub_server_stats {int /*<<< orphan*/  ans_rcode_nodata; int /*<<< orphan*/ * ans_rcode; scalar_t__ extended; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ub_server_stats* stats, sldns_buffer* buf)
{
	if(stats->extended && FUNC3(buf) != 0) {
		int r = (int)FUNC1( FUNC2(buf) );
		stats->ans_rcode[r] ++;
		if(r == 0 && FUNC0( FUNC2(buf) ) == 0)
			stats->ans_rcode_nodata ++;
	}
}