
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int domain ;


 int DOMAIN_BACKUP_FILE ;
 int MAXHOSTNAMELEN ;
 int O_RDONLY ;
 int close (int) ;
 int err (int,char*) ;
 int memset (char*,int ,int) ;
 int open (int ,int ) ;
 int read (int,char*,int) ;
 scalar_t__ setdomainname (char*,int) ;

__attribute__((used)) static void
restore_domain(void)
{
 char domain[MAXHOSTNAMELEN];
 int fd;
 ssize_t r, n = 0;

 memset(domain, 0, sizeof(domain));
 if ((fd = open(DOMAIN_BACKUP_FILE, O_RDONLY)) < 0)
  err(1, "open");
 while ((r = read(fd, domain + n, sizeof(domain) - n)) > 0)
  n += r;
 if (r < 0)
  err(1, "read");
 if (setdomainname(domain, n) != 0)
  err(1, "setdomainname");
 close(fd);
}
