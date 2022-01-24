#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct tac_handle {TYPE_1__* srvr_avs; } ;
struct srvr_str {int len; char const* data; } ;
struct TYPE_2__ {char* data; int len; } ;

/* Variables and functions */
 int MAXAVPAIRS ; 
 char* FUNC0 (struct tac_handle*,struct srvr_str*,int /*<<< orphan*/ *) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int) ; 

char *
FUNC3(struct tac_handle *h, const char *attribute)
{
	int i, len;
	const char *ch, *end;
	const char *candidate;
	int   candidate_len;
	int   found_seperator;
	struct srvr_str srvr;

	if (attribute == NULL || ((len = FUNC1(attribute)) == 0))
		return NULL;

	for (i=0; i<MAXAVPAIRS; i++) {
		candidate = h->srvr_avs[i].data;
		candidate_len = h->srvr_avs[i].len;

		/*
		 * Valid 'srvr_avs' guaranteed to be contiguous starting at 
		 * index 0 (not necessarily the case with 'avs').  Break out
		 * when the "end" of the list has been reached.
		 */
		if (!candidate)
			break;

		if (len < candidate_len && 
		    !FUNC2(candidate, attribute, len)) {

			ch = candidate + len;
			end = candidate + candidate_len;

			/*
			 * Sift out the white space between A and V (should not
			 * be any, but don't trust implementation of server...)
			 */
			found_seperator = 0;
			while ((*ch == '=' || *ch == '*' || *ch == ' ' ||
				*ch == '\t') && ch != end) {
				if (*ch == '=' || *ch == '*')
					found_seperator++;
				ch++;
			}

			/*
			 * Note:
			 *     The case of 'attribute' == "foo" and
			 *     h->srvr_avs[0] = "foobie=var1"
			 *     h->srvr_avs[1] = "foo=var2"
			 * is handled.
			 *
			 * Note that for empty string attribute values a
			 * 0-length string is returned in order to distinguish
			 * against unset values.
			 * dup_str() will handle srvr.len == 0 correctly.
			 */
			if (found_seperator == 1) {
				srvr.len = end - ch;
				srvr.data = ch;
				return FUNC0(h, &srvr, NULL);
			}
		}
	}
	return NULL;
}