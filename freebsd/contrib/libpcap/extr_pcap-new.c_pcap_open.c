
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct pcap_rmtauth {int dummy; } ;
struct TYPE_13__ {int nocapture_local; } ;
struct TYPE_14__ {int errbuf; TYPE_1__ opt; } ;
typedef TYPE_2__ pcap_t ;


 int PCAP_BUF_SIZE ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_PERM_DENIED ;
 int PCAP_ERROR_PROMISC_PERM_DENIED ;
 int PCAP_OPENFLAG_MAX_RESPONSIVENESS ;
 int PCAP_OPENFLAG_NOCAPTURE_LOCAL ;
 int PCAP_OPENFLAG_PROMISCUOUS ;



 int pcap_activate (TYPE_2__*) ;
 int pcap_close (TYPE_2__*) ;
 TYPE_2__* pcap_create (char*,char*) ;
 TYPE_2__* pcap_open_offline (char*,char*) ;
 TYPE_2__* pcap_open_rpcap (char const*,int,int,int,struct pcap_rmtauth*,char*) ;
 int pcap_parsesrcstr (char const*,int*,int *,int *,char*,char*) ;
 int pcap_set_immediate_mode (TYPE_2__*,int) ;
 int pcap_set_promisc (TYPE_2__*,int) ;
 int pcap_set_snaplen (TYPE_2__*,int) ;
 int pcap_set_timeout (TYPE_2__*,int) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int pcap_statustostr (int) ;
 int strlcpy (char*,char*,int ) ;
 int strlen (char const*) ;

pcap_t *pcap_open(const char *source, int snaplen, int flags, int read_timeout, struct pcap_rmtauth *auth, char *errbuf)
{
 char name[PCAP_BUF_SIZE];
 int type;
 pcap_t *fp;
 int status;

 if (strlen(source) > PCAP_BUF_SIZE)
 {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "The source string is too long. Cannot handle it correctly.");
  return ((void*)0);
 }





 if (pcap_parsesrcstr(source, &type, ((void*)0), ((void*)0), name, errbuf) == -1)
  return ((void*)0);

 switch (type)
 {
 case 130:
  return pcap_open_offline(name, errbuf);

 case 129:
  fp = pcap_create(name, errbuf);
  break;

 case 128:






  return pcap_open_rpcap(source, snaplen, flags, read_timeout, auth, errbuf);

 default:
  strlcpy(errbuf, "Source type not supported", PCAP_ERRBUF_SIZE);
  return ((void*)0);
 }

 if (fp == ((void*)0))
  return (((void*)0));
 status = pcap_set_snaplen(fp, snaplen);
 if (status < 0)
  goto fail;
 if (flags & PCAP_OPENFLAG_PROMISCUOUS)
 {
  status = pcap_set_promisc(fp, 1);
  if (status < 0)
   goto fail;
 }
 if (flags & PCAP_OPENFLAG_MAX_RESPONSIVENESS)
 {
  status = pcap_set_immediate_mode(fp, 1);
  if (status < 0)
   goto fail;
 }
 status = pcap_set_timeout(fp, read_timeout);
 if (status < 0)
  goto fail;
 status = pcap_activate(fp);
 if (status < 0)
  goto fail;
 return fp;

fail:
 if (status == PCAP_ERROR)
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "%s: %s",
      name, fp->errbuf);
 else if (status == PCAP_ERROR_NO_SUCH_DEVICE ||
     status == PCAP_ERROR_PERM_DENIED ||
     status == PCAP_ERROR_PROMISC_PERM_DENIED)
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "%s: %s (%s)",
      name, pcap_statustostr(status), fp->errbuf);
 else
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "%s: %s",
      name, pcap_statustostr(status));
 pcap_close(fp);
 return ((void*)0);
}
