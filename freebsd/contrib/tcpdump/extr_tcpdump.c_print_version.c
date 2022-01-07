
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SSLEAY_VERSION ;
 char* SSLeay_version (int ) ;
 char* WDversion ;
 char* Wpcap_version ;
 int fprintf (int ,char*,...) ;
 char* nd_smi_version_string () ;
 char* pcap_lib_version () ;
 char* program_name ;
 int stderr ;

__attribute__((used)) static void
print_version(void)
{
 extern char version[];




 static char pcap_version[] = "unknown";


 const char *smi_version_string;
 (void)fprintf(stderr, "%s version %s\n", program_name, version);
 (void)fprintf(stderr, "libpcap version %s\n", pcap_version);







 smi_version_string = nd_smi_version_string();
 if (smi_version_string != ((void*)0))
  (void)fprintf (stderr, "SMI-library: %s\n", smi_version_string);
}
