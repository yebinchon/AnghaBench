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
typedef  char u8 ;
struct ieee802_11_elems {int mesh_id_len; int mesh_config_len; int supp_rates_len; int ext_supp_rates_len; int* supp_rates; int* ext_supp_rates; int /*<<< orphan*/ * mesh_config; int /*<<< orphan*/  mesh_id; } ;

/* Variables and functions */
 scalar_t__ ParseFailed ; 
 scalar_t__ FUNC0 (char const*,size_t,struct ieee802_11_elems*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC4 (char*,int,char*,...) ; 
 scalar_t__ FUNC5 (int,int) ; 

__attribute__((used)) static int FUNC6(const u8 *ies, size_t ies_len, char *buf, char *end)
{
	struct ieee802_11_elems elems;
	char *mesh_id, *pos = buf;
	u8 *bss_basic_rate_set;
	int bss_basic_rate_set_len, ret, i;

	if (FUNC0(ies, ies_len, &elems, 0) == ParseFailed)
		return -1;

	if (elems.mesh_id_len < 1)
		return 0;

	mesh_id = FUNC2(elems.mesh_id_len + 1);
	if (mesh_id == NULL)
		return -1;

	FUNC3(mesh_id, elems.mesh_id, elems.mesh_id_len);
	mesh_id[elems.mesh_id_len] = '\0';
	ret = FUNC4(pos, end - pos, "mesh_id=%s\n", mesh_id);
	FUNC1(mesh_id);
	if (FUNC5(end - pos, ret))
		return pos - buf;
	pos += ret;

	if (elems.mesh_config_len > 6) {
		ret = FUNC4(pos, end - pos,
				  "active_path_selection_protocol_id=0x%02x\n"
				  "active_path_selection_metric_id=0x%02x\n"
				  "congestion_control_mode_id=0x%02x\n"
				  "synchronization_method_id=0x%02x\n"
				  "authentication_protocol_id=0x%02x\n"
				  "mesh_formation_info=0x%02x\n"
				  "mesh_capability=0x%02x\n",
				  elems.mesh_config[0], elems.mesh_config[1],
				  elems.mesh_config[2], elems.mesh_config[3],
				  elems.mesh_config[4], elems.mesh_config[5],
				  elems.mesh_config[6]);
		if (FUNC5(end - pos, ret))
			return pos - buf;
		pos += ret;
	}

	bss_basic_rate_set = FUNC2(elems.supp_rates_len +
		elems.ext_supp_rates_len);
	if (bss_basic_rate_set == NULL)
		return -1;

	bss_basic_rate_set_len = 0;
	for (i = 0; i < elems.supp_rates_len; i++) {
		if (elems.supp_rates[i] & 0x80) {
			bss_basic_rate_set[bss_basic_rate_set_len++] =
				(elems.supp_rates[i] & 0x7f) * 5;
		}
	}
	for (i = 0; i < elems.ext_supp_rates_len; i++) {
		if (elems.ext_supp_rates[i] & 0x80) {
			bss_basic_rate_set[bss_basic_rate_set_len++] =
				(elems.ext_supp_rates[i] & 0x7f) * 5;
		}
	}
	if (bss_basic_rate_set_len > 0) {
		ret = FUNC4(pos, end - pos, "bss_basic_rate_set=%d",
				  bss_basic_rate_set[0]);
		if (FUNC5(end - pos, ret))
			goto fail;
		pos += ret;

		for (i = 1; i < bss_basic_rate_set_len; i++) {
			ret = FUNC4(pos, end - pos, " %d",
					  bss_basic_rate_set[i]);
			if (FUNC5(end - pos, ret))
				goto fail;
			pos += ret;
		}

		ret = FUNC4(pos, end - pos, "\n");
		if (FUNC5(end - pos, ret))
			goto fail;
		pos += ret;
	}
fail:
	FUNC1(bss_basic_rate_set);

	return pos - buf;
}