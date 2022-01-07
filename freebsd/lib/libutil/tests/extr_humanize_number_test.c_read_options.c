
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int getopt (int,char* const*,char*) ;
 int optarg ;
 int sscanf (int ,char*,size_t*) ;
 int usage (char* const) ;

__attribute__((used)) static void
read_options(int argc, char * const argv[], size_t *bufLength,
    int *includeNegativeScale, int *includeExabytes, int *verbose) {
 int ch;
 size_t temp;

 while ((ch = getopt(argc, argv, "nEh?vl:")) != -1) {
  switch (ch) {
   default:
    usage(argv[0]);
    exit(1);
    break;
   case 'h' :
   case '?' :
    usage(argv[0]);
    exit(0);
    break;
   case 'l' :
    sscanf(optarg, "%zu", &temp);
    *bufLength = temp + 1;
    break;
   case 'n' :
    *includeNegativeScale = 1;
    break;
   case 'E' :
    *includeExabytes = 1;
    break;
   case 'v' :
    *verbose = 1;
    break;
  }
 }
}
