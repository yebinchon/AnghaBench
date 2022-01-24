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
typedef  int /*<<< orphan*/  YYSTYPE ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int YYNTOKENS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/  const* const) ; 
 int /*<<< orphan*/ * yytname ; 

__attribute__((used)) static void
FUNC2 (FILE *yyoutput, int yytype, YYSTYPE const * const yyvaluep)
{
  FUNC0 (yyoutput, "%s %s (",
             yytype < YYNTOKENS ? "token" : "nterm", yytname[yytype]);

  FUNC1 (yyoutput, yytype, yyvaluep);
  FUNC0 (yyoutput, ")");
}