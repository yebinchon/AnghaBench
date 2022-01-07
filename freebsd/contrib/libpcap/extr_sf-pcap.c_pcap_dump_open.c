
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int linktype_ext; int errbuf; int linktype; int activated; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_dumper_t ;
typedef int FILE ;


 int PCAP_ERRBUF_SIZE ;
 int dlt_to_linktype (int ) ;
 int errno ;
 int * fopen (char const*,char*) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*,char const*) ;
 int * pcap_setup_dump (TYPE_1__*,int,int *,char const*) ;
 int pcap_snprintf (int ,int ,char*,...) ;
 int * stdout ;

pcap_dumper_t *
pcap_dump_open(pcap_t *p, const char *fname)
{
 FILE *f;
 int linktype;





 if (!p->activated) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "%s: not-yet-activated pcap_t passed to pcap_dump_open",
      fname);
  return (((void*)0));
 }
 linktype = dlt_to_linktype(p->linktype);
 if (linktype == -1) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "%s: link-layer type %d isn't supported in savefiles",
      fname, p->linktype);
  return (((void*)0));
 }
 linktype |= p->linktype_ext;

 if (fname == ((void*)0)) {
  pcap_snprintf(p->errbuf, PCAP_ERRBUF_SIZE,
      "A null pointer was supplied as the file name");
  return ((void*)0);
 }
 if (fname[0] == '-' && fname[1] == '\0') {
  f = stdout;
  fname = "standard output";
 } else {






  f = fopen(fname, "wb");
  if (f == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
       errno, "%s", fname);
   return (((void*)0));
  }
 }
 return (pcap_setup_dump(p, linktype, f, fname));
}
