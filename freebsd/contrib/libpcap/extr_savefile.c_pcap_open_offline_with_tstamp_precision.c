
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
typedef int pcap_t ;
typedef int FILE ;


 int PCAP_ERRBUF_SIZE ;
 int SET_BINMODE (int *) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*,char const*) ;
 int * pcap_fopen_offline_with_tstamp_precision (int *,int ,char*) ;
 int pcap_snprintf (char*,int ,char*) ;
 int * stdin ;

pcap_t *
pcap_open_offline_with_tstamp_precision(const char *fname, u_int precision,
     char *errbuf)
{
 FILE *fp;
 pcap_t *p;

 if (fname == ((void*)0)) {
  pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
      "A null pointer was supplied as the file name");
  return (((void*)0));
 }
 if (fname[0] == '-' && fname[1] == '\0')
 {
  fp = stdin;







 }
 else {






  fp = fopen(fname, "rb");
  if (fp == ((void*)0)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "%s", fname);
   return (((void*)0));
  }
 }
 p = pcap_fopen_offline_with_tstamp_precision(fp, precision, errbuf);
 if (p == ((void*)0)) {
  if (fp != stdin)
   fclose(fp);
 }
 return (p);
}
