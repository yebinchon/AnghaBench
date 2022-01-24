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
struct tpc_token {struct tpc_token* params; } ;
struct ctl_softc {int /*<<< orphan*/  tpc_lock; int /*<<< orphan*/  tpc_tokens; int /*<<< orphan*/  tpc_timeout; } ;

/* Variables and functions */
 int /*<<< orphan*/  M_CTL ; 
 struct tpc_token* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct tpc_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct tpc_token*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  links ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void
FUNC7(struct ctl_softc *softc)
{
	struct tpc_token *token;

	FUNC2(&softc->tpc_timeout);

	/* Free ROD tokens. */
	FUNC5(&softc->tpc_lock);
	while ((token = FUNC0(&softc->tpc_tokens)) != NULL) {
		FUNC1(&softc->tpc_tokens, token, links);
		FUNC3(token->params, M_CTL);
		FUNC3(token, M_CTL);
	}
	FUNC6(&softc->tpc_lock);
	FUNC4(&softc->tpc_lock);
}