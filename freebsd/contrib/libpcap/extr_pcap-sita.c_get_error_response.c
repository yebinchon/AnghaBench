
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PCAP_ERRBUF_SIZE ;
 int recv (int,char*,int,int ) ;

__attribute__((used)) static char *get_error_response(int fd, char *errbuf) {
 char byte;
 int len = 0;

 while (1) {
  recv(fd, &byte, 1, 0);
  if (errbuf && (len++ < PCAP_ERRBUF_SIZE)) {
   *errbuf++ = byte;
   *errbuf = '\0';
  }
  if (byte == '\0') {
   if (len > 1) { return errbuf; }
   else { return ((void*)0); }
  }
 }
}
