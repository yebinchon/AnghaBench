
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int errbuf; int snapshot; int tzoff; } ;
typedef TYPE_1__ pcap_t ;
typedef int pcap_dumper_t ;
typedef int FILE ;


 int PCAP_ERRBUF_SIZE ;
 int SET_BINMODE (int *) ;
 int _IONBF ;
 int errno ;
 int fclose (int *) ;
 int pcap_fmt_errmsg_for_errno (int ,int ,int ,char*,char const*) ;
 int setvbuf (int *,int *,int ,int ) ;
 int sf_write_header (TYPE_1__*,int *,int,int ,int ) ;
 int * stdout ;

__attribute__((used)) static pcap_dumper_t *
pcap_setup_dump(pcap_t *p, int linktype, FILE *f, const char *fname)
{
 if (sf_write_header(p, f, linktype, p->tzoff, p->snapshot) == -1) {
  pcap_fmt_errmsg_for_errno(p->errbuf, PCAP_ERRBUF_SIZE,
      errno, "Can't write to %s", fname);
  if (f != stdout)
   (void)fclose(f);
  return (((void*)0));
 }
 return ((pcap_dumper_t *)f);
}
