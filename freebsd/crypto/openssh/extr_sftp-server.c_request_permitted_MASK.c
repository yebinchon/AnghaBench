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
struct sftp_handler {int /*<<< orphan*/  name; scalar_t__ does_write; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ readonly ; 
 int /*<<< orphan*/ * request_blacklist ; 
 int /*<<< orphan*/ * request_whitelist ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC4(struct sftp_handler *h)
{
	char *result;

	if (readonly && h->does_write) {
		FUNC3("Refusing %s request in read-only mode", h->name);
		return 0;
	}
	if (request_blacklist != NULL &&
	    ((result = FUNC2(h->name, request_blacklist, NULL))) != NULL) {
		FUNC1(result);
		FUNC3("Refusing blacklisted %s request", h->name);
		return 0;
	}
	if (request_whitelist != NULL &&
	    ((result = FUNC2(h->name, request_whitelist, NULL))) != NULL) {
		FUNC1(result);
		FUNC0("Permitting whitelisted %s request", h->name);
		return 1;
	}
	if (request_whitelist != NULL) {
		FUNC3("Refusing non-whitelisted %s request", h->name);
		return 0;
	}
	return 1;
}