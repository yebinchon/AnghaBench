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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int uint16_t ;
struct auth_chunk {size_t len; int /*<<< orphan*/  data; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 size_t LDNS_HEADER_SIZE ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 size_t FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC11(struct auth_chunk* rr_chunk, int rr_num,
	size_t rr_pos, uint8_t** rr_dname, uint16_t* rr_type,
	uint16_t* rr_class, uint32_t* rr_ttl, uint16_t* rr_rdlen,
	uint8_t** rr_rdata, size_t* rr_nextpos)
{
	sldns_buffer pkt;
	/* integrity checks on position */
	if(!rr_chunk) return 0;
	if(rr_chunk->len < LDNS_HEADER_SIZE) return 0;
	if(rr_num >= (int)FUNC0(rr_chunk->data)) return 0;
	if(rr_pos >= rr_chunk->len) return 0;

	/* fetch rr information */
	FUNC4(&pkt, rr_chunk->data, rr_chunk->len);
	if(rr_pos == 0) {
		size_t i;
		/* skip question section */
		FUNC9(&pkt, LDNS_HEADER_SIZE);
		for(i=0; i<FUNC1(rr_chunk->data); i++) {
			if(FUNC2(&pkt) == 0) return 0;
			if(FUNC8(&pkt) < 4) return 0;
			FUNC10(&pkt, 4); /* type and class */
		}
	} else	{
		FUNC9(&pkt, rr_pos);
	}
	*rr_dname = FUNC3(&pkt);
	if(FUNC2(&pkt) == 0) return 0;
	if(FUNC8(&pkt) < 10) return 0;
	*rr_type = FUNC6(&pkt);
	*rr_class = FUNC6(&pkt);
	*rr_ttl = FUNC7(&pkt);
	*rr_rdlen = FUNC6(&pkt);
	if(FUNC8(&pkt) < (*rr_rdlen)) return 0;
	*rr_rdata = FUNC3(&pkt);
	FUNC10(&pkt, (ssize_t)(*rr_rdlen));
	*rr_nextpos = FUNC5(&pkt);
	return 1;
}