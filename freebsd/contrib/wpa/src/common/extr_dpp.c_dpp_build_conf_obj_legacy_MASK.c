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
struct wpabuf {int dummy; } ;
struct dpp_configuration {int /*<<< orphan*/  akm; } ;
struct dpp_authentication {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSG_DEBUG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct wpabuf* FUNC1 (struct dpp_authentication*,struct dpp_configuration*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct wpabuf*,struct dpp_configuration*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct wpabuf*) ; 
 int /*<<< orphan*/  FUNC6 (struct wpabuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct wpabuf*,char*) ; 

__attribute__((used)) static struct wpabuf *
FUNC8(struct dpp_authentication *auth, int ap,
			  struct dpp_configuration *conf)
{
	struct wpabuf *buf;

	buf = FUNC1(auth, conf, 1000);
	if (!buf)
		return NULL;

	FUNC6(buf, "\"cred\":{\"akm\":\"%s\",", FUNC0(conf->akm));
	FUNC2(buf, conf);
	FUNC7(buf, "}}");

	FUNC3(MSG_DEBUG, "DPP: Configuration Object (legacy)",
			      FUNC4(buf), FUNC5(buf));

	return buf;
}