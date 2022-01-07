
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct archive_read {TYPE_1__* format; } ;
struct _7zip_entry {int flg; int mtime_ns; int mtime; int atime_ns; int atime; int ctime_ns; int ctime; } ;
struct _7zip {unsigned int numFiles; struct _7zip_entry* entries; } ;
struct _7z_header_info {scalar_t__ dataIndex; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ATIME_IS_SET ;
 int CTIME_IS_SET ;
 int MTIME_IS_SET ;
 scalar_t__ UMAX_ENTRY ;
 int archive_le64dec (unsigned char const*) ;
 unsigned char* calloc (size_t,int) ;
 int fileTimeToUtc (int ,int *,int *) ;
 int free (unsigned char*) ;
 unsigned char* header_bytes (struct archive_read*,int) ;



 int memset (unsigned char*,int,size_t) ;
 scalar_t__ parse_7zip_uint64 (struct archive_read*,scalar_t__*) ;
 scalar_t__ read_Bools (struct archive_read*,unsigned char*,size_t) ;

__attribute__((used)) static int
read_Times(struct archive_read *a, struct _7z_header_info *h, int type)
{
 struct _7zip *zip = (struct _7zip *)a->format->data;
 const unsigned char *p;
 struct _7zip_entry *entries = zip->entries;
 unsigned char *timeBools;
 int allAreDefined;
 unsigned i;

 timeBools = calloc((size_t)zip->numFiles, sizeof(*timeBools));
 if (timeBools == ((void*)0))
  return (-1);


 if ((p = header_bytes(a, 1)) == ((void*)0))
  goto failed;
 allAreDefined = *p;
 if (allAreDefined)
  memset(timeBools, 1, (size_t)zip->numFiles);
 else {
  if (read_Bools(a, timeBools, (size_t)zip->numFiles) < 0)
   goto failed;
 }


 if ((p = header_bytes(a, 1)) == ((void*)0))
  goto failed;
 if (*p) {
  if (parse_7zip_uint64(a, &(h->dataIndex)) < 0)
   goto failed;
  if (UMAX_ENTRY < h->dataIndex)
   goto failed;
 }

 for (i = 0; i < zip->numFiles; i++) {
  if (!timeBools[i])
   continue;
  if ((p = header_bytes(a, 8)) == ((void*)0))
   goto failed;
  switch (type) {
  case 129:
   fileTimeToUtc(archive_le64dec(p),
       &(entries[i].ctime),
       &(entries[i].ctime_ns));
   entries[i].flg |= CTIME_IS_SET;
   break;
  case 130:
   fileTimeToUtc(archive_le64dec(p),
       &(entries[i].atime),
       &(entries[i].atime_ns));
   entries[i].flg |= ATIME_IS_SET;
   break;
  case 128:
   fileTimeToUtc(archive_le64dec(p),
       &(entries[i].mtime),
       &(entries[i].mtime_ns));
   entries[i].flg |= MTIME_IS_SET;
   break;
  }
 }

 free(timeBools);
 return (0);
failed:
 free(timeBools);
 return (-1);
}
