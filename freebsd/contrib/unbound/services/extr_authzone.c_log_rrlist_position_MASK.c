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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  typestr ;
struct auth_chunk {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char const*,int,char*,char*) ; 

__attribute__((used)) static void
FUNC8(const char* label, struct auth_chunk* rr_chunk,
	uint8_t* rr_dname, uint16_t rr_type, size_t rr_counter)
{
	sldns_buffer pkt;
	size_t dlen;
	uint8_t buf[256];
	char str[256];
	char typestr[32];
	FUNC4(&pkt, rr_chunk->data, rr_chunk->len);
	FUNC5(&pkt, (size_t)(rr_dname -
		FUNC3(&pkt)));
	if((dlen=FUNC2(&pkt)) == 0) return;
	if(dlen >= sizeof(buf)) return;
	FUNC0(&pkt, buf, rr_dname);
	FUNC1(buf, str);
	(void)FUNC6(rr_type, typestr, sizeof(typestr));
	FUNC7(VERB_ALGO, "%s at[%d] %s %s", label, (int)rr_counter,
		str, typestr);
}