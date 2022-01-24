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
struct config_file {int /*<<< orphan*/  remote_control_enable; } ;
typedef  int /*<<< orphan*/  SSL_CTX ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 struct config_file* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct config_file*) ; 
 int /*<<< orphan*/  FUNC6 (struct config_file*,char const*,int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,struct config_file*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int,int,int,char**) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/ * FUNC11 (struct config_file*) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (struct config_file*) ; 

__attribute__((used)) static int
FUNC15(const char* cfgfile, char* svr, int quiet, int argc, char* argv[])
{
	struct config_file* cfg;
	int fd, ret;
	SSL_CTX* ctx;
	SSL* ssl;

	/* read config */
	if(!(cfg = FUNC4()))
		FUNC8("out of memory");
	if(!FUNC6(cfg, cfgfile, NULL))
		FUNC8("could not read config file");
	if(!cfg->remote_control_enable)
		FUNC10("control-enable is 'no' in the config file.");
#ifdef UB_ON_WINDOWS
	w_config_adjust_directory(cfg);
#endif
	ctx = FUNC11(cfg);

	/* contact server */
	fd = FUNC7(svr, cfg, argc>0&&FUNC13(argv[0],"status")==0);
	ssl = FUNC12(ctx, fd);

	/* send command */
	ret = FUNC9(ssl, fd, quiet, argc, argv);

	if(ssl) FUNC1(ssl);
#ifndef USE_WINSOCK
	FUNC2(fd);
#else
	closesocket(fd);
#endif
	if(ctx) FUNC0(ctx);
	FUNC5(cfg);
	return ret;
}