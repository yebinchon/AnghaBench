
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DISPLAY (char*) ;
 int SIGINT ;
 int SIG_IGN ;
 int UTIL_isRegularFile (scalar_t__) ;
 int assert (int) ;
 int exit (int) ;
 scalar_t__ g_artefact ;
 int remove (scalar_t__) ;
 int signal (int,int ) ;

__attribute__((used)) static void INThandler(int sig)
{
    assert(sig==SIGINT); (void)sig;

    signal(sig, SIG_IGN);

    if (g_artefact) {
        assert(UTIL_isRegularFile(g_artefact));
        remove(g_artefact);
    }
    DISPLAY("\n");
    exit(2);
}
