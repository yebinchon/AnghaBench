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
struct auth_chunk {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;

/* Variables and functions */
 int /*<<< orphan*/  VERB_ALGO ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_chunk**,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int
FUNC10(struct auth_chunk** chunk, size_t* chunk_pos,
	sldns_buffer* buf)
{
	size_t pos;
	int parens = 0;
	FUNC3(buf);
	pos = FUNC6(buf);
	if(!FUNC1(chunk, chunk_pos, buf)) {
		if(FUNC6(buf) < FUNC5(buf))
			FUNC8(buf, FUNC6(buf), 0);
		else FUNC8(buf, FUNC6(buf)-1, 0);
		FUNC4(buf);
		return 0;
	}
	parens += FUNC0(buf, pos);
	while(parens > 0) {
		FUNC2(buf, pos);
		pos = FUNC6(buf);
		if(!FUNC1(chunk, chunk_pos, buf)) {
			if(FUNC6(buf) < FUNC5(buf))
				FUNC8(buf, FUNC6(buf), 0);
			else FUNC8(buf, FUNC6(buf)-1, 0);
			FUNC4(buf);
			return 0;
		}
		parens += FUNC0(buf, pos);
	}

	if(FUNC7(buf) < 1) {
		FUNC9(VERB_ALGO, "http chunkline: "
			"line too long");
		return 0;
	}
	FUNC8(buf, FUNC6(buf), 0);
	FUNC4(buf);
	return 1;
}