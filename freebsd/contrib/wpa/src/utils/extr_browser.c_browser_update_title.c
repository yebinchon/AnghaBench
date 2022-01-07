
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct browser_context {char* hover_link; int progress; char* title; int win; } ;
typedef int buf ;


 int GTK_WINDOW (int ) ;
 int gtk_window_set_title (int ,char*) ;
 int snprintf (char*,int,char*,int,char*) ;

__attribute__((used)) static void browser_update_title(struct browser_context *ctx)
{
 char buf[100];

 if (ctx->hover_link) {
  gtk_window_set_title(GTK_WINDOW(ctx->win), ctx->hover_link);
  return;
 }

 if (ctx->progress == 100) {
  gtk_window_set_title(GTK_WINDOW(ctx->win),
         ctx->title ? ctx->title :
         "Hotspot 2.0 client");
  return;
 }

 snprintf(buf, sizeof(buf), "[%d%%] %s", ctx->progress,
   ctx->title ? ctx->title : "Hotspot 2.0 client");
 gtk_window_set_title(GTK_WINDOW(ctx->win), buf);
}
