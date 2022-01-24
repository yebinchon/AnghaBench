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
struct sae_temporary_data {scalar_t__ prime_len; scalar_t__ order_len; int /*<<< orphan*/ * order_buf; int /*<<< orphan*/ * order; TYPE_1__* dh; int /*<<< orphan*/ * prime_buf; int /*<<< orphan*/ * prime; scalar_t__ ec; } ;
struct sae_data {int group; struct sae_temporary_data* tmp; } ;
struct TYPE_2__ {scalar_t__ prime_len; scalar_t__ order_len; int /*<<< orphan*/  order; int /*<<< orphan*/  prime; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 scalar_t__ SAE_MAX_PRIME_LEN ; 
 void* FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 struct sae_temporary_data* FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (struct sae_data*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 

int FUNC11(struct sae_data *sae, int group)
{
	struct sae_temporary_data *tmp;

#ifdef CONFIG_TESTING_OPTIONS
	/* Allow all groups for testing purposes in non-production builds. */
#else /* CONFIG_TESTING_OPTIONS */
	if (!FUNC7(group, 0)) {
		FUNC10(MSG_DEBUG, "SAE: Reject unsuitable group %d", group);
		return -1;
	}
#endif /* CONFIG_TESTING_OPTIONS */

	FUNC9(sae);
	tmp = sae->tmp = FUNC8(sizeof(*tmp));
	if (tmp == NULL)
		return -1;

	/* First, check if this is an ECC group */
	tmp->ec = FUNC3(group);
	if (tmp->ec) {
		FUNC10(MSG_DEBUG, "SAE: Selecting supported ECC group %d",
			   group);
		sae->group = group;
		tmp->prime_len = FUNC5(tmp->ec);
		tmp->prime = FUNC2(tmp->ec);
		tmp->order_len = FUNC4(tmp->ec);
		tmp->order = FUNC1(tmp->ec);
		return 0;
	}

	/* Not an ECC group, check FFC */
	tmp->dh = FUNC6(group);
	if (tmp->dh) {
		FUNC10(MSG_DEBUG, "SAE: Selecting supported FFC group %d",
			   group);
		sae->group = group;
		tmp->prime_len = tmp->dh->prime_len;
		if (tmp->prime_len > SAE_MAX_PRIME_LEN) {
			FUNC9(sae);
			return -1;
		}

		tmp->prime_buf = FUNC0(tmp->dh->prime,
							tmp->prime_len);
		if (tmp->prime_buf == NULL) {
			FUNC9(sae);
			return -1;
		}
		tmp->prime = tmp->prime_buf;

		tmp->order_len = tmp->dh->order_len;
		tmp->order_buf = FUNC0(tmp->dh->order,
							tmp->dh->order_len);
		if (tmp->order_buf == NULL) {
			FUNC9(sae);
			return -1;
		}
		tmp->order = tmp->order_buf;

		return 0;
	}

	/* Unsupported group */
	FUNC10(MSG_DEBUG,
		   "SAE: Group %d not supported by the crypto library", group);
	return -1;
}