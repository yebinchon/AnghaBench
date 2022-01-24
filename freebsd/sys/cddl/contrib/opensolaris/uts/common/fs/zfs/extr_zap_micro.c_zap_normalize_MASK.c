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
typedef  int /*<<< orphan*/  zap_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int U8_TEXTPREP_IGNORE_INVALID ; 
 int U8_TEXTPREP_IGNORE_NULL ; 
 int /*<<< orphan*/  U8_UNICODE_LATEST ; 
 int ZAP_FLAG_UINT64_KEY ; 
 size_t ZAP_MAXNAMELEN ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,size_t*,char*,size_t*,int,int /*<<< orphan*/ ,int*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC4(zap_t *zap, const char *name, char *namenorm, int normflags)
{
	FUNC0(!(FUNC3(zap) & ZAP_FLAG_UINT64_KEY));

	size_t inlen = FUNC1(name) + 1;
	size_t outlen = ZAP_MAXNAMELEN;

	int err = 0;
	(void) FUNC2((char *)name, &inlen, namenorm, &outlen,
	    normflags | U8_TEXTPREP_IGNORE_NULL | U8_TEXTPREP_IGNORE_INVALID,
	    U8_UNICODE_LATEST, &err);

	return (err);
}