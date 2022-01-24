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
typedef  int /*<<< orphan*/  time_t ;
struct sockaddr_storage {int dummy; } ;
struct sldns_buffer {int dummy; } ;
struct lruhash_entry {int /*<<< orphan*/  lock; int /*<<< orphan*/  data; } ;
struct infra_cache {int dummy; } ;
struct comm_reply {int /*<<< orphan*/  addrlen; int /*<<< orphan*/  addr; } ;
typedef  int /*<<< orphan*/  qnm ;
typedef  int /*<<< orphan*/  client_ip ;

/* Variables and functions */
 scalar_t__ LDNS_HEADER_SIZE ; 
 int /*<<< orphan*/  LDNS_MAX_DOMAINLEN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VERB_OPS ; 
 int /*<<< orphan*/  FUNC1 (struct sockaddr_storage*,int /*<<< orphan*/ ,char*,int) ; 
 struct lruhash_entry* FUNC2 (struct infra_cache*,struct comm_reply*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct infra_cache*,struct comm_reply*,int /*<<< orphan*/ ) ; 
 int infra_ip_ratelimit ; 
 int* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct sldns_buffer*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (struct sldns_buffer*) ; 
 scalar_t__ FUNC9 (struct sldns_buffer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 char* FUNC11 (char*,char) ; 
 int FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,char*,int,...) ; 

int FUNC14(struct infra_cache* infra,
  struct comm_reply* repinfo, time_t timenow, struct sldns_buffer* buffer)
{
	int max;
	struct lruhash_entry* entry;

	/* not enabled */
	if(!infra_ip_ratelimit) {
		return 1;
	}
	/* find or insert ratedata */
	entry = FUNC2(infra, repinfo, 1);
	if(entry) {
		int premax = FUNC5(entry->data, timenow);
		int* cur = FUNC4(entry->data, timenow);
		(*cur)++;
		max = FUNC5(entry->data, timenow);
		FUNC6(&entry->lock);

		if(premax < infra_ip_ratelimit && max >= infra_ip_ratelimit) {
			char client_ip[128], qnm[LDNS_MAX_DOMAINLEN+1+12+12];
			FUNC1((struct sockaddr_storage *)&repinfo->addr,
				repinfo->addrlen, client_ip, sizeof(client_ip));
			qnm[0]=0;
			if(FUNC9(buffer)>LDNS_HEADER_SIZE &&
				FUNC0(FUNC8(buffer))!=0) {
				(void)FUNC10(
					FUNC7(buffer, LDNS_HEADER_SIZE),
					FUNC9(buffer)-LDNS_HEADER_SIZE,
					qnm, sizeof(qnm));
				if(FUNC12(qnm)>0 && qnm[FUNC12(qnm)-1]=='\n')
					qnm[FUNC12(qnm)-1] = 0; /*remove newline*/
				if(FUNC11(qnm, '\t'))
					*FUNC11(qnm, '\t') = ' ';
				if(FUNC11(qnm, '\t'))
					*FUNC11(qnm, '\t') = ' ';
				FUNC13(VERB_OPS, "ip_ratelimit exceeded %s %d %s",
					client_ip, infra_ip_ratelimit, qnm);
			} else {
				FUNC13(VERB_OPS, "ip_ratelimit exceeded %s %d (no query name)",
					client_ip, infra_ip_ratelimit);
			}
		}
		return (max <= infra_ip_ratelimit);
	}

	/* create */
	FUNC3(infra, repinfo, timenow);
	return 1;
}