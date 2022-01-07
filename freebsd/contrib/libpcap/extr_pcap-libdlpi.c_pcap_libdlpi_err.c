
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCAP_ERRBUF_SIZE ;
 int dlpi_strerror (int) ;
 int pcap_snprintf (char*,int ,char*,char const*,char const*,int ) ;

__attribute__((used)) static void
pcap_libdlpi_err(const char *linkname, const char *func, int err, char *errbuf)
{
 pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "libpcap: %s failed on %s: %s",
     func, linkname, dlpi_strerror(err));
}
