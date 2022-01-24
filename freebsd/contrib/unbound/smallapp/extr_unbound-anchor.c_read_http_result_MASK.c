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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (int /*<<< orphan*/ *,size_t*) ; 
 char* FUNC8 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,size_t*) ; 
 int verb ; 

__attribute__((used)) static BIO*
FUNC10(SSL* ssl)
{
	size_t len = 0;
	char* data;
	BIO* m;
	if(!FUNC9(ssl, &len)) {
		return NULL;
	}
	if(len == 0) {
		data = FUNC7(ssl, &len);
	} else {
		data = FUNC8(ssl, len);
	}
	if(!data) return NULL;
	if(verb >= 4) FUNC5("read data", data, (int)len);
	m = FUNC0(FUNC1());
	if(!m) {
		if(verb) FUNC6("out of memory\n");
		FUNC4(data);
		FUNC3(0);
	}
	FUNC2(m, data, (int)len);
	FUNC4(data);
	return m;
}