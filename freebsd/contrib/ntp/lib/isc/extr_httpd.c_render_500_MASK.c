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
typedef  int /*<<< orphan*/  isc_result_t ;
typedef  int /*<<< orphan*/  isc_httpdfree_t ;
typedef  int /*<<< orphan*/  isc_buffer_t ;

/* Variables and functions */
 int /*<<< orphan*/  ISC_R_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static isc_result_t
FUNC4(const char *url, const char *querystring,
	   void *arg,
	   unsigned int *retcode, const char **retmsg,
	   const char **mimetype, isc_buffer_t *b,
	   isc_httpdfree_t **freecb, void **freecb_args)
{
	static char msg[] = "Internal server failure.";

	FUNC0(url);
	FUNC0(querystring);
	FUNC0(arg);

	*retcode = 500;
	*retmsg = "Internal server failure";
	*mimetype = "text/plain";
	FUNC2(b, msg, FUNC3(msg));
	FUNC1(b, FUNC3(msg));
	*freecb = NULL;
	*freecb_args = NULL;

	return (ISC_R_SUCCESS);
}