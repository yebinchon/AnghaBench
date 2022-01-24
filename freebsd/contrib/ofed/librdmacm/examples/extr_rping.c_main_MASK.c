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
struct sockaddr {int dummy; } ;
struct rping_cb {int server; int size; int count; int cm_id; int /*<<< orphan*/  cm_channel; int /*<<< orphan*/  cmthread; int /*<<< orphan*/  validate; int /*<<< orphan*/  verbose; void* port; int /*<<< orphan*/  ssource; int /*<<< orphan*/  sin; int /*<<< orphan*/  sem; int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  IDLE ; 
 int /*<<< orphan*/  RDMA_PS_TCP ; 
 int /*<<< orphan*/  RPING_BUFSIZE ; 
 int RPING_MIN_BUFSIZE ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  cm_thread ; 
 int /*<<< orphan*/  debug ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  FUNC3 (struct rping_cb*) ; 
 int FUNC4 (char*,struct sockaddr*) ; 
 int FUNC5 (int,char**,char*) ; 
 void* FUNC6 (int) ; 
 struct rping_cb* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct rping_cb*,int /*<<< orphan*/ ,int) ; 
 char* optarg ; 
 scalar_t__ opterr ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ,int*,struct rping_cb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int) ; 
 int FUNC15 (struct rping_cb*) ; 
 int FUNC16 (struct rping_cb*) ; 
 int FUNC17 (struct rping_cb*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 

int FUNC20(int argc, char *argv[])
{
	struct rping_cb *cb;
	int op;
	int ret = 0;
	int persistent_server = 0;

	cb = FUNC7(sizeof(*cb));
	if (!cb)
		return -ENOMEM;

	FUNC8(cb, 0, sizeof(*cb));
	cb->server = -1;
	cb->state = IDLE;
	cb->size = 64;
	cb->port = FUNC6(7174);
	FUNC18(&cb->sem, 0, 0);

	/* initialize sockaddr structure with defaults */
	ret = FUNC4("0.0.0.0", (struct sockaddr *) &cb->sin);
	if (ret)
		goto out;

	opterr = 0;
	while ((op=FUNC5(argc, argv, "a:I:Pp:C:S:t:scvVd")) != -1) {
		switch (op) {
		case 'a':
			ret = FUNC4(optarg, (struct sockaddr *) &cb->sin);
			break;
		case 'I':
			ret = FUNC4(optarg, (struct sockaddr *) &cb->ssource);
			break;
		case 'P':
			persistent_server = 1;
			break;
		case 'p':
			cb->port = FUNC6(FUNC1(optarg));
			FUNC0("port %d\n", (int) FUNC1(optarg));
			break;
		case 's':
			cb->server = 1;
			FUNC0("server\n");
			break;
		case 'c':
			cb->server = 0;
			FUNC0("client\n");
			break;
		case 'S':
			cb->size = FUNC1(optarg);
			if ((cb->size < RPING_MIN_BUFSIZE) ||
			    (cb->size > (RPING_BUFSIZE - 1))) {
				FUNC2(stderr, "Invalid size %d "
				       "(valid range is %d to %d)\n",
				       cb->size, RPING_MIN_BUFSIZE, RPING_BUFSIZE);
				ret = EINVAL;
			} else
				FUNC0("size %d\n", (int) FUNC1(optarg));
			break;
		case 'C':
			cb->count = FUNC1(optarg);
			if (cb->count < 0) {
				FUNC2(stderr, "Invalid count %d\n",
					cb->count);
				ret = EINVAL;
			} else
				FUNC0("count %d\n", (int) cb->count);
			break;
		case 'v':
			cb->verbose++;
			FUNC0("verbose\n");
			break;
		case 'V':
			cb->validate++;
			FUNC0("validate data\n");
			break;
		case 'd':
			debug++;
			break;
		default:
			FUNC19("rping");
			ret = EINVAL;
			goto out;
		}
	}
	if (ret)
		goto out;

	if (cb->server == -1) {
		FUNC19("rping");
		ret = EINVAL;
		goto out;
	}

	cb->cm_channel = FUNC11();
	if (!cb->cm_channel) {
		FUNC9("rdma_create_event_channel");
		ret = errno;
		goto out;
	}

	ret = FUNC12(cb->cm_channel, &cb->cm_id, cb, RDMA_PS_TCP);
	if (ret) {
		FUNC9("rdma_create_id");
		goto out2;
	}
	FUNC0("created cm_id %p\n", cb->cm_id);

	ret = FUNC10(&cb->cmthread, NULL, cm_thread, cb);
	if (ret) {
		FUNC9("pthread_create");
		goto out2;
	}

	if (cb->server) {
		if (persistent_server)
			ret = FUNC16(cb);
		else
			ret = FUNC17(cb);
	} else {
		ret = FUNC15(cb);
	}

	FUNC0("destroy cm_id %p\n", cb->cm_id);
	FUNC14(cb->cm_id);
out2:
	FUNC13(cb->cm_channel);
out:
	FUNC3(cb);
	return ret;
}