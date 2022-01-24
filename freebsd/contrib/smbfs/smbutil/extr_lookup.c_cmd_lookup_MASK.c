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
struct sockaddr_in {int /*<<< orphan*/  sin_addr; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  sin_addr; } ;
struct nb_ctx {TYPE_1__ nb_lastns; } ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,char**,char*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int FUNC4 (struct nb_ctx**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,struct nb_ctx*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct nb_ctx*) ; 
 int /*<<< orphan*/  FUNC7 (struct nb_ctx*,int /*<<< orphan*/ ) ; 
 int FUNC8 (char*,struct nb_ctx*,struct sockaddr**) ; 
 int /*<<< orphan*/  optarg ; 
 int optind ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*,int,...) ; 
 scalar_t__ FUNC12 () ; 
 int /*<<< orphan*/  smb_rc ; 

int
FUNC13(int argc, char *argv[])
{
	struct nb_ctx *ctx;
	struct sockaddr *sap;
	char *hostname;
	int error, opt;

	if (argc < 2)
		FUNC3();
	error = FUNC4(&ctx);
	if (error) {
		FUNC11("unable to create nbcontext", error);
		FUNC0(1);
	}
	if (FUNC12() == 0) {
		if (FUNC5(smb_rc, ctx, "default", 0) != 0)
			FUNC0(1);
		FUNC10(smb_rc);
	}
	while ((opt = FUNC1(argc, argv, "w:")) != EOF) {
		switch(opt){
		    case 'w':
			FUNC7(ctx, optarg);
			break;
		    default:
			FUNC3();
			/*NOTREACHED*/
		}
	}
	if (optind >= argc)
		FUNC3();
	if (FUNC6(ctx) != 0)
		FUNC0(1);
	hostname = argv[argc - 1];
/*	printf("Looking for %s...\n", hostname);*/
	error = FUNC8(hostname, ctx, &sap);
	if (error) {
		FUNC11("unable to resolve %s", error, hostname);
		FUNC0(1);
	}
	FUNC9("Got response from %s\n", FUNC2(ctx->nb_lastns.sin_addr));
	FUNC9("IP address of %s: %s\n", hostname, FUNC2(((struct sockaddr_in*)sap)->sin_addr));
	return 0;
}