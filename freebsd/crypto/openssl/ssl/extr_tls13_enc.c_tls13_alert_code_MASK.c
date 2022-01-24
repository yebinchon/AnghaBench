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
 int SSL_AD_CERTIFICATE_REQUIRED ; 
 int SSL_AD_MISSING_EXTENSION ; 
 int FUNC0 (int) ; 

int FUNC1(int code)
{
    /* There are 2 additional alerts in TLSv1.3 compared to TLSv1.2 */
    if (code == SSL_AD_MISSING_EXTENSION || code == SSL_AD_CERTIFICATE_REQUIRED)
        return code;

    return FUNC0(code);
}