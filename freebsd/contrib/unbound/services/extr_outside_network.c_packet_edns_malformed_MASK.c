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
struct sldns_buffer {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_HEADER_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ LDNS_RCODE_NOERROR ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 size_t FUNC3 (scalar_t__*,scalar_t__) ; 
 scalar_t__* FUNC4 (struct sldns_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct sldns_buffer*) ; 
 scalar_t__ FUNC6 (struct sldns_buffer*) ; 

__attribute__((used)) static int
FUNC7(struct sldns_buffer* buf, int qtype)
{
	size_t len;
	if(FUNC6(buf) < LDNS_HEADER_SIZE)
		return 1; /* malformed */
	/* they have NOERROR rcode, 1 answer. */
	if(FUNC2(FUNC5(buf)) != LDNS_RCODE_NOERROR)
		return 0;
	/* one query (to skip) and answer records */
	if(FUNC1(FUNC5(buf)) != 1 ||
		FUNC0(FUNC5(buf)) == 0)
		return 0;
	/* skip qname */
	len = FUNC3(FUNC4(buf, LDNS_HEADER_SIZE),
		FUNC6(buf)-LDNS_HEADER_SIZE);
	if(len == 0)
		return 0;
	if(len == 1 && qtype == 0)
		return 0; /* we asked for '.' and type 0 */
	/* and then 4 bytes (type and class of query) */
	if(FUNC6(buf) < LDNS_HEADER_SIZE + len + 4 + 3)
		return 0;

	/* and start with 11 zeroes as the answer RR */
	/* so check the qtype of the answer record, qname=0, type=0 */
	if(FUNC4(buf, LDNS_HEADER_SIZE+len+4)[0] == 0 &&
	   FUNC4(buf, LDNS_HEADER_SIZE+len+4)[1] == 0 &&
	   FUNC4(buf, LDNS_HEADER_SIZE+len+4)[2] == 0)
		return 1;
	return 0;
}