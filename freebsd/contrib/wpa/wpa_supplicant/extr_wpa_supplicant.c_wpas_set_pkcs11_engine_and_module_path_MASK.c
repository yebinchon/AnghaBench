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
struct wpa_supplicant {int /*<<< orphan*/ * eapol; int /*<<< orphan*/  wpa; TYPE_1__* conf; } ;
struct TYPE_2__ {char* pkcs11_engine_path; char* pkcs11_module_path; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct wpa_supplicant*) ; 

int FUNC5(struct wpa_supplicant *wpa_s,
					   const char *pkcs11_engine_path,
					   const char *pkcs11_module_path)
{
	char *pkcs11_engine_path_copy = NULL;
	char *pkcs11_module_path_copy = NULL;

	if (pkcs11_engine_path != NULL) {
		pkcs11_engine_path_copy = FUNC2(pkcs11_engine_path);
		if (pkcs11_engine_path_copy == NULL)
			return -1;
	}
	if (pkcs11_module_path != NULL) {
		pkcs11_module_path_copy = FUNC2(pkcs11_module_path);
		if (pkcs11_module_path_copy == NULL) {
			FUNC1(pkcs11_engine_path_copy);
			return -1;
		}
	}

	FUNC1(wpa_s->conf->pkcs11_engine_path);
	FUNC1(wpa_s->conf->pkcs11_module_path);
	wpa_s->conf->pkcs11_engine_path = pkcs11_engine_path_copy;
	wpa_s->conf->pkcs11_module_path = pkcs11_module_path_copy;

	FUNC3(wpa_s->wpa, NULL);
	FUNC0(wpa_s->eapol);
	wpa_s->eapol = NULL;
	if (FUNC4(wpa_s)) {
		/* Error -> Reset paths to the default value (NULL) once. */
		if (pkcs11_engine_path != NULL && pkcs11_module_path != NULL)
			FUNC5(wpa_s, NULL,
							       NULL);

		return -1;
	}
	FUNC3(wpa_s->wpa, wpa_s->eapol);

	return 0;
}