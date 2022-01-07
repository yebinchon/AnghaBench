
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;


 scalar_t__ ERANGE ;
 long INT_MAX ;
 int PCAP_ERRBUF_SIZE ;
 scalar_t__ errno ;
 int pcap_snprintf (char*,int ,char*,char*) ;
 int strlen (char*) ;
 long strtol (char*,char**,int) ;

__attribute__((used)) static char *
split_dname(char *device, u_int *unitp, char *ebuf)
{
 char *cp;
 char *eos;
 long unit;




 cp = device + strlen(device) - 1;
 if (*cp < '0' || *cp > '9') {
  pcap_snprintf(ebuf, PCAP_ERRBUF_SIZE, "%s missing unit number",
      device);
  return (((void*)0));
 }


 while (cp-1 >= device && *(cp-1) >= '0' && *(cp-1) <= '9')
  cp--;

 errno = 0;
 unit = strtol(cp, &eos, 10);
 if (*eos != '\0') {
  pcap_snprintf(ebuf, PCAP_ERRBUF_SIZE, "%s bad unit number", device);
  return (((void*)0));
 }
 if (errno == ERANGE || unit > INT_MAX) {
  pcap_snprintf(ebuf, PCAP_ERRBUF_SIZE, "%s unit number too large",
      device);
  return (((void*)0));
 }
 if (unit < 0) {
  pcap_snprintf(ebuf, PCAP_ERRBUF_SIZE, "%s unit number is negative",
      device);
  return (((void*)0));
 }
 *unitp = (u_int)unit;
 return (cp);
}
