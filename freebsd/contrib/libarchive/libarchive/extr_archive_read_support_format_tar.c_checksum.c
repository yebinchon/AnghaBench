
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
struct archive_entry_header_ustar {char* checksum; } ;


 scalar_t__ tar_atol (char*,int) ;

__attribute__((used)) static int
checksum(struct archive_read *a, const void *h)
{
 const unsigned char *bytes;
 const struct archive_entry_header_ustar *header;
 int check, sum;
 size_t i;

 (void)a;
 bytes = (const unsigned char *)h;
 header = (const struct archive_entry_header_ustar *)h;


 for (i = 0; i < sizeof(header->checksum); ++i) {
  char c = header->checksum[i];
  if (c != ' ' && c != '\0' && (c < '0' || c > '7'))
   return 0;
 }





 sum = (int)tar_atol(header->checksum, sizeof(header->checksum));
 check = 0;
 for (i = 0; i < 148; i++)
  check += (unsigned char)bytes[i];
 for (; i < 156; i++)
  check += 32;
 for (; i < 512; i++)
  check += (unsigned char)bytes[i];
 if (sum == check)
  return (1);






 check = 0;
 for (i = 0; i < 148; i++)
  check += (signed char)bytes[i];
 for (; i < 156; i++)
  check += 32;
 for (; i < 512; i++)
  check += (signed char)bytes[i];
 if (sum == check)
  return (1);

 return (0);
}
