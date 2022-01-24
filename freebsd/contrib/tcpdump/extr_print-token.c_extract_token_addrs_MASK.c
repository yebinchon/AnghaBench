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
struct token_header {scalar_t__ token_shost; scalar_t__ token_dhost; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,int) ; 

__attribute__((used)) static inline void
FUNC1(const struct token_header *trp, char *fsrc, char *fdst)
{
	FUNC0(fdst, (const char *)trp->token_dhost, 6);
	FUNC0(fsrc, (const char *)trp->token_shost, 6);
}