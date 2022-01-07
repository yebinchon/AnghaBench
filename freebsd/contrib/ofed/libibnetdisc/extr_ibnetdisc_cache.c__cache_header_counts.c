
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int IBND_DEBUG (char*,int ) ;
 int IBND_FABRIC_CACHE_BUFLEN ;
 int IBND_FABRIC_CACHE_COUNT_OFFSET ;
 int SEEK_SET ;
 scalar_t__ _marshall32 (int *,unsigned int) ;
 int errno ;
 scalar_t__ ibnd_write (int,int *,size_t) ;
 scalar_t__ lseek (int,int ,int ) ;
 int strerror (int ) ;

__attribute__((used)) static int _cache_header_counts(int fd, unsigned int node_count,
    unsigned int port_count)
{
 uint8_t buf[IBND_FABRIC_CACHE_BUFLEN];
 size_t offset = 0;

 offset += _marshall32(buf + offset, node_count);
 offset += _marshall32(buf + offset, port_count);

 if (lseek(fd, IBND_FABRIC_CACHE_COUNT_OFFSET, SEEK_SET) < 0) {
  IBND_DEBUG("lseek: %s\n", strerror(errno));
  return -1;
 }

 if (ibnd_write(fd, buf, offset) < 0)
  return -1;

 return 0;
}
