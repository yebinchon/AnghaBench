
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int LOG_ERR ;
 int SYS_HOSTNAME ;
 int memset (char*,int ,size_t) ;
 int newline_to_null (char*) ;
 scalar_t__ read (int,char*,size_t) ;
 int strip_domain (char*) ;
 int syslog (int ,char*,int ) ;

__attribute__((used)) static int read_hostname(int fd, char *name, size_t len)
{
 int rc;
 memset(name, 0, len);
 if (read(fd, name, len-1) >= 0) {
  newline_to_null(name);
  strip_domain(name);
  rc = 0;
 } else {
  syslog(LOG_ERR, "Read %s Failed\n", SYS_HOSTNAME);
  rc = -EIO;
 }
 return rc;
}
