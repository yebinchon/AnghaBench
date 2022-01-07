
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (char*,char const*,int) ;
 int pcap_snprintf (char*,int,char*) ;

int sock_bufferize(const char *buffer, int size, char *tempbuf, int *offset, int totsize, int checkonly, char *errbuf, int errbuflen)
{
 if ((*offset + size) > totsize)
 {
  if (errbuf)
   pcap_snprintf(errbuf, errbuflen, "Not enough space in the temporary send buffer.");
  return -1;
 }

 if (!checkonly)
  memcpy(tempbuf + (*offset), buffer, size);

 (*offset) += size;

 return 0;
}
