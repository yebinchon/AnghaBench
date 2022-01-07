
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int buf ;


 int PAGE_SIZE ;
 int* crc32_tab ;
 size_t read (int,int *,int) ;

__attribute__((used)) static int
crc32_file(int fd, uint32_t *crc)
{
 uint8_t buf[PAGE_SIZE], *p;
 size_t n;

 *crc = ~0;
 while ((n = read(fd, buf, sizeof(buf))) > 0) {
  p = &buf[0];
  while (n-- > 0)
   *crc = crc32_tab[(*crc ^ *p++) & 0xff] ^ (*crc >> 8);
 }
 *crc = ~*crc;
 return (n);
}
