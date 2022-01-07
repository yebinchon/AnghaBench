
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pcap_sf_pkthdr {int dummy; } ;
struct pcap_pkthdr {scalar_t__ caplen; } ;
struct pcap_file_header {scalar_t__ magic; scalar_t__ version_major; scalar_t__ version_minor; scalar_t__ linktype; scalar_t__ snaplen; } ;
typedef int ph ;
typedef int off_t ;
typedef int hdr ;
struct TYPE_2__ {scalar_t__ linktype; } ;
typedef int FILE ;


 int LOG_ERR ;
 int LOG_WARNING ;
 scalar_t__ PCAP_VERSION_MAJOR ;
 scalar_t__ PCAP_VERSION_MINOR ;
 scalar_t__ PFLOGD_MAXSNAPLEN ;
 int SEEK_CUR ;
 int SEEK_SET ;
 scalar_t__ TCPDUMP_MAGIC ;
 scalar_t__ cur_snaplen ;
 int feof (int *) ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,long,int ) ;
 TYPE_1__* hpcap ;
 int logmsg (int ,char*,...) ;
 scalar_t__ set_snaplen (scalar_t__) ;

int
scan_dump(FILE *fp, off_t size)
{
 struct pcap_file_header hdr;



 struct pcap_pkthdr ph;

 off_t pos;
 (void) fseek(fp, 0L, SEEK_SET);

 if (fread((char *)&hdr, sizeof(hdr), 1, fp) != 1) {
  logmsg(LOG_ERR, "Short file header");
  return (1);
 }

 if (hdr.magic != TCPDUMP_MAGIC ||
     hdr.version_major != PCAP_VERSION_MAJOR ||
     hdr.version_minor != PCAP_VERSION_MINOR ||
     hdr.linktype != hpcap->linktype ||
     hdr.snaplen > PFLOGD_MAXSNAPLEN) {
  return (1);
 }

 pos = sizeof(hdr);

 while (!feof(fp)) {
  off_t len = fread((char *)&ph, 1, sizeof(ph), fp);
  if (len == 0)
   break;

  if (len != sizeof(ph))
   goto error;
  if (ph.caplen > hdr.snaplen || ph.caplen > PFLOGD_MAXSNAPLEN)
   goto error;
  pos += sizeof(ph) + ph.caplen;
  if (pos > size)
   goto error;
  fseek(fp, ph.caplen, SEEK_CUR);
 }

 if (pos != size)
  goto error;

 if (hdr.snaplen != cur_snaplen) {
  logmsg(LOG_WARNING,
         "Existing file has different snaplen %u, using it",
         hdr.snaplen);
  if (set_snaplen(hdr.snaplen)) {
   logmsg(LOG_WARNING,
          "Failed, using old settings, offset %llu",
          (unsigned long long) size);
  }
 }

 return (0);

 error:
 logmsg(LOG_ERR, "Corrupted log file.");
 return (1);
}
