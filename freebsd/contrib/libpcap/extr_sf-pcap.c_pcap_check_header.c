
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_int ;
struct pcap_sf_pkthdr {int dummy; } ;
struct pcap_sf_patched_pkthdr {int dummy; } ;
struct pcap_sf {int hdrsize; void* lengths_swapped; void* scale_type; } ;
struct pcap_file_header {int version_major; int version_minor; scalar_t__ thiszone; scalar_t__ sigfigs; scalar_t__ snaplen; scalar_t__ linktype; scalar_t__ magic; } ;
struct TYPE_6__ {int tstamp_precision; } ;
struct TYPE_7__ {int swapped; int version_major; int version_minor; scalar_t__ tzoff; scalar_t__ snapshot; scalar_t__ linktype; int bufsize; int cleanup_op; int * buffer; TYPE_1__ opt; struct pcap_sf* priv; int next_packet_op; int linktype_ext; } ;
typedef TYPE_2__ pcap_t ;
typedef int hdr ;
typedef scalar_t__ bpf_u_int32 ;
typedef int FILE ;


 scalar_t__ DLT_EN10MB ;
 scalar_t__ KUZNETZOV_TCPDUMP_MAGIC ;
 int LT_LINKTYPE (scalar_t__) ;
 int LT_LINKTYPE_EXT (scalar_t__) ;
 void* MAYBE_SWAPPED ;
 void* NOT_SWAPPED ;
 scalar_t__ NSEC_TCPDUMP_MAGIC ;
 void* PASS_THROUGH ;
 int PCAP_ERRBUF_SIZE ;


 int PCAP_VERSION_MAJOR ;
 int PCAP_VERSION_MINOR ;
 void* SCALE_DOWN ;
 void* SCALE_UP ;
 scalar_t__ SWAPLONG (scalar_t__) ;
 void* SWAPPED ;
 void* SWAPSHORT (int) ;
 scalar_t__ TCPDUMP_MAGIC ;
 int errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (char*,int,int,int *) ;
 int free (TYPE_2__*) ;
 scalar_t__ linktype_to_dlt (int ) ;
 int * malloc (int) ;
 scalar_t__ max_snaplen_for_dlt (scalar_t__) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int pcap_next_packet ;
 TYPE_2__* pcap_open_offline_common (char*,int) ;
 int pcap_snprintf (char*,int ,char*,...) ;
 int sf_cleanup ;

pcap_t *
pcap_check_header(bpf_u_int32 magic, FILE *fp, u_int precision, char *errbuf,
    int *err)
{
 struct pcap_file_header hdr;
 size_t amt_read;
 pcap_t *p;
 int swapped = 0;
 struct pcap_sf *ps;




 *err = 0;






 if (magic != TCPDUMP_MAGIC && magic != KUZNETZOV_TCPDUMP_MAGIC &&
     magic != NSEC_TCPDUMP_MAGIC) {
  magic = SWAPLONG(magic);
  if (magic != TCPDUMP_MAGIC && magic != KUZNETZOV_TCPDUMP_MAGIC &&
      magic != NSEC_TCPDUMP_MAGIC)
   return (((void*)0));
  swapped = 1;
 }





 hdr.magic = magic;
 amt_read = fread(((char *)&hdr) + sizeof hdr.magic, 1,
     sizeof(hdr) - sizeof(hdr.magic), fp);
 if (amt_read != sizeof(hdr) - sizeof(hdr.magic)) {
  if (ferror(fp)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "error reading dump file");
  } else {
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "truncated dump file; tried to read %lu file header bytes, only got %lu",
       (unsigned long)sizeof(hdr),
       (unsigned long)amt_read);
  }
  *err = 1;
  return (((void*)0));
 }




 if (swapped) {
  hdr.version_major = SWAPSHORT(hdr.version_major);
  hdr.version_minor = SWAPSHORT(hdr.version_minor);
  hdr.thiszone = SWAPLONG(hdr.thiszone);
  hdr.sigfigs = SWAPLONG(hdr.sigfigs);
  hdr.snaplen = SWAPLONG(hdr.snaplen);
  hdr.linktype = SWAPLONG(hdr.linktype);
 }

 if (hdr.version_major < PCAP_VERSION_MAJOR) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "archaic pcap savefile format");
  *err = 1;
  return (((void*)0));
 }





 if (! ((hdr.version_major == PCAP_VERSION_MAJOR &&
  hdr.version_minor <= PCAP_VERSION_MINOR) ||
        (hdr.version_major == 543 &&
  hdr.version_minor == 0))) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
    "unsupported pcap savefile version %u.%u",
    hdr.version_major, hdr.version_minor);
  *err = 1;
  return ((void*)0);
 }





 p = pcap_open_offline_common(errbuf, sizeof (struct pcap_sf));
 if (p == ((void*)0)) {

  *err = 1;
  return (((void*)0));
 }
 p->swapped = swapped;
 p->version_major = hdr.version_major;
 p->version_minor = hdr.version_minor;
 p->tzoff = hdr.thiszone;
 p->snapshot = hdr.snaplen;
 if (p->snapshot <= 0) {
  p->snapshot = max_snaplen_for_dlt(hdr.linktype);
 }
 p->linktype = linktype_to_dlt(LT_LINKTYPE(hdr.linktype));
 p->linktype_ext = LT_LINKTYPE_EXT(hdr.linktype);

 p->next_packet_op = pcap_next_packet;

 ps = p->priv;

 p->opt.tstamp_precision = precision;





 switch (precision) {

 case 129:
  if (magic == NSEC_TCPDUMP_MAGIC) {





   ps->scale_type = SCALE_DOWN;
  } else {




   ps->scale_type = PASS_THROUGH;
  }
  break;

 case 128:
  if (magic == NSEC_TCPDUMP_MAGIC) {




   ps->scale_type = PASS_THROUGH;
  } else {





   ps->scale_type = SCALE_UP;
  }
  break;

 default:
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "unknown time stamp resolution %u", precision);
  free(p);
  *err = 1;
  return (((void*)0));
 }
 switch (hdr.version_major) {

 case 2:
  if (hdr.version_minor < 3)
   ps->lengths_swapped = SWAPPED;
  else if (hdr.version_minor == 3)
   ps->lengths_swapped = MAYBE_SWAPPED;
  else
   ps->lengths_swapped = NOT_SWAPPED;
  break;

 case 543:
  ps->lengths_swapped = SWAPPED;
  break;

 default:
  ps->lengths_swapped = NOT_SWAPPED;
  break;
 }

 if (magic == KUZNETZOV_TCPDUMP_MAGIC) {
  ps->hdrsize = sizeof(struct pcap_sf_patched_pkthdr);

  if (p->linktype == DLT_EN10MB) {
   p->snapshot += 14;
  }
 } else
  ps->hdrsize = sizeof(struct pcap_sf_pkthdr);
 p->bufsize = p->snapshot;
 if (p->bufsize > 2048)
  p->bufsize = 2048;
 p->buffer = malloc(p->bufsize);
 if (p->buffer == ((void*)0)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE, "out of memory");
  free(p);
  *err = 1;
  return (((void*)0));
 }

 p->cleanup_op = sf_cleanup;

 return (p);
}
