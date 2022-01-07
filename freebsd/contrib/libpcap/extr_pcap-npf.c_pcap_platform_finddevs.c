
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pcap_if_list_t ;
typedef int bpf_u_int32 ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ DWORD ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_IF_LOOPBACK ;
 int PacketGetAdapterNames (char*,scalar_t__*) ;
 scalar_t__ PacketIsLoopbackAdapter (char*) ;
 int free (char*) ;
 int get_if_flags (char*,int *,char*) ;
 scalar_t__ malloc (scalar_t__) ;
 int pcap_add_if_npf (int *,char*,int ,char const*,char*) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int pcap_win32_err_to_str (scalar_t__,char*) ;
 scalar_t__ strlen (char const*) ;

int
pcap_platform_finddevs(pcap_if_list_t *devlistp, char *errbuf)
{
 int ret = 0;
 const char *desc;
 char *AdaptersName;
 ULONG NameLength;
 char *name;
 char our_errbuf[PCAP_ERRBUF_SIZE+1];
 NameLength = 0;
 if (!PacketGetAdapterNames(((void*)0), &NameLength))
 {
  DWORD last_error = GetLastError();

  if (last_error != ERROR_INSUFFICIENT_BUFFER)
  {
   pcap_win32_err_to_str(last_error, our_errbuf);
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "PacketGetAdapterNames: %s", our_errbuf);
   return (-1);
  }
 }

 if (NameLength <= 0)
  return 0;
 AdaptersName = (char*) malloc(NameLength);
 if (AdaptersName == ((void*)0))
 {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "Cannot allocate enough memory to list the adapters.");
  return (-1);
 }

 if (!PacketGetAdapterNames(AdaptersName, &NameLength)) {
  pcap_win32_err_to_str(GetLastError(), our_errbuf);
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "PacketGetAdapterNames: %s",
      our_errbuf);
  free(AdaptersName);
  return (-1);
 }
 desc = &AdaptersName[0];
 while (*desc != '\0' || *(desc + 1) != '\0')
  desc++;







 desc += 2;




 name = &AdaptersName[0];
 while (*name != '\0') {
  bpf_u_int32 flags = 0;
  if (get_if_flags(name, &flags, errbuf) == -1) {



   ret = -1;
   break;
  }




  if (pcap_add_if_npf(devlistp, name, flags, desc,
      errbuf) == -1) {



   ret = -1;
   break;
  }
  name += strlen(name) + 1;
  desc += strlen(desc) + 1;
 }

 free(AdaptersName);
 return (ret);
}
