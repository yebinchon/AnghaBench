
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NetClose (int ) ;
 int auth_encrypt_connect (scalar_t__) ;
 scalar_t__ connected ;
 int longjmp (int ,int) ;
 int net ;
 int printf (char*) ;
 int resettermname ;
 int shutdown (int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int tninit () ;
 int toplevel ;

__attribute__((used)) static int
bye(int argc, char **argv)
{
    if (connected) {
 shutdown(net, 2);
 printf("Connection closed.\r\n");
 NetClose(net);
 connected = 0;
 resettermname = 1;




 tninit();
    }
    if ((argc != 2) || (strcmp(argv[1], "fromquit") != 0))
 longjmp(toplevel, 1);
    return 0;
}
