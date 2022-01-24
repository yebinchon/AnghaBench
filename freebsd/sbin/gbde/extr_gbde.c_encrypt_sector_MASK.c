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
typedef  int /*<<< orphan*/  keyInstance ;
typedef  int /*<<< orphan*/  cipherInstance ;

/* Variables and functions */
 int /*<<< orphan*/  DIR_ENCRYPT ; 
 int /*<<< orphan*/  MODE_CBC ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,int,void*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,void*) ; 

__attribute__((used)) static void
FUNC4(void *d, int len, int klen, void *key)
{
	keyInstance ki;
	cipherInstance ci;
	int error;

	error = FUNC2(&ci, MODE_CBC, NULL);
	if (error <= 0)
		FUNC0(1, "rijndael_cipherInit=%d", error);
	error = FUNC3(&ki, DIR_ENCRYPT, klen, key);
	if (error <= 0)
		FUNC0(1, "rijndael_makeKeY=%d", error);
	error = FUNC1(&ci, &ki, d, len * 8, d);
	if (error <= 0)
		FUNC0(1, "rijndael_blockEncrypt=%d", error);
}