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
struct browser_context {int success; int /*<<< orphan*/  title; int /*<<< orphan*/  hover_link; int /*<<< orphan*/ * win; } ;
typedef  int /*<<< orphan*/  ctx ;
typedef  int /*<<< orphan*/  WebKitWebView ;
typedef  int /*<<< orphan*/  WebKitWebSettings ;
typedef  int /*<<< orphan*/  SoupSession ;
typedef  int /*<<< orphan*/  GtkWidget ;

/* Variables and functions */
 char* FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_POLICY_NEVER ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GTK_WINDOW_TOPLEVEL ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* TRUE ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct browser_context*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/ * FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC23 (struct browser_context*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  view_cb_download_requested ; 
 int /*<<< orphan*/  view_cb_hovering_over_link ; 
 int /*<<< orphan*/  view_cb_mime_type_policy_decision ; 
 int /*<<< orphan*/  view_cb_notify_load_status ; 
 int /*<<< orphan*/  view_cb_notify_progress ; 
 int /*<<< orphan*/  view_cb_resource_request_starting ; 
 int /*<<< orphan*/  view_cb_title_changed ; 
 int /*<<< orphan*/ * FUNC24 () ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC27 () ; 
 int /*<<< orphan*/  win_cb_destroy ; 

int FUNC28(const char *url)
{
	GtkWidget *scroll;
	SoupSession *s;
	WebKitWebView *view;
	WebKitWebSettings *settings;
	struct browser_context ctx;

	FUNC23(&ctx, 0, sizeof(ctx));
	if (!FUNC12(NULL, NULL))
		return -1;

	s = FUNC24();
	FUNC8(FUNC5(s), "ssl-ca-file",
		     "/etc/ssl/certs/ca-certificates.crt", NULL);
	FUNC8(FUNC5(s), "ssl-strict", FALSE, NULL);

	ctx.win = FUNC20(GTK_WINDOW_TOPLEVEL);
	FUNC22(FUNC3(ctx.win), "Hotspot 2.0 client");
	FUNC21(FUNC3(ctx.win), 800, 600);

	scroll = FUNC15(NULL, NULL);
	FUNC16(FUNC1(scroll),
				       GTK_POLICY_NEVER, GTK_POLICY_NEVER);

	FUNC9(FUNC5(ctx.win), "destroy",
			 FUNC4(win_cb_destroy), &ctx);

	view = FUNC6(FUNC27());
	FUNC9(FUNC5(view), "notify::progress",
			 FUNC4(view_cb_notify_progress), &ctx);
	FUNC9(FUNC5(view), "notify::load-status",
			 FUNC4(view_cb_notify_load_status), &ctx);
	FUNC9(FUNC5(view), "resource-request-starting",
			 FUNC4(view_cb_resource_request_starting), &ctx);
	FUNC9(FUNC5(view), "mime-type-policy-decision-requested",
			 FUNC4(view_cb_mime_type_policy_decision), &ctx);
	FUNC9(FUNC5(view), "download-requested",
			 FUNC4(view_cb_download_requested), &ctx);
	FUNC9(FUNC5(view), "hovering-over-link",
			 FUNC4(view_cb_hovering_over_link), &ctx);
	FUNC9(FUNC5(view), "title-changed",
			 FUNC4(view_cb_title_changed), &ctx);

	FUNC10(FUNC0(scroll), FUNC2(view));
	FUNC10(FUNC0(ctx.win), FUNC2(scroll));

	FUNC18(FUNC2(view));
	FUNC19(ctx.win);

	settings = FUNC25(view);
	FUNC8(FUNC5(settings), "user-agent",
		     "Mozilla/5.0 (X11; U; Unix; en-US) "
		     "AppleWebKit/537.15 (KHTML, like Gecko) "
		     "hs20-client/1.0", NULL);
	FUNC8(FUNC5(settings), "auto-load-images", TRUE, NULL);

	FUNC26(view, url);

	FUNC13();
	FUNC17(ctx.win);
	while (FUNC11())
		FUNC14();

	FUNC7(ctx.hover_link);
	FUNC7(ctx.title);
	return ctx.success;
}