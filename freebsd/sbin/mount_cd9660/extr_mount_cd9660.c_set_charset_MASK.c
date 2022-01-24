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
struct iovec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENCODING_UNICODE ; 
 int /*<<< orphan*/  ICONV_CSNMAXLEN ; 
 int /*<<< orphan*/  KICONV_VENDOR_MICSFT ; 
 int /*<<< orphan*/  FUNC0 (struct iovec**,int*,char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(struct iovec **iov, int *iovlen, const char *localcs)
{
	int error;
	char *cs_disk;	/* disk charset for Joliet cs conversion */
	char *cs_local;	/* local charset for Joliet cs conversion */

	cs_disk = NULL;
	cs_local = NULL;

	if (FUNC6("cd9660_iconv") < 0)
		if (FUNC4("cd9660_iconv") < 0 || FUNC6("cd9660_iconv") < 0) {
			FUNC8( "cannot find or load \"cd9660_iconv\" kernel module");
			return (-1);
		}

	if ((cs_disk = FUNC5(ICONV_CSNMAXLEN)) == NULL)
		return (-1);
	if ((cs_local = FUNC5(ICONV_CSNMAXLEN)) == NULL) {
		FUNC1(cs_disk);
		return (-1);
	}
	FUNC7(cs_disk, ENCODING_UNICODE, ICONV_CSNMAXLEN);
	FUNC7(cs_local, FUNC3(localcs, KICONV_VENDOR_MICSFT),
	    ICONV_CSNMAXLEN);
	error = FUNC2(cs_disk, cs_local);
	if (error)
		return (-1);
	
	FUNC0(iov, iovlen, "cs_disk", cs_disk, (size_t)-1);
	FUNC0(iov, iovlen, "cs_local", cs_local, (size_t)-1);

	return (0);
}