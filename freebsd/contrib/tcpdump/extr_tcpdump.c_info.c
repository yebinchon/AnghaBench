
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcap_stat {scalar_t__ ps_ifdrop; int ps_recv; int ps_drop; } ;


 char* PLURAL_SUFFIX (int) ;
 int fprintf (int ,char*,...) ;
 int fputs (char*,int ) ;
 scalar_t__ infoprint ;
 int packets_captured ;
 char* pcap_geterr (int ) ;
 scalar_t__ pcap_stats (int ,struct pcap_stat*) ;
 int pd ;
 char* program_name ;
 int putc (char,int ) ;
 int stderr ;

__attribute__((used)) static void
info(register int verbose)
{
 struct pcap_stat stats;





 stats.ps_ifdrop = 0;
 if (pcap_stats(pd, &stats) < 0) {
  (void)fprintf(stderr, "pcap_stats: %s\n", pcap_geterr(pd));
  infoprint = 0;
  return;
 }

 if (!verbose)
  fprintf(stderr, "%s: ", program_name);

 (void)fprintf(stderr, "%u packet%s captured", packets_captured,
     PLURAL_SUFFIX(packets_captured));
 if (!verbose)
  fputs(", ", stderr);
 else
  putc('\n', stderr);
 (void)fprintf(stderr, "%u packet%s received by filter", stats.ps_recv,
     PLURAL_SUFFIX(stats.ps_recv));
 if (!verbose)
  fputs(", ", stderr);
 else
  putc('\n', stderr);
 (void)fprintf(stderr, "%u packet%s dropped by kernel", stats.ps_drop,
     PLURAL_SUFFIX(stats.ps_drop));
 if (stats.ps_ifdrop != 0) {
  if (!verbose)
   fputs(", ", stderr);
  else
   putc('\n', stderr);
  (void)fprintf(stderr, "%u packet%s dropped by interface\n",
      stats.ps_ifdrop, PLURAL_SUFFIX(stats.ps_ifdrop));
 } else
  putc('\n', stderr);
 infoprint = 0;
}
