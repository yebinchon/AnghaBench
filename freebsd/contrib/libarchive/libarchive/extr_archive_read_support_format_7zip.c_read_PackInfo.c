
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct archive_read {int dummy; } ;
struct TYPE_2__ {int * digests; int * defineds; } ;
struct _7z_pack_info {unsigned int pos; unsigned int numPackStreams; unsigned int* sizes; TYPE_1__ digest; int * positions; } ;


 unsigned int UMAX_ENTRY ;
 void* calloc (size_t,int) ;
 unsigned char* header_bytes (struct archive_read*,int) ;
 unsigned char const kEnd ;
 unsigned char const kSize ;
 int memset (struct _7z_pack_info*,int ,int) ;
 scalar_t__ parse_7zip_uint64 (struct archive_read*,unsigned int*) ;
 scalar_t__ read_Digests (struct archive_read*,TYPE_1__*,size_t) ;

__attribute__((used)) static int
read_PackInfo(struct archive_read *a, struct _7z_pack_info *pi)
{
 const unsigned char *p;
 unsigned i;

 memset(pi, 0, sizeof(*pi));




 if (parse_7zip_uint64(a, &(pi->pos)) < 0)
  return (-1);




 if (parse_7zip_uint64(a, &(pi->numPackStreams)) < 0)
  return (-1);
 if (pi->numPackStreams == 0)
  return (-1);
 if (UMAX_ENTRY < pi->numPackStreams)
  return (-1);




 if ((p = header_bytes(a, 1)) == ((void*)0))
  return (-1);
 if (*p == kEnd)

  return (0);
 if (*p != kSize)
  return (-1);
 pi->sizes = calloc((size_t)pi->numPackStreams, sizeof(uint64_t));
 pi->positions = calloc((size_t)pi->numPackStreams, sizeof(uint64_t));
 if (pi->sizes == ((void*)0) || pi->positions == ((void*)0))
  return (-1);

 for (i = 0; i < pi->numPackStreams; i++) {
  if (parse_7zip_uint64(a, &(pi->sizes[i])) < 0)
   return (-1);
 }




 if ((p = header_bytes(a, 1)) == ((void*)0))
  return (-1);
 if (*p == kEnd) {

  pi->digest.defineds =
      calloc((size_t)pi->numPackStreams, sizeof(*pi->digest.defineds));
  pi->digest.digests =
      calloc((size_t)pi->numPackStreams, sizeof(*pi->digest.digests));
  if (pi->digest.defineds == ((void*)0) || pi->digest.digests == ((void*)0))
   return (-1);
  return (0);
 }

 if (*p != kSize)
  return (-1);

 if (read_Digests(a, &(pi->digest), (size_t)pi->numPackStreams) < 0)
  return (-1);




 if ((p = header_bytes(a, 1)) == ((void*)0))
  return (-1);
 if (*p != kEnd)
  return (-1);
 return (0);
}
