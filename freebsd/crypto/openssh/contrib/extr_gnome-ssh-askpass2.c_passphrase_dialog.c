
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;
typedef scalar_t__ GdkGrabStatus ;


 int FALSE ;
 int GDK_CURRENT_TIME ;
 scalar_t__ GDK_GRAB_SUCCESS ;
 int GRAB_TRIES ;
 int GRAB_WAIT ;
 int GTK_BOX (int ) ;
 int GTK_BUTTONS_OK_CANCEL ;
 int GTK_DIALOG (int *) ;
 int GTK_ENTRY (int *) ;
 int GTK_MESSAGE_QUESTION ;
 int GTK_RESPONSE_OK ;
 int GTK_WIDGET (int *) ;
 int GTK_WINDOW (int *) ;
 int GTK_WINDOW_TOPLEVEL ;
 int GTK_WIN_POS_CENTER ;
 int G_CALLBACK (int ) ;
 int G_OBJECT (int *) ;
 int TRUE ;
 int XUngrabServer (int ) ;
 int g_free (char*) ;
 char* g_locale_from_utf8 (char*,int ,int *,int *,int *) ;
 int g_signal_connect (int ,char*,int ,int *) ;
 char* g_strdup (int ) ;
 int gdk_flush () ;
 scalar_t__ gdk_keyboard_grab (int ,int ,int ) ;
 int gdk_keyboard_ungrab (int ) ;
 scalar_t__ gdk_pointer_grab (int ,int ,int ,int *,int *,int ) ;
 int gdk_pointer_ungrab (int ) ;
 int gdk_x11_get_default_xdisplay () ;
 int gdk_x11_grab_server () ;
 int * getenv (char*) ;
 int gtk_box_pack_start (int ,int *,int ,int ,int ) ;
 int gtk_dialog_get_content_area (int ) ;
 int gtk_dialog_run (int ) ;
 int gtk_dialog_set_default_response (int ,int) ;
 int gtk_entry_get_text (int ) ;
 int * gtk_entry_new () ;
 int gtk_entry_set_text (int ,char*) ;
 int gtk_entry_set_visibility (int ,int ) ;
 int * gtk_message_dialog_new (int ,int ,int ,int ,char*,char*) ;
 int gtk_widget_destroy (int *) ;
 int gtk_widget_get_window (int ) ;
 int gtk_widget_grab_focus (int *) ;
 int gtk_widget_show (int *) ;
 int gtk_widget_show_now (int *) ;
 int * gtk_window_new (int ) ;
 int gtk_window_set_keep_above (int ,int ) ;
 int gtk_window_set_position (int ,int ) ;
 int gtk_window_set_title (int ,char*) ;
 int memset (char*,char,int ) ;
 int ok_dialog ;
 int puts (char*) ;
 int report_failed_grab (int *,char const*) ;
 int strlen (char*) ;
 int usleep (int) ;

__attribute__((used)) static int
passphrase_dialog(char *message)
{
 const char *failed;
 char *passphrase, *local;
 int result, grab_tries, grab_server, grab_pointer;
 GtkWidget *parent_window, *dialog, *entry;
 GdkGrabStatus status;

 grab_server = (getenv("GNOME_SSH_ASKPASS_GRAB_SERVER") != ((void*)0));
 grab_pointer = (getenv("GNOME_SSH_ASKPASS_GRAB_POINTER") != ((void*)0));
 grab_tries = 0;



 parent_window = gtk_window_new(GTK_WINDOW_TOPLEVEL);

 dialog = gtk_message_dialog_new(GTK_WINDOW(parent_window), 0,
     GTK_MESSAGE_QUESTION,
     GTK_BUTTONS_OK_CANCEL,
     "%s",
     message);

 entry = gtk_entry_new();
 gtk_box_pack_start(
     GTK_BOX(gtk_dialog_get_content_area(GTK_DIALOG(dialog))), entry,
     FALSE, FALSE, 0);
 gtk_entry_set_visibility(GTK_ENTRY(entry), FALSE);
 gtk_widget_grab_focus(entry);
 gtk_widget_show(entry);

 gtk_window_set_title(GTK_WINDOW(dialog), "OpenSSH");
 gtk_window_set_position (GTK_WINDOW(dialog), GTK_WIN_POS_CENTER);
 gtk_window_set_keep_above(GTK_WINDOW(dialog), TRUE);


 gtk_dialog_set_default_response(GTK_DIALOG(dialog), GTK_RESPONSE_OK);
 g_signal_connect(G_OBJECT(entry), "activate",
    G_CALLBACK(ok_dialog), dialog);

 gtk_window_set_keep_above(GTK_WINDOW(dialog), TRUE);


 gtk_widget_show_now(dialog);
 if (grab_pointer) {
  for(;;) {
   status = gdk_pointer_grab(
       (gtk_widget_get_window(GTK_WIDGET(dialog))), TRUE,
       0, ((void*)0), ((void*)0), GDK_CURRENT_TIME);
   if (status == GDK_GRAB_SUCCESS)
    break;
   usleep(GRAB_WAIT * 1000);
   if (++grab_tries > GRAB_TRIES) {
    failed = "mouse";
    goto nograb;
   }
  }
 }
 for(;;) {
  status = gdk_keyboard_grab(
      gtk_widget_get_window(GTK_WIDGET(dialog)), FALSE,
      GDK_CURRENT_TIME);
  if (status == GDK_GRAB_SUCCESS)
   break;
  usleep(GRAB_WAIT * 1000);
  if (++grab_tries > GRAB_TRIES) {
   failed = "keyboard";
   goto nograbkb;
  }
 }
 if (grab_server) {
  gdk_x11_grab_server();
 }

 result = gtk_dialog_run(GTK_DIALOG(dialog));


 if (grab_server)
  XUngrabServer(gdk_x11_get_default_xdisplay());
 if (grab_pointer)
  gdk_pointer_ungrab(GDK_CURRENT_TIME);
 gdk_keyboard_ungrab(GDK_CURRENT_TIME);
 gdk_flush();


 passphrase = g_strdup(gtk_entry_get_text(GTK_ENTRY(entry)));
 if (result == GTK_RESPONSE_OK) {
  local = g_locale_from_utf8(passphrase, strlen(passphrase),
        ((void*)0), ((void*)0), ((void*)0));
  if (local != ((void*)0)) {
   puts(local);
   memset(local, '\0', strlen(local));
   g_free(local);
  } else {
   puts(passphrase);
  }
 }


 memset(passphrase, '\b', strlen(passphrase));
 gtk_entry_set_text(GTK_ENTRY(entry), passphrase);
 memset(passphrase, '\0', strlen(passphrase));
 g_free(passphrase);

 gtk_widget_destroy(dialog);
 return (result == GTK_RESPONSE_OK ? 0 : -1);




 nograbkb:
 gdk_pointer_ungrab(GDK_CURRENT_TIME);
 nograb:
 if (grab_server)
  XUngrabServer(gdk_x11_get_default_xdisplay());
 gtk_widget_destroy(dialog);

 report_failed_grab(parent_window, failed);

 return (-1);
}
