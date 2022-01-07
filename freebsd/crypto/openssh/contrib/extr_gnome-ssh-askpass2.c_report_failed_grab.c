
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int GTK_BUTTONS_CLOSE ;
 int GTK_DIALOG (int *) ;
 int GTK_MESSAGE_ERROR ;
 int GTK_WINDOW (int *) ;
 int GTK_WIN_POS_CENTER ;
 int gtk_dialog_run (int ) ;
 int * gtk_message_dialog_new (int ,int ,int ,int ,char*,char const*) ;
 int gtk_widget_destroy (int *) ;
 int gtk_window_set_position (int ,int ) ;

__attribute__((used)) static void
report_failed_grab (GtkWidget *parent_window, const char *what)
{
 GtkWidget *err;

 err = gtk_message_dialog_new(GTK_WINDOW(parent_window), 0,
         GTK_MESSAGE_ERROR,
         GTK_BUTTONS_CLOSE,
         "Could not grab %s. "
         "A malicious client may be eavesdropping "
         "on your session.", what);
 gtk_window_set_position(GTK_WINDOW(err), GTK_WIN_POS_CENTER);

 gtk_dialog_run(GTK_DIALOG(err));

 gtk_widget_destroy(err);
}
