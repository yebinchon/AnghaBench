
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GtkWidget ;


 int GNOME_DIALOG (int *) ;
 int GNOME_MESSAGE_BOX_ERROR ;
 int GTK_OBJECT (int *) ;
 int GTK_WINDOW (int *) ;
 int GTK_WINDOW_POPUP ;
 int GTK_WIN_POS_CENTER ;
 int gnome_dialog_run_and_close (int ) ;
 int * gnome_message_box_new (char*,int ,char*,int *) ;
 int gtk_object_set (int ,char*,int ,int *) ;
 int gtk_window_set_position (int ,int ) ;

void
report_failed_grab (void)
{
 GtkWidget *err;

 err = gnome_message_box_new("Could not grab keyboard or mouse.\n"
  "A malicious client may be eavesdropping on your session.",
        GNOME_MESSAGE_BOX_ERROR, "EXIT", ((void*)0));
 gtk_window_set_position(GTK_WINDOW(err), GTK_WIN_POS_CENTER);
 gtk_object_set(GTK_OBJECT(err), "type", GTK_WINDOW_POPUP, ((void*)0));

 gnome_dialog_run_and_close(GNOME_DIALOG(err));
}
