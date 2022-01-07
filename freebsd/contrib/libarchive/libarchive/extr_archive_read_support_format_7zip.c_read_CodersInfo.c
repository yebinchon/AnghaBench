
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_read {int archive; } ;
struct _7z_folder {unsigned int* unPackSize; unsigned int numOutStreams; int digest; int digest_defined; } ;
struct _7z_digests {unsigned int numFolders; unsigned int dataStreamIndex; int * digests; struct _7z_folder* folders; int * defineds; } ;
struct _7z_coders_info {unsigned int numFolders; unsigned int dataStreamIndex; int * digests; struct _7z_folder* folders; int * defineds; } ;
typedef int digest ;


 unsigned int UMAX_ENTRY ;
 int archive_set_error (int *,int,char*) ;
 void* calloc (size_t,int) ;
 int free_Digest (struct _7z_digests*) ;
 unsigned char* header_bytes (struct archive_read*,int) ;
 unsigned char const kCRC ;
 unsigned char const kCodersUnPackSize ;
 unsigned char const kEnd ;
 unsigned char const kFolder ;
 int memset (struct _7z_digests*,int ,int) ;
 scalar_t__ parse_7zip_uint64 (struct archive_read*,unsigned int*) ;
 scalar_t__ read_Digests (struct archive_read*,struct _7z_digests*,size_t) ;
 int read_Folder (struct archive_read*,struct _7z_folder*) ;

__attribute__((used)) static int
read_CodersInfo(struct archive_read *a, struct _7z_coders_info *ci)
{
 const unsigned char *p;
 struct _7z_digests digest;
 unsigned i;

 memset(ci, 0, sizeof(*ci));
 memset(&digest, 0, sizeof(digest));

 if ((p = header_bytes(a, 1)) == ((void*)0))
  goto failed;
 if (*p != kFolder)
  goto failed;




 if (parse_7zip_uint64(a, &(ci->numFolders)) < 0)
  goto failed;
 if (UMAX_ENTRY < ci->numFolders)
  return (-1);




 if ((p = header_bytes(a, 1)) == ((void*)0))
  goto failed;
 switch (*p) {
 case 0:
  ci->folders =
   calloc((size_t)ci->numFolders, sizeof(*ci->folders));
  if (ci->folders == ((void*)0))
   return (-1);
  for (i = 0; i < ci->numFolders; i++) {
   if (read_Folder(a, &(ci->folders[i])) < 0)
    goto failed;
  }
  break;
 case 1:
  if (parse_7zip_uint64(a, &(ci->dataStreamIndex)) < 0)
   return (-1);
  if (UMAX_ENTRY < ci->dataStreamIndex)
   return (-1);
  if (ci->numFolders > 0) {
   archive_set_error(&a->archive, -1,
       "Malformed 7-Zip archive");
   goto failed;
  }
  break;
 default:
  archive_set_error(&a->archive, -1,
      "Malformed 7-Zip archive");
  goto failed;
 }

 if ((p = header_bytes(a, 1)) == ((void*)0))
  goto failed;
 if (*p != kCodersUnPackSize)
  goto failed;

 for (i = 0; i < ci->numFolders; i++) {
  struct _7z_folder *folder = &(ci->folders[i]);
  unsigned j;

  folder->unPackSize =
      calloc((size_t)folder->numOutStreams, sizeof(*folder->unPackSize));
  if (folder->unPackSize == ((void*)0))
   goto failed;
  for (j = 0; j < folder->numOutStreams; j++) {
   if (parse_7zip_uint64(a, &(folder->unPackSize[j])) < 0)
    goto failed;
  }
 }




 if ((p = header_bytes(a, 1)) == ((void*)0))
  goto failed;
 if (*p == kEnd)
  return (0);
 if (*p != kCRC)
  goto failed;
 if (read_Digests(a, &digest, (size_t)ci->numFolders) < 0)
  goto failed;
 for (i = 0; i < ci->numFolders; i++) {
  ci->folders[i].digest_defined = digest.defineds[i];
  ci->folders[i].digest = digest.digests[i];
 }




 if ((p = header_bytes(a, 1)) == ((void*)0))
  goto failed;
 if (*p != kEnd)
  goto failed;
 free_Digest(&digest);
 return (0);
failed:
 free_Digest(&digest);
 return (-1);
}
