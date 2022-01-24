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
struct tls_connection {int /*<<< orphan*/ * check_cert_subject; int /*<<< orphan*/ * domain_match; int /*<<< orphan*/ * suffix_match; int /*<<< orphan*/ * altsubject_match; int /*<<< orphan*/ * subject_match; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (char const*) ; 

__attribute__((used)) static int FUNC2(struct tls_connection *conn,
					    const char *subject_match,
					    const char *altsubject_match,
					    const char *suffix_match,
					    const char *domain_match,
					    const char *check_cert_subject)
{
	FUNC0(conn->subject_match);
	conn->subject_match = NULL;
	if (subject_match) {
		conn->subject_match = FUNC1(subject_match);
		if (conn->subject_match == NULL)
			return -1;
	}

	FUNC0(conn->altsubject_match);
	conn->altsubject_match = NULL;
	if (altsubject_match) {
		conn->altsubject_match = FUNC1(altsubject_match);
		if (conn->altsubject_match == NULL)
			return -1;
	}

	FUNC0(conn->suffix_match);
	conn->suffix_match = NULL;
	if (suffix_match) {
		conn->suffix_match = FUNC1(suffix_match);
		if (conn->suffix_match == NULL)
			return -1;
	}

	FUNC0(conn->domain_match);
	conn->domain_match = NULL;
	if (domain_match) {
		conn->domain_match = FUNC1(domain_match);
		if (conn->domain_match == NULL)
			return -1;
	}

	FUNC0(conn->check_cert_subject);
	conn->check_cert_subject = NULL;
	if (check_cert_subject) {
		conn->check_cert_subject = FUNC1(check_cert_subject);
		if (!conn->check_cert_subject)
			return -1;
	}

	return 0;
}