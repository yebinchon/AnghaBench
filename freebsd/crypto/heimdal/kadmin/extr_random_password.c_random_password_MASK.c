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
typedef  int /*<<< orphan*/  newkey ;
typedef  int /*<<< orphan*/  OtpKey ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char**,int,char*,int,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void
FUNC8(char *pw, size_t len)
{
#ifdef OTP_STYLE
    {
	OtpKey newkey;

	krb5_generate_random_block(&newkey, sizeof(newkey));
	otp_print_stddict (newkey, pw, len);
	strlwr(pw);
    }
#else
    char *pass;
    FUNC1(&pass, 3,
		      "abcdefghijklmnopqrstuvwxyz", 7,
		      "ABCDEFGHIJKLMNOPQRSTUVWXYZ", 2,
		      "@$%&*()-+=:,/<>1234567890", 1);
    FUNC5(pw, pass, len);
    FUNC3(pass, 0, FUNC6(pass));
    FUNC0(pass);
#endif
}