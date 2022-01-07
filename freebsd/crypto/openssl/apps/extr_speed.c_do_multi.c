
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int BIO_flush (int ) ;
 int BIO_printf (int ,char*,...) ;
 int* app_malloc (int,char*) ;
 double atof (int ) ;
 int atoi (int ) ;
 int bio_err ;
 int close (int) ;
 double** dsa_results ;
 int dup (int) ;
 double** ecdh_results ;
 double** ecdsa_results ;
 double** eddsa_results ;
 int exit (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fflush (int ) ;
 scalar_t__ fgets (char*,int,int *) ;
 scalar_t__ fork () ;
 int free (int*) ;
 int mr ;
 int pipe (int*) ;
 int printf (char*,...) ;
 double** results ;
 double** rsa_results ;
 int sstrsep (char**,char*) ;
 int stdout ;
 char* strchr (char*,char) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ usertime ;

__attribute__((used)) static int do_multi(int multi, int size_num)
{
    int n;
    int fd[2];
    int *fds;
    static char sep[] = ":";

    fds = app_malloc(sizeof(*fds) * multi, "fd buffer for do_multi");
    for (n = 0; n < multi; ++n) {
        if (pipe(fd) == -1) {
            BIO_printf(bio_err, "pipe failure\n");
            exit(1);
        }
        fflush(stdout);
        (void)BIO_flush(bio_err);
        if (fork()) {
            close(fd[1]);
            fds[n] = fd[0];
        } else {
            close(fd[0]);
            close(1);
            if (dup(fd[1]) == -1) {
                BIO_printf(bio_err, "dup failed\n");
                exit(1);
            }
            close(fd[1]);
            mr = 1;
            usertime = 0;
            free(fds);
            return 0;
        }
        printf("Forked child %d\n", n);
    }


    for (n = 0; n < multi; ++n) {
        FILE *f;
        char buf[1024];
        char *p;

        f = fdopen(fds[n], "r");
        while (fgets(buf, sizeof(buf), f)) {
            p = strchr(buf, '\n');
            if (p)
                *p = '\0';
            if (buf[0] != '+') {
                BIO_printf(bio_err,
                           "Don't understand line '%s' from child %d\n", buf,
                           n);
                continue;
            }
            printf("Got: %s from %d\n", buf, n);
            if (strncmp(buf, "+F:", 3) == 0) {
                int alg;
                int j;

                p = buf + 3;
                alg = atoi(sstrsep(&p, sep));
                sstrsep(&p, sep);
                for (j = 0; j < size_num; ++j)
                    results[alg][j] += atof(sstrsep(&p, sep));
            } else if (strncmp(buf, "+F2:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = atoi(sstrsep(&p, sep));
                sstrsep(&p, sep);

                d = atof(sstrsep(&p, sep));
                rsa_results[k][0] += d;

                d = atof(sstrsep(&p, sep));
                rsa_results[k][1] += d;
            }

            else if (strncmp(buf, "+F3:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = atoi(sstrsep(&p, sep));
                sstrsep(&p, sep);

                d = atof(sstrsep(&p, sep));
                dsa_results[k][0] += d;

                d = atof(sstrsep(&p, sep));
                dsa_results[k][1] += d;
            }


            else if (strncmp(buf, "+F4:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = atoi(sstrsep(&p, sep));
                sstrsep(&p, sep);

                d = atof(sstrsep(&p, sep));
                ecdsa_results[k][0] += d;

                d = atof(sstrsep(&p, sep));
                ecdsa_results[k][1] += d;
            } else if (strncmp(buf, "+F5:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = atoi(sstrsep(&p, sep));
                sstrsep(&p, sep);

                d = atof(sstrsep(&p, sep));
                ecdh_results[k][0] += d;
            } else if (strncmp(buf, "+F6:", 4) == 0) {
                int k;
                double d;

                p = buf + 4;
                k = atoi(sstrsep(&p, sep));
                sstrsep(&p, sep);

                d = atof(sstrsep(&p, sep));
                eddsa_results[k][0] += d;

                d = atof(sstrsep(&p, sep));
                eddsa_results[k][1] += d;
            }


            else if (strncmp(buf, "+H:", 3) == 0) {
                ;
            } else
                BIO_printf(bio_err, "Unknown type '%s' from child %d\n", buf,
                           n);
        }

        fclose(f);
    }
    free(fds);
    return 1;
}
