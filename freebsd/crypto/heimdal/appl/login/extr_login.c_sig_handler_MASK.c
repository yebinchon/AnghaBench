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
typedef  int /*<<< orphan*/  RETSIGTYPE ;

/* Variables and functions */
 int SIGALRM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int login_timeout ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static RETSIGTYPE
FUNC2(int sig)
{
    if (sig == SIGALRM)
         FUNC1(stderr, "Login timed out after %d seconds\n",
                login_timeout);
      else
         FUNC1(stderr, "Login received signal, exiting\n");
    FUNC0(0);
}