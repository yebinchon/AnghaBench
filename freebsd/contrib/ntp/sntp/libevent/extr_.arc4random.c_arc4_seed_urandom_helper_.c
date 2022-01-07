
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int ADD_ENTROPY ;
 int O_RDONLY ;
 int arc4_addrandom (unsigned char*,int) ;
 int arc4_seeded_ok ;
 int close (int) ;
 int evutil_memclear_ (unsigned char*,int) ;
 int evutil_open_closeonexec_ (char const*,int ,int ) ;
 size_t read_all (int,unsigned char*,int) ;

__attribute__((used)) static int arc4_seed_urandom_helper_(const char *fname)
{
 unsigned char buf[ADD_ENTROPY];
 int fd;
 size_t n;

 fd = evutil_open_closeonexec_(fname, O_RDONLY, 0);
 if (fd<0)
  return -1;
 n = read_all(fd, buf, sizeof(buf));
 close(fd);
 if (n != sizeof(buf))
  return -1;
 arc4_addrandom(buf, sizeof(buf));
 evutil_memclear_(buf, sizeof(buf));
 arc4_seeded_ok = 1;
 return 0;
}
