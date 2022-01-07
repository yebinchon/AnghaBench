
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int dname ;


 scalar_t__ EACCES ;
 scalar_t__ ENOENT ;
 scalar_t__ EPERM ;
 int O_RDWR ;
 int PCAP_DEV_PREFIX ;
 int PCAP_ERRBUF_SIZE ;
 int PCAP_ERROR ;
 int PCAP_ERROR_NO_SUCH_DEVICE ;
 int PCAP_ERROR_PERM_DENIED ;
 int close (int) ;
 scalar_t__ errno ;
 int get_dlpi_ppa (int,char*,scalar_t__,scalar_t__*,char*) ;
 int open (char*,int ) ;
 int pcap_fmt_errmsg_for_errno (char*,int ,scalar_t__,char*,char*) ;
 int pcap_snprintf (char*,int,char*,char const*,...) ;
 char* split_dname (char*,scalar_t__*,char*) ;
 int strlcpy (char*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int
open_dlpi_device(const char *name, u_int *ppa, char *errbuf)
{
 int status;
 char dname[100];
 char *cp;
 int fd;



 char dname2[100];
 if (*name == '/')
  strlcpy(dname, name, sizeof(dname));
 else
  pcap_snprintf(dname, sizeof(dname), "%s/%s", PCAP_DEV_PREFIX,
      name);





 cp = split_dname(dname, ppa, errbuf);
 if (cp == ((void*)0))
  return (PCAP_ERROR_NO_SUCH_DEVICE);





 strlcpy(dname2, dname, sizeof(dname));
 *cp = '\0';


 if ((fd = open(dname, O_RDWR)) < 0) {
  if (errno != ENOENT) {
   if (errno == EPERM || errno == EACCES)
    status = PCAP_ERROR_PERM_DENIED;
   else
    status = PCAP_ERROR;
   pcap_fmt_errmsg_for_errno(errbuf, PCAP_ERRBUF_SIZE,
       errno, "%s", dname);
   return (status);
  }


  if ((fd = open(dname2, O_RDWR)) < 0) {
   if (errno == ENOENT) {
    status = PCAP_ERROR_NO_SUCH_DEVICE;
    pcap_snprintf(errbuf, PCAP_ERRBUF_SIZE,
        "%s: No DLPI device found", name);
   } else {
    if (errno == EPERM || errno == EACCES)
     status = PCAP_ERROR_PERM_DENIED;
    else
     status = PCAP_ERROR;
    pcap_fmt_errmsg_for_errno(errbuf,
        PCAP_ERRBUF_SIZE, errno, "%s", dname2);
   }
   return (status);
  }

  *ppa = 0;
 }

 return (fd);
}
