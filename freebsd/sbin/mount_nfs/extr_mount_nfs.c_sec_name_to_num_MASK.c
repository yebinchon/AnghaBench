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

/* Variables and functions */
 int AUTH_SYS ; 
 int RPCSEC_GSS_KRB5 ; 
 int RPCSEC_GSS_KRB5I ; 
 int RPCSEC_GSS_KRB5P ; 
 int /*<<< orphan*/  FUNC0 (char const*,char*) ; 

__attribute__((used)) static int
FUNC1(const char *sec)
{
	if (!FUNC0(sec, "krb5"))
		return (RPCSEC_GSS_KRB5);
	if (!FUNC0(sec, "krb5i"))
		return (RPCSEC_GSS_KRB5I);
	if (!FUNC0(sec, "krb5p"))
		return (RPCSEC_GSS_KRB5P);
	if (!FUNC0(sec, "sys"))
		return (AUTH_SYS);
	return (-1);
}