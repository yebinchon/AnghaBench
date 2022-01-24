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
typedef  int /*<<< orphan*/  u8 ;
struct sockaddr_un {scalar_t__ sun_path; void* sun_family; } ;
struct sockaddr {int dummy; } ;
struct eap_sim_db_data {int sock; int /*<<< orphan*/ * local_sock; scalar_t__ fname; } ;
typedef  int /*<<< orphan*/  addr ;

/* Variables and functions */
 void* AF_UNIX ; 
 int /*<<< orphan*/  MSG_INFO ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 scalar_t__ FUNC0 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,struct sockaddr*,int) ; 
 int /*<<< orphan*/  eap_sim_db_receive ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct eap_sim_db_data*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct sockaddr_un*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__,char*,int) ; 
 int FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC17(struct eap_sim_db_data *data)
{
	struct sockaddr_un addr;
	static int counter = 0;

	if (FUNC11(data->fname, "unix:", 5) != 0)
		return -1;

	data->sock = FUNC12(PF_UNIX, SOCK_DGRAM, 0);
	if (data->sock < 0) {
		FUNC16(MSG_INFO, "socket(eap_sim_db): %s", FUNC13(errno));
		return -1;
	}

	FUNC6(&addr, 0, sizeof(addr));
	addr.sun_family = AF_UNIX;
	FUNC7(addr.sun_path, sizeof(addr.sun_path),
		    "/tmp/eap_sim_db_%d-%d", FUNC4(), counter++);
	FUNC5(data->local_sock);
	data->local_sock = FUNC8(addr.sun_path);
	if (data->local_sock == NULL) {
		FUNC1(data->sock);
		data->sock = -1;
		return -1;
	}
	if (FUNC0(data->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC16(MSG_INFO, "bind(eap_sim_db): %s", FUNC13(errno));
		FUNC1(data->sock);
		data->sock = -1;
		return -1;
	}

	FUNC6(&addr, 0, sizeof(addr));
	addr.sun_family = AF_UNIX;
	FUNC9(addr.sun_path, data->fname + 5, sizeof(addr.sun_path));
	if (FUNC2(data->sock, (struct sockaddr *) &addr, sizeof(addr)) < 0) {
		FUNC16(MSG_INFO, "connect(eap_sim_db): %s",
			   FUNC13(errno));
		FUNC15(MSG_INFO, "HLR/AuC GW socket",
				  (u8 *) addr.sun_path,
				  FUNC10(addr.sun_path));
		FUNC1(data->sock);
		data->sock = -1;
		FUNC14(data->local_sock);
		FUNC5(data->local_sock);
		data->local_sock = NULL;
		return -1;
	}

	FUNC3(data->sock, eap_sim_db_receive, data, NULL);

	return 0;
}