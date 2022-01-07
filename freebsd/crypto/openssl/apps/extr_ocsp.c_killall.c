
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 int OPENSSL_free (scalar_t__*) ;
 int SIGTERM ;
 int exit (int) ;
 int kill (scalar_t__,int ) ;
 int multi ;
 int sleep (int) ;

__attribute__((used)) static void killall(int ret, pid_t *kidpids)
{
    int i;

    for (i = 0; i < multi; ++i)
        if (kidpids[i] != 0)
            (void)kill(kidpids[i], SIGTERM);
    OPENSSL_free(kidpids);
    sleep(1);
    exit(ret);
}
