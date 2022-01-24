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
struct sldns_file_parse_state {int dummy; } ;
struct auth_chunk {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct auth_chunk**,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,struct sldns_file_parse_state*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,struct sldns_file_parse_state*) ; 

__attribute__((used)) static int
FUNC4(struct auth_chunk** chunk, size_t* chunk_pos,
	sldns_buffer* buf, struct sldns_file_parse_state* pstate)
{
	while(FUNC0(chunk, chunk_pos, buf)) {
		if(FUNC1(buf)) {
			/* a comment, go to next line */
			continue;
		}
		if(FUNC2(buf, pstate)) {
			continue; /* $ORIGIN has been handled */
		}
		if(FUNC3(buf, pstate)) {
			continue; /* $TTL has been handled */
		}
		return 1;
	}
	/* no noncomments, fail */
	return 0;
}