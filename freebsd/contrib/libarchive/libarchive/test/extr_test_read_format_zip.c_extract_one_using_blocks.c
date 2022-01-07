
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct archive {int dummy; } ;
typedef scalar_t__ la_ssize_t ;


 scalar_t__ ARCHIVE_RETRY ;
 scalar_t__ archive_read_data (struct archive*,int *,int) ;
 int assertA (int ) ;
 int assertEqualInt (int ,int ) ;
 int crc32 (int ,int *,scalar_t__) ;
 int free (int *) ;
 int * malloc (int) ;

__attribute__((used)) static
int extract_one_using_blocks(struct archive* a, int block_size, uint32_t crc)
{
 uint8_t* buf;
 int ret = 1;
 uint32_t computed_crc = 0;
 la_ssize_t bytes_read;

 buf = malloc(block_size);
 if(buf == ((void*)0))
  return 1;

 while(1) {
  bytes_read = archive_read_data(a, buf, block_size);
  if(bytes_read == ARCHIVE_RETRY)
   continue;
  else if(bytes_read == 0)
   break;
  else if(bytes_read < 0) {


   assertA(0);
   ret = 1;
   goto fn_exit;
  } else {

  }

  computed_crc = crc32(computed_crc, buf, bytes_read);
 }

 assertEqualInt(computed_crc, crc);
 ret = 0;

fn_exit:
 free(buf);
 return ret;
}
