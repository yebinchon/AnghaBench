
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int show_version () ;
 int stderr ;

__attribute__((used)) static void usage(void)
{
 show_version();
 fprintf(stderr,
  "\n"
  "usage: hostapd [-hdBKtv] [-P <PID file>] [-e <entropy file>] "
  "\\\n"
  "         [-g <global ctrl_iface>] [-G <group>]\\\n"
  "         [-i <comma-separated list of interface names>]\\\n"
  "         <configuration file(s)>\n"
  "\n"
  "options:\n"
  "   -h   show this usage\n"
  "   -d   show more debug messages (-dd for even more)\n"
  "   -B   run daemon in the background\n"
  "   -e   entropy file\n"
  "   -g   global control interface path\n"
  "   -G   group for control interfaces\n"
  "   -P   PID file\n"
  "   -K   include key data in debug messages\n"







  "   -i   list of interface names to use\n"



  "   -S   start all the interfaces synchronously\n"
  "   -t   include timestamps in some debug messages\n"
  "   -v   show hostapd version\n");

 exit(1);
}
