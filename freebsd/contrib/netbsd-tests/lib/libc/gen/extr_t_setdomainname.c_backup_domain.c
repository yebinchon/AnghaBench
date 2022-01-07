
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int domain ;


 int ATF_REQUIRE (int) ;
 int ATF_REQUIRE_EQ (int ,int) ;
 int DOMAIN_BACKUP_FILE ;
 int MAXHOSTNAMELEN ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;
 int close (int) ;
 int getdomainname (char*,int) ;
 int memset (char*,int ,int) ;
 int open (int ,int,int) ;
 size_t strnlen (char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
backup_domain(void)
{
 char domain[MAXHOSTNAMELEN];
 int fd;
 size_t l;
 ssize_t r,n = 0;

 memset(domain, 0, sizeof(domain));

 ATF_REQUIRE_EQ(0, getdomainname(domain, sizeof(domain)));
 l = strnlen(domain, MAXHOSTNAMELEN);
 fd = open(DOMAIN_BACKUP_FILE, O_WRONLY | O_CREAT | O_EXCL, 0644);
 ATF_REQUIRE(fd >= 0);
 while ((r = write(fd, domain + n, l - n)) > 0)
  n += r;
 ATF_REQUIRE_EQ(0, r);
 close(fd);
}
