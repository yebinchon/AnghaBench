
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int dummy; } ;
struct archive_entry_header_ustar {char* typeflag; int rdevminor; int rdevmajor; int size; int mtime; int gid; int uid; int mode; int version; int magic; } ;


 char* __archive_read_ahead (struct archive_read*,int,int *) ;
 scalar_t__ archive_block_is_null (char const*) ;
 int checksum (struct archive_read*,char const*) ;
 scalar_t__ memcmp (int ,char*,int) ;
 scalar_t__ validate_number_field (int ,int) ;

__attribute__((used)) static int
archive_read_format_tar_bid(struct archive_read *a, int best_bid)
{
 int bid;
 const char *h;
 const struct archive_entry_header_ustar *header;

 (void)best_bid;

 bid = 0;


 h = __archive_read_ahead(a, 512, ((void*)0));
 if (h == ((void*)0))
  return (-1);


 if (h[0] == 0 && archive_block_is_null(h)) {





  return (10);
 }


 if (!checksum(a, h))
  return (0);
 bid += 48;

 header = (const struct archive_entry_header_ustar *)h;


 if ((memcmp(header->magic, "ustar\0", 6) == 0)
     && (memcmp(header->version, "00", 2) == 0))
  bid += 56;


 if ((memcmp(header->magic, "ustar ", 6) == 0)
     && (memcmp(header->version, " \0", 2) == 0))
  bid += 56;


 if (header->typeflag[0] != 0 &&
     !( header->typeflag[0] >= '0' && header->typeflag[0] <= '9') &&
     !( header->typeflag[0] >= 'A' && header->typeflag[0] <= 'Z') &&
     !( header->typeflag[0] >= 'a' && header->typeflag[0] <= 'z') )
  return (0);
 bid += 2;




 if (bid > 0 && (
     validate_number_field(header->mode, sizeof(header->mode)) == 0
     || validate_number_field(header->uid, sizeof(header->uid)) == 0
     || validate_number_field(header->gid, sizeof(header->gid)) == 0
     || validate_number_field(header->mtime, sizeof(header->mtime)) == 0
     || validate_number_field(header->size, sizeof(header->size)) == 0
     || validate_number_field(header->rdevmajor, sizeof(header->rdevmajor)) == 0
     || validate_number_field(header->rdevminor, sizeof(header->rdevminor)) == 0)) {
  bid = 0;
 }

 return (bid);
}
