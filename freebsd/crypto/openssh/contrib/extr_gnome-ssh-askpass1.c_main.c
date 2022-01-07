
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _IONBF ;
 int gnome_init (char*,char*,int,char**) ;
 int passphrase_dialog (char*) ;
 int setvbuf (int ,int ,int ,int ) ;
 int stdout ;

int
main(int argc, char **argv)
{
 char *message;
 int result;

 gnome_init("GNOME ssh-askpass", "0.1", argc, argv);

 if (argc == 2)
  message = argv[1];
 else
  message = "Enter your OpenSSH passphrase:";

 setvbuf(stdout, 0, _IONBF, 0);
 result = passphrase_dialog(message);

 return (result);
}
