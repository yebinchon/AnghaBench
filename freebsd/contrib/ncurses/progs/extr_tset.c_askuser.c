
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int answer ;


 int clearerr (int ) ;
 int exit_error () ;
 scalar_t__ feof (int ) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 scalar_t__ fgets (char*,int,int ) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 int stdin ;
 char* strchr (char*,char) ;

__attribute__((used)) static const char *
askuser(const char *dflt)
{
    static char answer[256];
    char *p;


    clearerr(stdin);
    if (feof(stdin) || ferror(stdin)) {
 (void) fprintf(stderr, "\n");
 exit_error();

    }
    for (;;) {
 if (dflt)
     (void) fprintf(stderr, "Terminal type? [%s] ", dflt);
 else
     (void) fprintf(stderr, "Terminal type? ");
 (void) fflush(stderr);

 if (fgets(answer, sizeof(answer), stdin) == 0) {
     if (dflt == 0) {
  exit_error();

     }
     return (dflt);
 }

 if ((p = strchr(answer, '\n')) != 0)
     *p = '\0';
 if (answer[0])
     return (answer);
 if (dflt != 0)
     return (dflt);
    }
}
