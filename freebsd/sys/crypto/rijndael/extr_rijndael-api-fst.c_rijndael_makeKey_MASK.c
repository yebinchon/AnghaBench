#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int keyLen; int /*<<< orphan*/  keyMaterial; int /*<<< orphan*/  ek; int /*<<< orphan*/  rk; int /*<<< orphan*/  Nr; scalar_t__ direction; } ;
typedef  TYPE_1__ keyInstance ;
typedef  scalar_t__ BYTE ;

/* Variables and functions */
 int BAD_KEY_DIR ; 
 int BAD_KEY_INSTANCE ; 
 int BAD_KEY_MAT ; 
 scalar_t__ DIR_DECRYPT ; 
 scalar_t__ DIR_ENCRYPT ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

int FUNC3(keyInstance *key, BYTE direction, int keyLen,
	const char *keyMaterial) {

	if (key == NULL) {
		return BAD_KEY_INSTANCE;
	}

	if ((direction == DIR_ENCRYPT) || (direction == DIR_DECRYPT)) {
		key->direction = direction;
	} else {
		return BAD_KEY_DIR;
	}

	if ((keyLen == 128) || (keyLen == 192) || (keyLen == 256)) {
		key->keyLen = keyLen;
	} else {
		return BAD_KEY_MAT;
	}

	if (keyMaterial != NULL) {
		FUNC0(key->keyMaterial, keyMaterial, keyLen/8);
	}

	/* initialize key schedule: */
	if (direction == DIR_ENCRYPT) {
		key->Nr = FUNC2(key->rk, key->keyMaterial, keyLen);
	} else {
		key->Nr = FUNC1(key->rk, key->keyMaterial, keyLen);
	}
	FUNC2(key->ek, key->keyMaterial, keyLen);
	return TRUE;
}