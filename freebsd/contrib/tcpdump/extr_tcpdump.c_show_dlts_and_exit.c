
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_t ;


 scalar_t__ Iflag ;
 int error (char*,...) ;
 int exit_tcpdump (int ) ;
 int fprintf (int ,char*,...) ;
 int has_printer (int) ;
 char* pcap_datalink_val_to_description (int) ;
 char* pcap_datalink_val_to_name (int) ;
 int pcap_free_datalinks (int*) ;
 int pcap_geterr (int *) ;
 int pcap_list_datalinks (int *,int**) ;
 int stderr ;
 scalar_t__ supports_monitor_mode ;

__attribute__((used)) static void
show_dlts_and_exit(pcap_t *pc, const char *device)
{
 int n_dlts, i;
 int *dlts = 0;
 const char *dlt_name;

 n_dlts = pcap_list_datalinks(pc, &dlts);
 if (n_dlts < 0)
  error("%s", pcap_geterr(pc));
 else if (n_dlts == 0 || !dlts)
  error("No data link types.");
 if (supports_monitor_mode)
  (void) fprintf(stderr, "Data link types for %s %s (use option -y to set):\n",
      device,
      Iflag ? "when in monitor mode" : "when not in monitor mode");
 else
  (void) fprintf(stderr, "Data link types for %s (use option -y to set):\n",
      device);

 for (i = 0; i < n_dlts; i++) {
  dlt_name = pcap_datalink_val_to_name(dlts[i]);
  if (dlt_name != ((void*)0)) {
   (void) fprintf(stderr, "  %s (%s)", dlt_name,
       pcap_datalink_val_to_description(dlts[i]));




   if (!has_printer(dlts[i]))
    (void) fprintf(stderr, " (printing not supported)");
   fprintf(stderr, "\n");
  } else {
   (void) fprintf(stderr, "  DLT %d (printing not supported)\n",
       dlts[i]);
  }
 }



 exit_tcpdump(0);
}
