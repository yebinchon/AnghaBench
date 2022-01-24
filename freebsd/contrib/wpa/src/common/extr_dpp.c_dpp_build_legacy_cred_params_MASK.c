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
struct dpp_configuration {int /*<<< orphan*/  psk; scalar_t__ psk_set; scalar_t__ passphrase; } ;
typedef  int /*<<< orphan*/  psk ;
typedef  int /*<<< orphan*/  pass ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct wpabuf*,char*) ; 

__attribute__((used)) static void FUNC5(struct wpabuf *buf,
					 struct dpp_configuration *conf)
{
	if (conf->passphrase && FUNC2(conf->passphrase) < 64) {
		char pass[63 * 6 + 1];

		FUNC0(pass, sizeof(pass), conf->passphrase,
				   FUNC2(conf->passphrase));
		FUNC4(buf, "\"pass\":\"");
		FUNC4(buf, pass);
		FUNC4(buf, "\"");
		FUNC1(pass, 0, sizeof(pass));
	} else if (conf->psk_set) {
		char psk[2 * sizeof(conf->psk) + 1];

		FUNC3(psk, sizeof(psk),
				 conf->psk, sizeof(conf->psk));
		FUNC4(buf, "\"psk_hex\":\"");
		FUNC4(buf, psk);
		FUNC4(buf, "\"");
		FUNC1(psk, 0, sizeof(psk));
	}
}