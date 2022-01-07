
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tempf ;
struct trust_anchor {TYPE_1__* autr; } ;
struct module_env {scalar_t__ worker; } ;
struct TYPE_2__ {char* file; } ;
typedef int HANDLE ;
typedef int FILE ;


 int FlushFileBuffers (int ) ;
 int VERB_ALGO ;
 int _fileno (int *) ;
 scalar_t__ _get_osfhandle (int ) ;
 int autr_write_contents (int *,char*,struct trust_anchor*) ;
 int errno ;
 int fatal_exit (char*,char*,...) ;
 scalar_t__ fclose (int *) ;
 scalar_t__ fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 scalar_t__ fsync (int ) ;
 scalar_t__ getpid () ;
 int log_assert (TYPE_1__*) ;
 int log_err (char*,...) ;
 scalar_t__ rename (char*,char*) ;
 int snprintf (char*,int,char*,char*,int,int) ;
 int strerror (int ) ;
 int unlink (char*) ;
 int verbose (int ,char*,char*) ;

void autr_write_file(struct module_env* env, struct trust_anchor* tp)
{
 FILE* out;
 char* fname = tp->autr->file;
 char tempf[2048];
 log_assert(tp->autr);
 if(!env) {
  log_err("autr_write_file: Module environment is NULL.");
  return;
 }

 snprintf(tempf, sizeof(tempf), "%s.%d-%d", fname, (int)getpid(),
  env->worker?*(int*)env->worker:0);
 verbose(VERB_ALGO, "autotrust: write to disk: %s", tempf);
 out = fopen(tempf, "w");
 if(!out) {
  fatal_exit("could not open autotrust file for writing, %s: %s",
   tempf, strerror(errno));
  return;
 }
 if(!autr_write_contents(out, tempf, tp)) {

  fclose(out);
  unlink(tempf);
  fatal_exit("could not completely write: %s", fname);
  return;
 }
 if(fflush(out) != 0)
  log_err("could not fflush(%s): %s", fname, strerror(errno));




 FlushFileBuffers((HANDLE)_get_osfhandle(_fileno(out)));

 if(fclose(out) != 0) {
  fatal_exit("could not complete write: %s: %s",
   fname, strerror(errno));
  unlink(tempf);
  return;
 }

 verbose(VERB_ALGO, "autotrust: replaced %s", fname);



 if(rename(tempf, fname) < 0) {
  fatal_exit("rename(%s to %s): %s", tempf, fname, strerror(errno));
 }
}
