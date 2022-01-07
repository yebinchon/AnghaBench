
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int sysctl ;
typedef int pcap_t ;
typedef int parent ;
typedef int newdev ;
struct TYPE_3__ {int ndo_snaplen; int ndo_tstamp_precision; } ;
typedef TYPE_1__ netdissect_options ;


 scalar_t__ Bflag ;
 scalar_t__ Iflag ;
 scalar_t__ Jflag ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_PERM_DENIED ;
 int PCAP_ERROR_RFMON_NOTSUP ;
 int PCAP_WARNING ;
 int PCAP_WARNING_PROMISC_NOTSUP ;
 int Qflag ;
 int atoi (char const*) ;
 int error (char*,char const*,...) ;
 scalar_t__ immediate_mode ;
 int jflag ;
 int pcap_activate (int *) ;
 int pcap_can_set_rfmon (int *) ;
 int pcap_close (int *) ;
 int * pcap_create (char const*,char*) ;
 char* pcap_geterr (int *) ;
 int * pcap_open_live (char const*,int ,int,int,char*) ;
 int pcap_set_buffer_size (int *,scalar_t__) ;
 int pcap_set_immediate_mode (int *,int) ;
 int pcap_set_promisc (int *,int) ;
 int pcap_set_rfmon (int *,int) ;
 int pcap_set_snaplen (int *,int ) ;
 int pcap_set_timeout (int *,int) ;
 int pcap_set_tstamp_precision (int *,int ) ;
 int pcap_set_tstamp_type (int *,int) ;
 int pcap_setdirection (int *,int) ;
 char* pcap_statustostr (int) ;
 int pflag ;
 int show_tstamp_types_and_exit (int *,char const*) ;
 int snprintf (char*,int,char*,...) ;
 int strlcpy (char*,char const*,int) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;
 int * strstr (char*,char*) ;
 int supports_monitor_mode ;
 int sysctlbyname (char*,char*,size_t*,int *,int ) ;
 char* tstamp_precision_to_string (int ) ;
 int warning (char*,char const*,...) ;

__attribute__((used)) static pcap_t *
open_interface(const char *device, netdissect_options *ndo, char *ebuf)
{
 pcap_t *pc;
 *ebuf = '\0';
 pc = pcap_open_live(device, ndo->ndo_snaplen, !pflag, 1000, ebuf);
 if (pc == ((void*)0)) {






  if (strstr(ebuf, "No such device") != ((void*)0))
   return (((void*)0));
  error("%s", ebuf);
 }
 if (*ebuf)
  warning("%s", ebuf);


 return (pc);
}
