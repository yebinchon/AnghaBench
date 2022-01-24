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
typedef  int /*<<< orphan*/  MINT ;
typedef  int /*<<< orphan*/  IdeaData ;
typedef  int /*<<< orphan*/  DesData ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* HEXMODULUS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 

void
FUNC7(char *xsecret, char *xpublic, IdeaData *ideakey, DesData *deskey)
{
        MINT *public;
        MINT *secret;
        MINT *common;
	MINT *modulus = FUNC6(HEXMODULUS);

        public = FUNC6(xpublic);
        secret = FUNC6(xsecret);
        common = FUNC3(0);
        FUNC5(public, secret, modulus, common);
        FUNC1(common, deskey);
        FUNC2(common, ideakey);
	FUNC0(deskey);
        FUNC4(common);
        FUNC4(secret);
        FUNC4(public);
	FUNC4(modulus);
}