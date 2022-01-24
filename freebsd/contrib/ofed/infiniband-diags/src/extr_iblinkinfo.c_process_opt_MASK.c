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
typedef  int /*<<< orphan*/  uint64_t ;
struct ibnd_config {void* max_smps; void* max_hops; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_FLAG_LID ; 
 int /*<<< orphan*/  DIFF_FLAG_NODE_DESCRIPTION ; 
 int /*<<< orphan*/  DIFF_FLAG_PORT_CONNECTION ; 
 int /*<<< orphan*/  DIFF_FLAG_PORT_STATE ; 
 int /*<<< orphan*/  IB_NODE_CA ; 
 int /*<<< orphan*/  IB_NODE_SWITCH ; 
 int add_sw_settings ; 
 int all ; 
 void* diff_cache_file ; 
 int /*<<< orphan*/  diffcheck_flags ; 
 int down_links_only ; 
 void* dr_path ; 
 void* filterdownports_cache_file ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  guid ; 
 char* guid_str ; 
 int line_mode ; 
 void* load_cache_file ; 
 void* node_name_map_file ; 
 int only_flag ; 
 int /*<<< orphan*/  only_type ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 void* FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 void* FUNC4 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(void *context, int ch, char *optarg)
{
	struct ibnd_config *cfg = context;
	char *p;

	switch (ch) {
	case 1:
		node_name_map_file = FUNC2(optarg);
		break;
	case 2:
		load_cache_file = FUNC2(optarg);
		break;
	case 3:
		diff_cache_file = FUNC2(optarg);
		break;
	case 4:
		diffcheck_flags = 0;
		p = FUNC3(optarg, ",");
		while (p) {
			if (!FUNC1(p, "port"))
				diffcheck_flags |= DIFF_FLAG_PORT_CONNECTION;
			else if (!FUNC1(p, "state"))
				diffcheck_flags |= DIFF_FLAG_PORT_STATE;
			else if (!FUNC1(p, "lid"))
				diffcheck_flags |= DIFF_FLAG_LID;
			else if (!FUNC1(p, "nodedesc"))
				diffcheck_flags |= DIFF_FLAG_NODE_DESCRIPTION;
			else {
				FUNC0(stderr, "invalid diff check key: %s\n",
					p);
				return -1;
			}
			p = FUNC3(NULL, ",");
		}
		break;
	case 5:
		filterdownports_cache_file = FUNC2(optarg);
		break;
	case 6:
		only_flag = 1;
		only_type = IB_NODE_SWITCH;
		break;
	case 7:
		only_flag = 1;
		only_type = IB_NODE_CA;
		break;
	case 'S':
	case 'G':
		guid_str = optarg;
		guid = (uint64_t) FUNC5(guid_str, 0, 0);
		break;
	case 'D':
		dr_path = FUNC2(optarg);
		break;
	case 'a':
		all = 1;
		break;
	case 'n':
		cfg->max_hops = FUNC4(optarg, NULL, 0);
		break;
	case 'd':
		down_links_only = 1;
		break;
	case 'l':
		line_mode = 1;
		break;
	case 'p':
		add_sw_settings = 1;
		break;
	case 'R':		/* nop */
		break;
	case 'o':
		cfg->max_smps = FUNC4(optarg, NULL, 0);
		break;
	default:
		return -1;
	}

	return 0;
}