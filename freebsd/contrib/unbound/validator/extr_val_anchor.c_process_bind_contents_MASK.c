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
struct val_anchors {int dummy; } ;
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct val_anchors*,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (unsigned char) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*,int) ; 
 scalar_t__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC13 (char*) ; 

__attribute__((used)) static int
FUNC14(struct val_anchors* anchors, sldns_buffer* buf, 
	int* line, FILE* in)
{
	/* loop over contents, collate strings before ; */
	/* contents is (numbered): 0   1    2  3 4   5  6 7 8    */
	/*                           name. 257 3 5 base64 base64 */
	/* quoted value:           0 "111"  0  0 0   0  0 0 0    */
	/* comments value:         1 "000"  1  1  1 "0  0 0 0"  1 */
	int contnum = 0;
	int quoted = 0;
	int comments = 1;
	int rdlen;
	char* str = 0;
	FUNC6(buf);
	while((rdlen=FUNC4(in, buf, line, comments))) {
		if(rdlen == 1 && FUNC8(buf) == 1
			&& FUNC2((unsigned char)*FUNC5(buf))) {
			/* starting whitespace is removed */
			FUNC6(buf);
			continue;
		} else if(rdlen == 1 && FUNC7(buf)[-1] == '"') {
			/* remove " from the string */
			if(contnum == 0) {
				quoted = 1;
				comments = 0;
			}
			FUNC10(buf, -1);
			if(contnum > 0 && quoted) {
				if(FUNC9(buf) < 8+1) {
					FUNC3("line %d, too long", *line);
					return 0;
				}
				FUNC11(buf, " DNSKEY ", 8);
				quoted = 0;
				comments = 1;
			} else if(contnum > 0)
				comments = !comments;
			continue;
		} else if(rdlen == 1 && FUNC7(buf)[-1] == ';') {

			if(contnum < 5) {
				FUNC12(buf, 0);
				FUNC3("line %d, bad key", *line);
				return 0;
			}
			FUNC10(buf, -1);
			FUNC12(buf, 0);
			str = FUNC13((char*)FUNC5(buf));
			if(!str) {
				FUNC3("line %d, allocation failure", *line);
				return 0;
			}
			if(!FUNC0(anchors, buf, str)) {
				FUNC3("line %d, bad key", *line);
				FUNC1(str);
				return 0;
			}
			FUNC1(str);
			FUNC6(buf);
			contnum = 0;
			quoted = 0;
			comments = 1;
			continue;
		} else if(rdlen == 1 && FUNC7(buf)[-1] == '}') {
			if(contnum > 0) {
				FUNC12(buf, 0);
				FUNC3("line %d, bad key before }", *line);
				return 0;
			}
			return 1;
		} else if(rdlen == 1 && 
			FUNC2((unsigned char)FUNC7(buf)[-1])) {
			/* leave whitespace here */
		} else {
			/* not space or whatnot, so actual content */
			contnum ++;
			if(contnum == 1 && !quoted) {
				if(FUNC9(buf) < 8+1) {
					FUNC3("line %d, too long", *line);
					return 0;
				}	
				FUNC11(buf, " DNSKEY ", 8);
			}
		}
	}

	FUNC3("line %d, EOF before }", *line);
	return 0;
}