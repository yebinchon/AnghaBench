
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t FEAT_FEAT ;
 int UPRINTF (char*,char*) ;
 int code ;
 int command (char*,char*,...) ;
 int * features ;
 int fprintf (int ,char*) ;
 int ttyout ;
 int verbose ;

void
opts(int argc, char *argv[])
{
 int oldverbose = verbose;

 if (argc < 2 || argc > 3) {
  UPRINTF("usage: %s command [options]\n", argv[0]);
  code = -1;
  return;
 }
 if (! features[FEAT_FEAT]) {
  fprintf(ttyout,
      "OPTS is not supported by the remote server.\n");
  return;
 }
 verbose = 1;
 if (argc == 2)
  command("OPTS %s", argv[1]);
 else
  command("OPTS %s %s", argv[1], argv[2]);
 verbose = oldverbose;
}
