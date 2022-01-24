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
struct preloaded_file {int /*<<< orphan*/  f_addr; } ;
struct fdt_header {int dummy; } ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct fdt_header*,int) ; 
 int FDT_ERR_NOTFOUND ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (struct fdt_header*) ; 
 int /*<<< orphan*/  FUNC3 (struct preloaded_file*) ; 
 struct preloaded_file* FUNC4 (char const*,char*,int) ; 

__attribute__((used)) static int
FUNC5(const char * filename)
{
	struct preloaded_file *bfp;
	struct fdt_header header;
	int err;

	FUNC1("fdt_load_dtb_overlay(%s)\n", filename);

	/* Attempt to load and validate a new dtb from a file. FDT_ERR_NOTFOUND
	 * is normally a libfdt error code, but libfdt would actually return
	 * -FDT_ERR_NOTFOUND. We re-purpose the error code here to convey a
	 * similar meaning: the file itself was not found, which can still be
	 * considered an error dealing with FDT pieces.
	 */
	if ((bfp = FUNC4(filename, "dtbo", 1)) == NULL)
		return (FDT_ERR_NOTFOUND);

	FUNC0(bfp->f_addr, &header, sizeof(header));
	err = FUNC2(&header);

	if (err < 0) {
		FUNC3(bfp);
		return (err);
	}

	return (0);
}