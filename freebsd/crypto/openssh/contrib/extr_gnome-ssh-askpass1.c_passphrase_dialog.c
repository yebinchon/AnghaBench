
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_20__ {int vbox; } ;
struct TYPE_19__ {int window; } ;
typedef TYPE_1__ GtkWidget ;


 int FALSE ;
 int GDK_CURRENT_TIME ;
 int GDK_DISPLAY () ;
 TYPE_7__* GNOME_DIALOG (TYPE_1__*) ;
 int GNOME_PAD ;
 int GNOME_STOCK_BUTTON_CANCEL ;
 int GNOME_STOCK_BUTTON_OK ;
 int GTK_BOX (int ) ;
 int GTK_CONTAINER (int ) ;
 int GTK_EDITABLE (TYPE_1__*) ;
 int GTK_ENTRY (TYPE_1__*) ;
 int GTK_OBJECT (TYPE_1__*) ;
 int GTK_WINDOW (TYPE_1__*) ;
 int GTK_WINDOW_POPUP ;
 int GTK_WIN_POS_CENTER ;
 int TRUE ;
 int XGrabServer (int ) ;
 int XUngrabServer (int ) ;
 char** g_strsplit (char*,char*,int ) ;
 int gdk_flush () ;
 scalar_t__ gdk_keyboard_grab (int ,int ,int ) ;
 int gdk_keyboard_ungrab (int ) ;
 scalar_t__ gdk_pointer_grab (int ,int ,int ,int *,int *,int ) ;
 int gdk_pointer_ungrab (int ) ;
 int * getenv (char*) ;
 int gnome_dialog_close (TYPE_7__*) ;
 int gnome_dialog_close_hides (TYPE_7__*,int ) ;
 int gnome_dialog_editable_enters (TYPE_7__*,int ) ;
 TYPE_1__* gnome_dialog_new (char*,int ,int ,int *) ;
 int gnome_dialog_run (TYPE_7__*) ;
 int gnome_dialog_set_default (TYPE_7__*,int ) ;
 int gtk_box_pack_start (int ,TYPE_1__*,int ,int ,int ) ;
 int gtk_container_set_border_width (int ,int ) ;
 char* gtk_entry_get_text (int ) ;
 TYPE_1__* gtk_entry_new () ;
 int gtk_entry_set_text (int ,char*) ;
 int gtk_entry_set_visibility (int ,int ) ;
 TYPE_1__* gtk_label_new (char*) ;
 int gtk_object_set (int ,char*,int ,int *) ;
 int gtk_widget_grab_focus (TYPE_1__*) ;
 int gtk_widget_show_all (TYPE_1__*) ;
 int gtk_window_set_policy (int ,int ,int ,int ) ;
 int gtk_window_set_position (int ,int ) ;
 int memset (char*,char,int ) ;
 int puts (char*) ;
 int report_failed_grab () ;
 int strlen (char*) ;

int
passphrase_dialog(char *message)
{
 char *passphrase;
 char **messages;
 int result, i, grab_server, grab_pointer;
 GtkWidget *dialog, *entry, *label;

 grab_server = (getenv("GNOME_SSH_ASKPASS_GRAB_SERVER") != ((void*)0));
 grab_pointer = (getenv("GNOME_SSH_ASKPASS_GRAB_POINTER") != ((void*)0));

 dialog = gnome_dialog_new("OpenSSH", GNOME_STOCK_BUTTON_OK,
     GNOME_STOCK_BUTTON_CANCEL, ((void*)0));

 messages = g_strsplit(message, "\\n", 0);
 if (messages)
  for(i = 0; messages[i]; i++) {
   label = gtk_label_new(messages[i]);
   gtk_box_pack_start(GTK_BOX(GNOME_DIALOG(dialog)->vbox),
       label, FALSE, FALSE, 0);
  }

 entry = gtk_entry_new();
 gtk_box_pack_start(GTK_BOX(GNOME_DIALOG(dialog)->vbox), entry, FALSE,
     FALSE, 0);
 gtk_entry_set_visibility(GTK_ENTRY(entry), FALSE);
 gtk_widget_grab_focus(entry);


 gtk_object_set(GTK_OBJECT(dialog), "type", GTK_WINDOW_POPUP, ((void*)0));
 gnome_dialog_set_default(GNOME_DIALOG(dialog), 0);
 gtk_window_set_position (GTK_WINDOW(dialog), GTK_WIN_POS_CENTER);
 gtk_window_set_policy(GTK_WINDOW(dialog), FALSE, FALSE, TRUE);
 gnome_dialog_close_hides(GNOME_DIALOG(dialog), TRUE);
 gtk_container_set_border_width(GTK_CONTAINER(GNOME_DIALOG(dialog)->vbox),
     GNOME_PAD);
 gtk_widget_show_all(dialog);


 if (grab_server)
  XGrabServer(GDK_DISPLAY());
 if (grab_pointer && gdk_pointer_grab(dialog->window, TRUE, 0,
     ((void*)0), ((void*)0), GDK_CURRENT_TIME))
  goto nograb;
 if (gdk_keyboard_grab(dialog->window, FALSE, GDK_CURRENT_TIME))
  goto nograbkb;


 gnome_dialog_editable_enters(GNOME_DIALOG(dialog), GTK_EDITABLE(entry));


 result = gnome_dialog_run(GNOME_DIALOG(dialog));


 if (grab_server)
  XUngrabServer(GDK_DISPLAY());
 if (grab_pointer)
  gdk_pointer_ungrab(GDK_CURRENT_TIME);
 gdk_keyboard_ungrab(GDK_CURRENT_TIME);
 gdk_flush();


 passphrase = gtk_entry_get_text(GTK_ENTRY(entry));
 if (result == 0)
  puts(passphrase);


 memset(passphrase, '\0', strlen(passphrase));
 gtk_entry_set_text(GTK_ENTRY(entry), passphrase);

 gnome_dialog_close(GNOME_DIALOG(dialog));
 return (result == 0 ? 0 : -1);




 nograbkb:
 gdk_pointer_ungrab(GDK_CURRENT_TIME);
 nograb:
 if (grab_server)
  XUngrabServer(GDK_DISPLAY());
 gnome_dialog_close(GNOME_DIALOG(dialog));

 report_failed_grab();
 return (-1);
}
