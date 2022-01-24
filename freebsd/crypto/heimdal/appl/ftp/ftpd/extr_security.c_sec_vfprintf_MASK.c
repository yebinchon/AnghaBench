#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  va_list ;
struct TYPE_2__ {int (* encode ) (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,void**) ;} ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  app_data ; 
 scalar_t__ FUNC0 (void*,int,char**) ; 
 scalar_t__ command_prot ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* mech ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ prot_confidential ; 
 scalar_t__ prot_private ; 
 scalar_t__ prot_safe ; 
 int /*<<< orphan*/  sec_complete ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,scalar_t__,void**) ; 
 int FUNC6 (char**,char const*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 

int
FUNC8(FILE *f, const char *fmt, va_list ap)
{
    char *buf;
    void *enc;
    int len;
    if(!sec_complete)
	return FUNC7(f, fmt, ap);

    if (FUNC6(&buf, fmt, ap) == -1) {
	FUNC3("Failed to allocate command.\n");
	return -1;
    }
    len = (*mech->encode)(app_data, buf, FUNC4(buf), command_prot, &enc);
    FUNC2(buf);
    if(len < 0) {
	FUNC3("Failed to encode command.\n");
	return -1;
    }
    if(FUNC0(enc, len, &buf) < 0){
	FUNC2(enc);
	FUNC3("Out of memory base64-encoding.\n");
	return -1;
    }
    FUNC2(enc);
#ifdef FTP_SERVER
    if(command_prot == prot_safe)
	fprintf(f, "631 %s\r\n", buf);
    else if(command_prot == prot_private)
	fprintf(f, "632 %s\r\n", buf);
    else if(command_prot == prot_confidential)
	fprintf(f, "633 %s\r\n", buf);
#else
    if(command_prot == prot_safe)
	FUNC1(f, "MIC %s", buf);
    else if(command_prot == prot_private)
	FUNC1(f, "ENC %s", buf);
    else if(command_prot == prot_confidential)
	FUNC1(f, "CONF %s", buf);
#endif
    FUNC2(buf);
    return 0;
}