
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int line ;
struct TYPE_2__ {char* dv_name; scalar_t__ (* dv_print ) (int) ;} ;


 int CMD_OK ;
 TYPE_1__** devsw ;
 int getopt (int,char**,char*) ;
 int optind ;
 int optreset ;
 int pager_close () ;
 int pager_open () ;
 scalar_t__ pager_output (char*) ;
 int snprintf (char*,int,char*,char*) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static int
command_lsdev(int argc, char *argv[])
{
 int verbose, ch, i;
 char line[80];

 verbose = 0;
 optind = 1;
 optreset = 1;
 while ((ch = getopt(argc, argv, "v")) != -1) {
  switch (ch) {
  case 'v':
   verbose = 1;
   break;
  case '?':
  default:

   return (CMD_OK);
  }
 }
 argv += (optind);
 argc -= (optind);

 pager_open();
 for (i = 0; devsw[i] != ((void*)0); i++) {
  if (devsw[i]->dv_print != ((void*)0)) {
   if (devsw[i]->dv_print(verbose))
    break;
  } else {
   snprintf(line, sizeof(line), "%s: (unknown)\n",
       devsw[i]->dv_name);
   if (pager_output(line))
    break;
  }
 }
 pager_close();
 return (CMD_OK);
}
