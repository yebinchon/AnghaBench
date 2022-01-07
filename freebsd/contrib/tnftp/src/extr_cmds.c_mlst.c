
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int COMMAND_1ARG (int,char**,char*) ;
 size_t FEAT_MLST ;
 int UPRINTF (char*,char*) ;
 int code ;
 int * features ;
 int fprintf (int ,char*) ;
 int ttyout ;
 int verbose ;

void
mlst(int argc, char *argv[])
{
 int oldverbose = verbose;

 if (argc < 1 || argc > 2) {
  UPRINTF("usage: %s [remote-path]\n", argv[0]);
  code = -1;
  return;
 }
 if (! features[FEAT_MLST]) {
  fprintf(ttyout,
      "MLST is not supported by the remote server.\n");
  return;
 }
 verbose = 1;
 COMMAND_1ARG(argc, argv, "MLST");
 verbose = oldverbose;
}
