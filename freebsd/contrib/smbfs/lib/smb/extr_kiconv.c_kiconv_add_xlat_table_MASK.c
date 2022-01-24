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
typedef  int /*<<< orphan*/  u_char ;
struct iconv_add_out {int dummy; } ;
struct iconv_add_in {int ia_datalen; int /*<<< orphan*/  const* ia_data; int /*<<< orphan*/  ia_to; int /*<<< orphan*/  ia_from; int /*<<< orphan*/  ia_converter; int /*<<< orphan*/  ia_version; } ;
typedef  int /*<<< orphan*/  dout ;
typedef  int /*<<< orphan*/  din ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  ICONV_ADD_VER ; 
 scalar_t__ ICONV_CSNMAXLEN ; 
 int /*<<< orphan*/  eff_uid ; 
 int errno ; 
 int /*<<< orphan*/  real_uid ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ FUNC2 (char const*) ; 
 int FUNC3 (char*,struct iconv_add_out*,size_t*,struct iconv_add_in*,int) ; 

int
FUNC4(const char *to, const char *from, const u_char *table)
{
	struct iconv_add_in din;
	struct iconv_add_out dout;
	size_t olen;

	if (FUNC2(from) >= ICONV_CSNMAXLEN || FUNC2(to) >= ICONV_CSNMAXLEN)
		return EINVAL;
	din.ia_version = ICONV_ADD_VER;
	FUNC1(din.ia_converter, "xlat");
	FUNC1(din.ia_from, from);
	FUNC1(din.ia_to, to);
	din.ia_data = table;
	din.ia_datalen = 256;
	olen = sizeof(dout);
#ifdef APPLE
        seteuid(eff_uid); /* restore setuid root briefly */
	if (sysctlbyname("net.smb.fs.iconv.add", &dout, &olen, &din, sizeof(din)) == -1) {
        	seteuid(real_uid); /* and back to real user */
		return errno;
	}
        seteuid(real_uid); /* and back to real user */
#else
	if (FUNC3("kern.iconv.add", &dout, &olen, &din, sizeof(din)) == -1)
		return errno;
#endif
	return 0;
}