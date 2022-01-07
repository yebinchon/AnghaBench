
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int oldstyle; int errbuf; } ;
typedef TYPE_1__ pcap_t ;


 int PCAP_BUF_SIZE ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_PERM_DENIED ;
 int PCAP_ERROR_PROMISC_PERM_DENIED ;
 int PCAP_OPENFLAG_PROMISCUOUS ;
 int PCAP_SRC_FILE ;
 int PCAP_SRC_IFLOCAL ;
 int PCAP_SRC_IFREMOTE ;
 char const* PCAP_SRC_IF_STRING ;
 int pcap_activate (TYPE_1__*) ;
 int pcap_close (TYPE_1__*) ;
 TYPE_1__* pcap_create (char const*,char*) ;
 TYPE_1__* pcap_open_rpcap (char const*,int,int ,int,int *,char*) ;
 scalar_t__ pcap_parsesrcstr (char const*,int*,char*,char*,char*,char*) ;
 int pcap_set_promisc (TYPE_1__*,int) ;
 int pcap_set_snaplen (TYPE_1__*,int) ;
 int pcap_set_timeout (TYPE_1__*,int) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int pcap_statustostr (int) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

pcap_t *
pcap_open_live(const char *device, int snaplen, int promisc, int to_ms, char *errbuf)
{
 pcap_t *p;
 int status;
 p = pcap_create(device, errbuf);
 if (p == ((void*)0))
  return (((void*)0));
 status = pcap_set_snaplen(p, snaplen);
 if (status < 0)
  goto fail;
 status = pcap_set_promisc(p, promisc);
 if (status < 0)
  goto fail;
 status = pcap_set_timeout(p, to_ms);
 if (status < 0)
  goto fail;
 p->oldstyle = 1;
 status = pcap_activate(p);
 if (status < 0)
  goto fail;
 return (p);
fail:
 if (status == PCAP_ERROR)
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "%s: %s", device,
      p->errbuf);
 else if (status == PCAP_ERROR_NO_SUCH_DEVICE ||
     status == PCAP_ERROR_PERM_DENIED ||
     status == PCAP_ERROR_PROMISC_PERM_DENIED)
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "%s: %s (%s)", device,
      pcap_statustostr(status), p->errbuf);
 else
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "%s: %s", device,
      pcap_statustostr(status));
 pcap_close(p);
 return (((void*)0));
}
