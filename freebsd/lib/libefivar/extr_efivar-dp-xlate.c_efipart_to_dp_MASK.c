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
struct gmesh {int dummy; } ;
typedef  int /*<<< orphan*/  efidp ;

/* Variables and functions */
 int ENOENT ; 
 int FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (struct gmesh*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static int
FUNC4(struct gmesh *mesh, char *path, efidp *dp)
{
	char *efimedia = NULL;
	int rv;

	efimedia = FUNC2(mesh);
#ifdef notyet
	if (efimedia == NULL)
		efimedia = find_efi_on_zfsroot(dev);
#endif
	if (efimedia == NULL) {
		rv = ENOENT;
		goto errout;
	}

	rv = FUNC0(efimedia, path + 1, dp);
errout:
	FUNC3(efimedia);

	return rv;
}