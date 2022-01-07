
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct browser_context {int success; int title; int hover_link; int * win; } ;
typedef int ctx ;
typedef int WebKitWebView ;
typedef int WebKitWebSettings ;
typedef int SoupSession ;
typedef int GtkWidget ;


 char* FALSE ;
 int GTK_CONTAINER (int *) ;
 int GTK_POLICY_NEVER ;
 int GTK_SCROLLED_WINDOW (int *) ;
 int GTK_WIDGET (int *) ;
 int GTK_WINDOW (int *) ;
 int GTK_WINDOW_TOPLEVEL ;
 int G_CALLBACK (int ) ;
 int G_OBJECT (int *) ;
 char* TRUE ;
 int * WEBKIT_WEB_VIEW (int ) ;
 int free (int ) ;
 int g_object_set (int ,char*,char*,int *) ;
 int g_signal_connect (int ,char*,int ,struct browser_context*) ;
 int gtk_container_add (int ,int ) ;
 scalar_t__ gtk_events_pending () ;
 int gtk_init_check (int *,int *) ;
 int gtk_main () ;
 int gtk_main_iteration () ;
 int * gtk_scrolled_window_new (int *,int *) ;
 int gtk_scrolled_window_set_policy (int ,int ,int ) ;
 int gtk_widget_destroy (int *) ;
 int gtk_widget_grab_focus (int ) ;
 int gtk_widget_show_all (int *) ;
 int * gtk_window_new (int ) ;
 int gtk_window_set_default_size (int ,int,int) ;
 int gtk_window_set_role (int ,char*) ;
 int memset (struct browser_context*,int ,int) ;
 int view_cb_download_requested ;
 int view_cb_hovering_over_link ;
 int view_cb_mime_type_policy_decision ;
 int view_cb_notify_load_status ;
 int view_cb_notify_progress ;
 int view_cb_resource_request_starting ;
 int view_cb_title_changed ;
 int * webkit_get_default_session () ;
 int * webkit_web_view_get_settings (int *) ;
 int webkit_web_view_load_uri (int *,char const*) ;
 int webkit_web_view_new () ;
 int win_cb_destroy ;

int hs20_web_browser(const char *url)
{
 GtkWidget *scroll;
 SoupSession *s;
 WebKitWebView *view;
 WebKitWebSettings *settings;
 struct browser_context ctx;

 memset(&ctx, 0, sizeof(ctx));
 if (!gtk_init_check(((void*)0), ((void*)0)))
  return -1;

 s = webkit_get_default_session();
 g_object_set(G_OBJECT(s), "ssl-ca-file",
       "/etc/ssl/certs/ca-certificates.crt", ((void*)0));
 g_object_set(G_OBJECT(s), "ssl-strict", FALSE, ((void*)0));

 ctx.win = gtk_window_new(GTK_WINDOW_TOPLEVEL);
 gtk_window_set_role(GTK_WINDOW(ctx.win), "Hotspot 2.0 client");
 gtk_window_set_default_size(GTK_WINDOW(ctx.win), 800, 600);

 scroll = gtk_scrolled_window_new(((void*)0), ((void*)0));
 gtk_scrolled_window_set_policy(GTK_SCROLLED_WINDOW(scroll),
           GTK_POLICY_NEVER, GTK_POLICY_NEVER);

 g_signal_connect(G_OBJECT(ctx.win), "destroy",
    G_CALLBACK(win_cb_destroy), &ctx);

 view = WEBKIT_WEB_VIEW(webkit_web_view_new());
 g_signal_connect(G_OBJECT(view), "notify::progress",
    G_CALLBACK(view_cb_notify_progress), &ctx);
 g_signal_connect(G_OBJECT(view), "notify::load-status",
    G_CALLBACK(view_cb_notify_load_status), &ctx);
 g_signal_connect(G_OBJECT(view), "resource-request-starting",
    G_CALLBACK(view_cb_resource_request_starting), &ctx);
 g_signal_connect(G_OBJECT(view), "mime-type-policy-decision-requested",
    G_CALLBACK(view_cb_mime_type_policy_decision), &ctx);
 g_signal_connect(G_OBJECT(view), "download-requested",
    G_CALLBACK(view_cb_download_requested), &ctx);
 g_signal_connect(G_OBJECT(view), "hovering-over-link",
    G_CALLBACK(view_cb_hovering_over_link), &ctx);
 g_signal_connect(G_OBJECT(view), "title-changed",
    G_CALLBACK(view_cb_title_changed), &ctx);

 gtk_container_add(GTK_CONTAINER(scroll), GTK_WIDGET(view));
 gtk_container_add(GTK_CONTAINER(ctx.win), GTK_WIDGET(scroll));

 gtk_widget_grab_focus(GTK_WIDGET(view));
 gtk_widget_show_all(ctx.win);

 settings = webkit_web_view_get_settings(view);
 g_object_set(G_OBJECT(settings), "user-agent",
       "Mozilla/5.0 (X11; U; Unix; en-US) "
       "AppleWebKit/537.15 (KHTML, like Gecko) "
       "hs20-client/1.0", ((void*)0));
 g_object_set(G_OBJECT(settings), "auto-load-images", TRUE, ((void*)0));

 webkit_web_view_load_uri(view, url);

 gtk_main();
 gtk_widget_destroy(ctx.win);
 while (gtk_events_pending())
  gtk_main_iteration();

 free(ctx.hover_link);
 free(ctx.title);
 return ctx.success;
}
