
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
 int shutdown (int ,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int tninit () ;
 int toplevel ;

__attribute__((used)) static int
bye(int argc, char *argv[])
{
    extern int resettermname;

    if (connected) {
 (void) shutdown(net, 2);
 printf("Connection closed.\n");
 (void) NetClose(net);
 connected = 0;
 resettermname = 1;






 tninit();
    }
    if ((argc != 2) || (strcmp(argv[1], "fromquit") != 0)) {
 longjmp(toplevel, 1);

    }
    return 1;
}
