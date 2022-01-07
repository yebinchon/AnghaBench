
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swrap_file_hdr {int magic; int version_major; int version_minor; int timezone; int sigfigs; int link_type; int frame_max_len; } ;
typedef int file_hdr ;


 int O_APPEND ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int SWRAP_FRAME_LENGTH_MAX ;
 int open (char const*,int,int) ;
 int write (int,struct swrap_file_hdr*,int) ;

__attribute__((used)) static int swrap_get_pcap_fd(const char *fname)
{
 static int fd = -1;

 if (fd != -1) return fd;

 fd = open(fname, O_WRONLY|O_CREAT|O_EXCL|O_APPEND, 0644);
 if (fd != -1) {
  struct swrap_file_hdr file_hdr;
  file_hdr.magic = 0xA1B2C3D4;
  file_hdr.version_major = 0x0002;
  file_hdr.version_minor = 0x0004;
  file_hdr.timezone = 0x00000000;
  file_hdr.sigfigs = 0x00000000;
  file_hdr.frame_max_len = SWRAP_FRAME_LENGTH_MAX;
  file_hdr.link_type = 0x0065;

  write(fd, &file_hdr, sizeof(file_hdr));
  return fd;
 }

 fd = open(fname, O_WRONLY|O_APPEND, 0644);

 return fd;
}
