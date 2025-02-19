
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MODE_ECHO ;
 int MODE_EDIT ;
 int MODE_FLOW ;
 int MODE_TRAPSIG ;
 int TELOPT_LFLOW ;
 int TELOPT_LINEMODE ;
 int TELOPT_SGA ;
 scalar_t__ connected ;
 char* control (int ) ;
 int encrypt_display () ;
 int escape ;
 int fflush (int ) ;
 int getconnmode () ;
 char* hostname ;
 scalar_t__ kludgelinemode ;
 scalar_t__ localchars ;
 scalar_t__ my_want_state_is_dont (int ) ;
 scalar_t__ my_want_state_is_will (int ) ;
 int printf (char*,...) ;
 int slcstate () ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static int
status(int argc, char **argv)
{
    if (connected) {
 printf("Connected to %s.\r\n", hostname);
 if ((argc < 2) || strcmp(argv[1], "notmuch")) {
     int mode = getconnmode();

     if (my_want_state_is_will(TELOPT_LINEMODE)) {
  printf("Operating with LINEMODE option\r\n");
  printf("%s line editing\r\n", (mode&MODE_EDIT) ? "Local" : "No");
  printf("%s catching of signals\r\n",
     (mode&MODE_TRAPSIG) ? "Local" : "No");
  slcstate();




     } else {
  printf("Operating in single character mode\r\n");
  if (localchars)
      printf("Catching signals locally\r\n");
     }
     printf("%s character echo\r\n", (mode&MODE_ECHO) ? "Local" : "Remote");
     if (my_want_state_is_will(TELOPT_LFLOW))
  printf("%s flow control\r\n", (mode&MODE_FLOW) ? "Local" : "No");



 }
    } else {
 printf("No connection.\r\n");
    }
    printf("Escape character is '%s'.\r\n", control(escape));
    fflush(stdout);
    return 1;
}
