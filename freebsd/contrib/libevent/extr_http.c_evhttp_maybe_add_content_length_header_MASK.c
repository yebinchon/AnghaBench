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
struct evkeyvalq {int dummy; } ;
typedef  int /*<<< orphan*/  len ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  EV_SIZE_FMT ; 
 int /*<<< orphan*/  FUNC1 (struct evkeyvalq*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC2 (struct evkeyvalq*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct evkeyvalq *headers,
    size_t content_length)
{
	if (FUNC2(headers, "Transfer-Encoding") == NULL &&
	    FUNC2(headers,	"Content-Length") == NULL) {
		char len[22];
		FUNC3(len, sizeof(len), EV_SIZE_FMT,
		    FUNC0(content_length));
		FUNC1(headers, "Content-Length", len);
	}
}