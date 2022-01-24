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
typedef  int /*<<< orphan*/  uint8_t ;
struct auth_chunk {size_t len; struct auth_chunk* next; scalar_t__* data; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC3(struct auth_chunk** chunk, size_t* chunk_pos,
	sldns_buffer* buf)
{
	int readsome = 0;
	while(*chunk) {
		/* more text in this chunk? */
		if(*chunk_pos < (*chunk)->len) {
			readsome = 1;
			while(*chunk_pos < (*chunk)->len) {
				char c = (char)((*chunk)->data[*chunk_pos]);
				(*chunk_pos)++;
				if(FUNC0(buf) < 2) {
					/* buffer too short */
					FUNC2(VERB_ALGO, "http chunkline, "
						"line too long");
					return 0;
				}
				FUNC1(buf, (uint8_t)c);
				if(c == '\n') {
					/* we are done */
					return 1;
				}
			}
		}
		/* move to next chunk */
		*chunk = (*chunk)->next;
		*chunk_pos = 0;
	}
	/* no more text */
	if(readsome) return 1;
	return 0;
}