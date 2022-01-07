
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int BUFSIZ ;
 scalar_t__ encrypt_output ;
 int encrypt_send_end () ;
 int exit (int) ;
 int netflush () ;
 int sleep (int) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ strlen (char*) ;
 int write (int,char*,int) ;

void fatal(int f, char *msg)
{
    char buf[BUFSIZ];

    snprintf(buf, sizeof(buf), "telnetd: %s.\r\n", msg);
    write(f, buf, (int)strlen(buf));
    sleep(1);
    exit(1);
}
