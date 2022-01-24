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
typedef  int u8 ;
struct sae_data {TYPE_1__* tmp; } ;
struct TYPE_2__ {char* pw_id; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int WLAN_STATUS_SUCCESS ; 
 int WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER ; 
 int WLAN_STATUS_UNSPECIFIED_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int const) ; 
 scalar_t__ FUNC2 (char*,int const*,int const) ; 
 int /*<<< orphan*/  FUNC3 (char*,int const*,int const) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int const*,int const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,char*,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static int FUNC9(struct sae_data *sae,
					 const u8 *pos, const u8 *end)
{
	FUNC6(MSG_DEBUG, "SAE: Possible elements at the end of the frame",
		    pos, end - pos);
	if (!FUNC5(pos, end)) {
		if (sae->tmp->pw_id) {
			FUNC8(MSG_DEBUG,
				   "SAE: No Password Identifier included, but expected one (%s)",
				   sae->tmp->pw_id);
			return WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER;
		}
		FUNC0(sae->tmp->pw_id);
		sae->tmp->pw_id = NULL;
		return WLAN_STATUS_SUCCESS; /* No Password Identifier */
	}

	if (sae->tmp->pw_id &&
	    (pos[1] - 1 != (int) FUNC4(sae->tmp->pw_id) ||
	     FUNC2(sae->tmp->pw_id, pos + 3, pos[1] - 1) != 0)) {
		FUNC8(MSG_DEBUG,
			   "SAE: The included Password Identifier does not match the expected one (%s)",
			   sae->tmp->pw_id);
		return WLAN_STATUS_UNKNOWN_PASSWORD_IDENTIFIER;
	}

	FUNC0(sae->tmp->pw_id);
	sae->tmp->pw_id = FUNC1(pos[1]);
	if (!sae->tmp->pw_id)
		return WLAN_STATUS_UNSPECIFIED_FAILURE;
	FUNC3(sae->tmp->pw_id, pos + 3, pos[1] - 1);
	sae->tmp->pw_id[pos[1] - 1] = '\0';
	FUNC7(MSG_DEBUG, "SAE: Received Password Identifier",
			  sae->tmp->pw_id, pos[1] -  1);
	return WLAN_STATUS_SUCCESS;
}