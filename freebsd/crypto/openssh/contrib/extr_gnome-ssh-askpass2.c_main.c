
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IONBF ;
 int g_free (char*) ;
 char* g_strdup (char*) ;
 char* g_strjoinv (char*,char**) ;
 int gtk_init (int*,char***) ;
 int passphrase_dialog (char*) ;
 int setvbuf (int ,int ,int ,int ) ;
 int stdout ;

int
main(int argc, char **argv)
{
 char *message;
 int result;

 gtk_init(&argc, &argv);

 if (argc > 1) {
  message = g_strjoinv(" ", argv + 1);
 } else {
  message = g_strdup("Enter your OpenSSH passphrase:");
 }

 setvbuf(stdout, 0, _IONBF, 0);
 result = passphrase_dialog(message);
 g_free(message);

 return (result);
}
