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
struct browser_context {char* hover_link; int progress; char* title; int /*<<< orphan*/  win; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int,char*) ; 

__attribute__((used)) static void FUNC3(struct browser_context *ctx)
{
	char buf[100];

	if (ctx->hover_link) {
		FUNC1(FUNC0(ctx->win), ctx->hover_link);
		return;
	}

	if (ctx->progress == 100) {
		FUNC1(FUNC0(ctx->win),
				     ctx->title ? ctx->title :
				     "Hotspot 2.0 client");
		return;
	}

	FUNC2(buf, sizeof(buf), "[%d%%] %s", ctx->progress,
		 ctx->title ? ctx->title : "Hotspot 2.0 client");
	FUNC1(FUNC0(ctx->win), buf);
}