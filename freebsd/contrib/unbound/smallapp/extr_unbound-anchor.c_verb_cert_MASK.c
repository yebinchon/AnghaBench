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
typedef  int /*<<< orphan*/  X509 ;

/* Variables and functions */
 unsigned long X509_FLAG_NO_ISSUER ; 
 unsigned long X509_FLAG_NO_SUBJECT ; 
 unsigned long X509_FLAG_NO_VALIDITY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  stdout ; 
 int verb ; 

__attribute__((used)) static void
FUNC3(const char* msg, X509* x)
{
	if(verb == 0 || verb == 1) return;
	if(verb == 2) {
		if(msg) FUNC2("%s\n", msg);
		FUNC0(stdout, x, 0, (unsigned long)-1
			^(X509_FLAG_NO_SUBJECT
			|X509_FLAG_NO_ISSUER|X509_FLAG_NO_VALIDITY));
		return;
	}
	if(msg) FUNC2("%s\n", msg);
	FUNC1(stdout, x);
}