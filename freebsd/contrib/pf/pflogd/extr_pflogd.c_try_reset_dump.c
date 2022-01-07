
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct pcap_file_header {int linktype; scalar_t__ sigfigs; int snaplen; int thiszone; int version_minor; int version_major; int magic; } ;
typedef int hdr ;
struct TYPE_2__ {int linktype; int snapshot; int tzoff; } ;
typedef int FILE ;


 int LOG_ERR ;
 int LOG_NOTICE ;
 int LOG_WARNING ;
 int PCAP_VERSION_MAJOR ;
 int PCAP_VERSION_MINOR ;
 int TCPDUMP_MAGIC ;
 int _IONBF ;
 int close (int) ;
 scalar_t__ cur_snaplen ;
 int * dpcap ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int filename ;
 int fileno (int *) ;
 int flush_buffer (int *) ;
 int fstat (int ,struct stat*) ;
 int fwrite (char*,int,int,int *) ;
 TYPE_1__* hpcap ;
 int logmsg (int ,char*,...) ;
 scalar_t__ priv_move_log () ;
 int priv_open_log () ;
 scalar_t__ scan_dump (int *,scalar_t__) ;
 scalar_t__ set_snaplen (scalar_t__) ;
 int set_suspended (int ) ;
 scalar_t__ setvbuf (int *,int *,int ,int ) ;
 scalar_t__ snaplen ;
 int strerror (int ) ;

int
try_reset_dump(int nomove)
{
 struct pcap_file_header hdr;
 struct stat st;
 int fd;
 FILE *fp;

 if (hpcap == ((void*)0))
  return (-1);

 if (dpcap) {
  flush_buffer(dpcap);
  fclose(dpcap);
  dpcap = ((void*)0);
 }





 fd = priv_open_log();
 if (fd < 0)
  return (-1);

 fp = fdopen(fd, "a+");

 if (fp == ((void*)0)) {
  logmsg(LOG_ERR, "Error: %s: %s", filename, strerror(errno));
  close(fd);
  return (-1);
 }
 if (fstat(fileno(fp), &st) == -1) {
  logmsg(LOG_ERR, "Error: %s: %s", filename, strerror(errno));
  fclose(fp);
  return (-1);
 }


 if (setvbuf(fp, ((void*)0), _IONBF, 0)) {
  logmsg(LOG_ERR, "Failed to set output buffers");
  fclose(fp);
  return (-1);
 }



 if (st.st_size == 0) {
  if (snaplen != cur_snaplen) {
   logmsg(LOG_NOTICE, "Using snaplen %d", snaplen);
   if (set_snaplen(snaplen))
    logmsg(LOG_WARNING,
        "Failed, using old settings");
  }
  hdr.magic = 0xa1b2c3d4;
  hdr.version_major = PCAP_VERSION_MAJOR;
  hdr.version_minor = PCAP_VERSION_MINOR;
  hdr.thiszone = hpcap->tzoff;
  hdr.snaplen = hpcap->snapshot;
  hdr.sigfigs = 0;
  hdr.linktype = hpcap->linktype;

  if (fwrite((char *)&hdr, sizeof(hdr), 1, fp) != 1) {
   fclose(fp);
   return (-1);
  }
 } else if (scan_dump(fp, st.st_size)) {
  fclose(fp);
  if (nomove || priv_move_log()) {
   logmsg(LOG_ERR,
       "Invalid/incompatible log file, move it away");
   return (-1);
  }
  return (1);
 }

 dpcap = fp;

 set_suspended(0);
 flush_buffer(fp);

 return (0);
}
