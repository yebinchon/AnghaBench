
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FEAT_FEAT ;
 int UPRINTF (char*,char*) ;
 int code ;
 int command (char*) ;
 int * features ;
 int fprintf (int ,char*) ;
 int ttyout ;
 int verbose ;

void
feat(int argc, char *argv[])
{
 int oldverbose = verbose;

 if (argc == 0) {
  UPRINTF("usage: %s\n", argv[0]);
  code = -1;
  return;
 }
 if (! features[FEAT_FEAT]) {
  fprintf(ttyout,
      "FEAT is not supported by the remote server.\n");
  return;
 }
 verbose = 1;
 (void)command("FEAT");
 verbose = oldverbose;
}
