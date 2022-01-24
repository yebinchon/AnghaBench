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
typedef  int /*<<< orphan*/  objbuf ;
typedef  int /*<<< orphan*/  BIO ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,char const*,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static int FUNC4(BIO *out, const ASN1_OBJECT *oid)
{
    char objbuf[80];
    const char *ln;
    ln = FUNC1(FUNC2(oid));
    if (!ln)
        ln = "";
    FUNC3(objbuf, sizeof(objbuf), oid, 1);
    if (FUNC0(out, "%s (%s)", ln, objbuf) <= 0)
        return 0;
    return 1;
}