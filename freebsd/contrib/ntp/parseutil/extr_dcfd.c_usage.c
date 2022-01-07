
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void
usage(
      char *program
      )
{
  fprintf(stderr, "usage: %s [-n] [-f] [-l] [-t] [-i] [-o] [-d <drift_file>] [-D <input delay>] <device>\n", program);
 fprintf(stderr, "\t-n              do not change time\n");
 fprintf(stderr, "\t-i              interactive\n");
 fprintf(stderr, "\t-t              trace (print all datagrams)\n");
 fprintf(stderr, "\t-f              print all databits (includes PTB private data)\n");
 fprintf(stderr, "\t-l              print loop filter debug information\n");
 fprintf(stderr, "\t-o              print offet average for current minute\n");
 fprintf(stderr, "\t-Y              make internal Y2K checks then exit\n");
 fprintf(stderr, "\t-d <drift_file> specify alternate drift file\n");
 fprintf(stderr, "\t-D <input delay>specify delay from input edge to processing in micro seconds\n");
}
