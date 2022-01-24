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
typedef  scalar_t__ uint8_t ;
struct sldns_buffer {int dummy; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ LDNS_MAX_LABELLEN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC4 (struct sldns_buffer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * stdout ; 

void FUNC5(FILE* out, struct sldns_buffer* pkt, uint8_t* dname)
{
	uint8_t lablen;
	if(!out) out = stdout;
	if(!dname) return;

	lablen = *dname++;
	if(!lablen) 
		FUNC2('.', out);
	while(lablen) {
		if(FUNC0(lablen)) {
			/* follow pointer */
			if(!pkt) {
				FUNC3("??compressionptr??", out);
				return;
			}
			dname = FUNC4(pkt, FUNC1(lablen, *dname));
			lablen = *dname++;
			continue;
		}
		if(lablen > LDNS_MAX_LABELLEN) {
			FUNC3("??extendedlabel??", out);
			return;
		}
		while(lablen--)
			FUNC2((int)*dname++, out);
		FUNC2('.', out);
		lablen = *dname++;
	}
}