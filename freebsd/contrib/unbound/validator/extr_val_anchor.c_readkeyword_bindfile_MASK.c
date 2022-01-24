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
typedef  int /*<<< orphan*/  sldns_buffer ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (unsigned char) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 char FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC11(FILE* in, sldns_buffer* buf, int* line, int comments)
{
	int c;
	int numdone = 0;
	while((c = FUNC1(in)) != EOF ) {
		if(comments && c == '#') {	/*   # blabla   */
			FUNC4(in);
			(*line)++;
			continue;
		} else if(comments && c=='/' && numdone>0 && /* /_/ bla*/
			FUNC6(buf, 
			FUNC5(buf)-1) == '/') {
			FUNC8(buf, -1);
			numdone--;
			FUNC4(in);
			(*line)++;
			continue;
		} else if(comments && c=='*' && numdone>0 && /* /_* bla *_/ */
			FUNC6(buf, 
			FUNC5(buf)-1) == '/') {
			FUNC8(buf, -1);
			numdone--;
			/* skip to end of comment */
			while(c != EOF && (c=FUNC1(in)) != EOF ) {
				if(c == '*') {
					if((c=FUNC1(in)) == '/')
						break;
				}
				if(c == '\n')
					(*line)++;
			}
			continue;
		}
		/* not a comment, complete the keyword */
		if(numdone > 0) {
			/* check same type */
			if(FUNC3((unsigned char)c)) {
				FUNC10(c, in);
				return numdone;
			}
			if(FUNC2(c)) {
				FUNC10(c, in);
				return numdone;
			}
		}
		if(c == '\n') {
			c = ' ';
			(*line)++;
		}
		/* space for 1 char + 0 string terminator */
		if(FUNC7(buf) < 2) {
			FUNC0("trusted-keys, %d, string too long", *line);
		}
		FUNC9(buf, (uint8_t)c);
		numdone++;
		if(FUNC3((unsigned char)c)) {
			/* collate whitespace into ' ' */
			while((c = FUNC1(in)) != EOF ) {
				if(c == '\n')
					(*line)++;
				if(!FUNC3((unsigned char)c)) {
					FUNC10(c, in);
					break;
				}
			}
			return numdone;
		}
		if(FUNC2(c))
			return numdone;
	}
	return numdone;
}