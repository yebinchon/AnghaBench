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
struct ip_list {int dummy; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC4 (struct ip_list*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 () ; 
 scalar_t__ verb ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static BIO*
FUNC10(struct ip_list* ip, const char* pathname, const char* urlname)
{
	int fd;
	SSL* ssl;
	BIO* bio;
	SSL_CTX* sslctx = FUNC8();
	if(!sslctx) {
		return NULL;
	}
	fd = FUNC4(ip);
	if(fd == -1) {
		FUNC0(sslctx);
		return NULL;
	}
	ssl = FUNC2(sslctx, fd);
	if(!ssl) {
		FUNC0(sslctx);
		FUNC5(fd);
		return NULL;
	}
	if(!FUNC9(ssl, pathname, urlname)) {
		if(verb) FUNC6("could not write to server\n");
		FUNC1(ssl);
		FUNC0(sslctx);
		FUNC5(fd);
		return NULL;
	}
	bio = FUNC7(ssl);
	FUNC3(fd, ssl, sslctx);
	return bio;
}