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
struct desparams {int /*<<< orphan*/  des_key; int /*<<< orphan*/  des_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DECRYPT ; 
 int DESERR_BADPARAM ; 
 int DESERR_HWERROR ; 
 int DESERR_NOHWDEVICE ; 
 int DESERR_NONE ; 
 unsigned int DES_DEVMASK ; 
 unsigned int DES_DIRMASK ; 
 unsigned int DES_ENCRYPT ; 
 unsigned int DES_MAXDATA ; 
 int DES_SW ; 
 int /*<<< orphan*/  ENCRYPT ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int,struct desparams*) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned int,struct desparams*) ; 

__attribute__((used)) static int
FUNC3(char *key, char *buf, unsigned len, unsigned mode,
    struct desparams *desp)
{
	int desdev;

	if ((len % 8) != 0 || len > DES_MAXDATA) {
		return(DESERR_BADPARAM);
	}
	desp->des_dir =
		((mode & DES_DIRMASK) == DES_ENCRYPT) ? ENCRYPT : DECRYPT;

	desdev = mode & DES_DEVMASK;
	FUNC0(key, desp->des_key);
	/* 
	 * software
	 */
	if (&__des_crypt_LOCAL != NULL) {
		if (!FUNC1(buf, len, desp)) {
			return (DESERR_HWERROR);
		}
	} else {
		if (!FUNC2(buf, len, desp)) {
			return (DESERR_HWERROR);
		}
	}
	return(desdev == DES_SW ? DESERR_NONE : DESERR_NOHWDEVICE);
}