
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int workdir ;
struct TYPE_2__ {char* name; int failures; int (* func ) () ;} ;


 int LC_ALL ;
 int Sleep (int) ;


 scalar_t__ assertChdir (char const*) ;
 int assertMakeDir (char*,int) ;
 int exit (int) ;
 int failures ;
 int fclose (int *) ;
 int fflush (int ) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char const*) ;
 int keep_temp_files ;
 int * logfile ;
 int printf (char*,int,char*) ;
 int setlocale (int ,char*) ;
 int skips ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int sprintf (char*,char*,char*) ;
 int * stderr ;
 int stdout ;
 int stub1 () ;
 int systemf (char*,char*) ;
 int test_summarize (int,int) ;
 TYPE_1__* tests ;
 char* testworkdir ;
 int umask (int) ;
 int verbosity ;

__attribute__((used)) static int
test_run(int i, const char *tmpdir)
{
 char workdir[1024];
 char logfilename[64];
 int failures_before = failures;
 int skips_before = skips;
 int oldumask;

 switch (verbosity) {
 case 128:
  break;
 case 129:
  printf("%3d: %-64s", i, tests[i].name);
  fflush(stdout);
  break;
 default:
  printf("%3d: %s\n", i, tests[i].name);
 }


 if (!assertChdir(tmpdir)) {
  fprintf(stderr,
      "ERROR: Can't chdir to top work dir %s\n", tmpdir);
  exit(1);
 }

 sprintf(logfilename, "%s.log", tests[i].name);
 logfile = fopen(logfilename, "w");
 fprintf(logfile, "%s\n\n", tests[i].name);

 snprintf(workdir, sizeof(workdir), "%s/%s", tmpdir, tests[i].name);
 testworkdir = workdir;
 if (!assertMakeDir(testworkdir, 0755)
     || !assertChdir(testworkdir)) {
  fprintf(stderr,
      "ERROR: Can't chdir to work dir %s\n", testworkdir);
  exit(1);
 }

 setlocale(LC_ALL, "C");

 umask(oldumask = umask(0));



 (*tests[i].func)();



 testworkdir = ((void*)0);

 umask(oldumask);

 setlocale(LC_ALL, "C");

 if (!assertChdir(tmpdir)) {
  fprintf(stderr, "ERROR: Couldn't chdir to temp dir %s\n",
      tmpdir);
  exit(1);
 }

 tests[i].failures = failures - failures_before;
 test_summarize(tests[i].failures, skips - skips_before);

 fclose(logfile);
 logfile = ((void*)0);

 if (tests[i].failures == 0) {
  if (!keep_temp_files && assertChdir(tmpdir)) {
   systemf("rm -rf %s", tests[i].name);
   systemf("rm %s", logfilename);

  }
 }

 return (tests[i].failures);
}
