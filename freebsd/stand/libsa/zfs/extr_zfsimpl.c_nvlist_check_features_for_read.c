
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EIO ;
 int ** features_for_read ;
 int memcmp (char const*,int *,int) ;
 int printf (char*,char const*) ;
 int roundup (int,int) ;
 int xdr_int (unsigned char const**,int*) ;

__attribute__((used)) static int
nvlist_check_features_for_read(const unsigned char *nvlist)
{
 const unsigned char *p, *pair;
 int junk;
 int encoded_size, decoded_size;
 int rc;

 rc = 0;

 p = nvlist;
 xdr_int(&p, &junk);
 xdr_int(&p, &junk);

 pair = p;
 xdr_int(&p, &encoded_size);
 xdr_int(&p, &decoded_size);
 while (encoded_size && decoded_size) {
  int namelen, pairtype;
  const char *pairname;
  int i, found;

  found = 0;

  xdr_int(&p, &namelen);
  pairname = (const char*) p;
  p += roundup(namelen, 4);
  xdr_int(&p, &pairtype);

  for (i = 0; features_for_read[i] != ((void*)0); i++) {
   if (!memcmp(pairname, features_for_read[i], namelen)) {
    found = 1;
    break;
   }
  }

  if (!found) {
   printf("ZFS: unsupported feature: %s\n", pairname);
   rc = EIO;
  }

  p = pair + encoded_size;

  pair = p;
  xdr_int(&p, &encoded_size);
  xdr_int(&p, &decoded_size);
 }

 return (rc);
}
