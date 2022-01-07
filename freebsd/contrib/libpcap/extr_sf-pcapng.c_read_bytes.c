
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int PCAP_ERRBUF_SIZE ;
 int errno ;
 scalar_t__ ferror (int *) ;
 size_t fread (void*,int,size_t,int *) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,int ,char*) ;
 int pcap_snprintf (char*,int ,char*,unsigned long,unsigned long) ;

__attribute__((used)) static int
read_bytes(FILE *fp, void *buf, size_t bytes_to_read, int fail_on_eof,
    char *errbuf)
{
 size_t amt_read;

 amt_read = fread(buf, 1, bytes_to_read, fp);
 if (amt_read != bytes_to_read) {
  if (ferror(fp)) {
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "error reading dump file");
  } else {
   if (amt_read == 0 && !fail_on_eof)
    return (0);
   pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
       "truncated dump file; tried to read %lu bytes, only got %lu",
       (unsigned long)bytes_to_read,
       (unsigned long)amt_read);
  }
  return (-1);
 }
 return (1);
}
