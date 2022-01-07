
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
typedef int ssize_t ;


 int SFX_MAX_ADDR ;
 int SFX_MIN_ADDR ;
 char* _7ZIP_SIGNATURE ;
 char* __archive_read_ahead (struct archive_read*,int,int*) ;
 int check_7zip_header_in_sfx (char const*) ;
 scalar_t__ memcmp (char const*,char*,int) ;

__attribute__((used)) static int
archive_read_format_7zip_bid(struct archive_read *a, int best_bid)
{
 const char *p;



 if (best_bid > 32)
  return (-1);

 if ((p = __archive_read_ahead(a, 6, ((void*)0))) == ((void*)0))
  return (0);



 if (memcmp(p, _7ZIP_SIGNATURE, 6) == 0)
  return (48);
 if ((p[0] == 'M' && p[1] == 'Z') || memcmp(p, "\x7F\x45LF", 4) == 0) {
  ssize_t offset = SFX_MIN_ADDR;
  ssize_t window = 4096;
  ssize_t bytes_avail;
  while (offset + window <= (SFX_MAX_ADDR)) {
   const char *buff = __archive_read_ahead(a,
     offset + window, &bytes_avail);
   if (buff == ((void*)0)) {

    window >>= 1;
    if (window < 0x40)
     return (0);
    continue;
   }
   p = buff + offset;
   while (p + 32 < buff + bytes_avail) {
    int step = check_7zip_header_in_sfx(p);
    if (step == 0)
     return (48);
    p += step;
   }
   offset = p - buff;
  }
 }
 return (0);
}
