
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;


 scalar_t__ EINTR ;
 int LOG_DAEMON ;
 int LOG_ERR ;
 int LOG_INFO ;
 int LOG_PID ;
 int LOG_WARNING ;
 int OPENSSL_free (scalar_t__*) ;
 int RAND_poll () ;
 int SIGINT ;
 int SIGTERM ;
 int SIG_DFL ;
 scalar_t__ WCOREDUMP (int) ;
 int WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int _exit (int) ;
 scalar_t__* app_malloc (int,char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ fork () ;
 int killall (int,scalar_t__*) ;
 int multi ;
 int noteterm ;
 int openlog (int ,int ,int ) ;
 int prog ;
 scalar_t__ setpgid (int ,int ) ;
 int signal (int ,int ) ;
 int sleep (int) ;
 long strerror (scalar_t__) ;
 int syslog (int ,char*,...) ;
 long termsig ;
 scalar_t__ waitpid (int,int*,int ) ;

__attribute__((used)) static void spawn_loop(void)
{
    pid_t *kidpids = ((void*)0);
    int status;
    int procs = 0;
    int i;

    openlog(prog, LOG_PID, LOG_DAEMON);

    if (setpgid(0, 0)) {
        syslog(LOG_ERR, "fatal: error detaching from parent process group: %s",
               strerror(errno));
        exit(1);
    }
    kidpids = app_malloc(multi * sizeof(*kidpids), "child PID array");
    for (i = 0; i < multi; ++i)
        kidpids[i] = 0;

    signal(SIGINT, noteterm);
    signal(SIGTERM, noteterm);

    while (termsig == 0) {
        pid_t fpid;





        while (termsig == 0 && procs >= multi) {
            if ((fpid = waitpid(-1, &status, 0)) > 0) {
                for (i = 0; i < procs; ++i) {
                    if (kidpids[i] == fpid) {
                        kidpids[i] = 0;
                        --procs;
                        break;
                    }
                }
                if (i >= multi) {
                    syslog(LOG_ERR, "fatal: internal error: "
                           "no matching child slot for pid: %ld",
                           (long) fpid);
                    killall(1, kidpids);
                }
                if (status != 0) {
                    if (WIFEXITED(status))
                        syslog(LOG_WARNING, "child process: %ld, exit status: %d",
                               (long)fpid, WEXITSTATUS(status));
                    else if (WIFSIGNALED(status))
                        syslog(LOG_WARNING, "child process: %ld, term signal %d%s",
                               (long)fpid, WTERMSIG(status),



                               "");
                    sleep(1);
                }
                break;
            } else if (errno != EINTR) {
                syslog(LOG_ERR, "fatal: waitpid(): %s", strerror(errno));
                killall(1, kidpids);
            }
        }
        if (termsig)
            break;

        switch(fpid = fork()) {
        case -1:

            sleep(30);
            break;
        case 0:
            OPENSSL_free(kidpids);
            signal(SIGINT, SIG_DFL);
            signal(SIGTERM, SIG_DFL);
            if (termsig)
                _exit(0);
            if (RAND_poll() <= 0) {
                syslog(LOG_ERR, "fatal: RAND_poll() failed");
                _exit(1);
            }
            return;
        default:
            for (i = 0; i < multi; ++i) {
                if (kidpids[i] == 0) {
                    kidpids[i] = fpid;
                    procs++;
                    break;
                }
            }
            if (i >= multi) {
                syslog(LOG_ERR, "fatal: internal error: no free child slots");
                killall(1, kidpids);
            }
            break;
        }
    }


    syslog(LOG_INFO, "terminating on signal: %d", termsig);
    killall(0, kidpids);
}
