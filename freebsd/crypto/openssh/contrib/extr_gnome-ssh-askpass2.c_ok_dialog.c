
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;
typedef int GtkWidget ;


 int GTK_DIALOG (int ) ;
 int GTK_IS_DIALOG (int ) ;
 int GTK_RESPONSE_OK ;
 int g_return_if_fail (int ) ;
 int gtk_dialog_response (int ,int ) ;

__attribute__((used)) static void
ok_dialog(GtkWidget *entry, gpointer dialog)
{
 g_return_if_fail(GTK_IS_DIALOG(dialog));
 gtk_dialog_response(GTK_DIALOG(dialog), GTK_RESPONSE_OK);
}
