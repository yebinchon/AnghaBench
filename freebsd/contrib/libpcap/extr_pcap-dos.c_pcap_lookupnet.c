
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bpf_u_int32 ;
typedef int DWORD ;


 int ARGSUSED (char const*) ;
 scalar_t__ IN_CLASSA (int ) ;
 int IN_CLASSA_NET ;
 scalar_t__ IN_CLASSB (int ) ;
 int IN_CLASSB_NET ;
 scalar_t__ IN_CLASSC (int ) ;
 int IN_CLASSC_NET ;
 int PCAP_ERRBUF_SIZE ;
 int _w32_sin_mask ;
 int _watt_is_init ;
 int htonl (int) ;
 int my_ip_addr ;
 int pcap_snprintf (char*,int ,char*,int) ;
 int strcpy (char*,char*) ;

int pcap_lookupnet (const char *device, bpf_u_int32 *localnet,
                    bpf_u_int32 *netmask, char *errbuf)
{
  DWORD mask, net;

  if (!_watt_is_init)
  {
    strcpy (errbuf, "pcap_open_offline() or pcap_activate() must be "
                    "called first");
    return (-1);
  }

  mask = _w32_sin_mask;
  net = my_ip_addr & mask;
  if (net == 0)
  {
    if (IN_CLASSA(*netmask))
       net = IN_CLASSA_NET;
    else if (IN_CLASSB(*netmask))
       net = IN_CLASSB_NET;
    else if (IN_CLASSC(*netmask))
       net = IN_CLASSC_NET;
    else
    {
      pcap_snprintf (errbuf, PCAP_ERRBUF_SIZE, "inet class for 0x%lx unknown", mask);
      return (-1);
    }
  }
  *localnet = htonl (net);
  *netmask = htonl (mask);

  ARGSUSED (device);
  return (0);
}
