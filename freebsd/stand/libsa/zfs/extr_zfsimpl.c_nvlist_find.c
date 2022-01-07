
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int DATA_TYPE_NVLIST ;
 int DATA_TYPE_NVLIST_ARRAY ;
 int DATA_TYPE_STRING ;
 int DATA_TYPE_UINT64 ;
 int EIO ;
 int memcmp (char const*,char const*,int) ;
 int roundup (int,int) ;
 int xdr_int (unsigned char const**,int*) ;
 int xdr_uint64_t (unsigned char const**,int *) ;

__attribute__((used)) static int
nvlist_find(const unsigned char *nvlist, const char *name, int type,
     int *elementsp, void *valuep)
{
 const unsigned char *p, *pair;
 int junk;
 int encoded_size, decoded_size;

 p = nvlist;
 xdr_int(&p, &junk);
 xdr_int(&p, &junk);

 pair = p;
 xdr_int(&p, &encoded_size);
 xdr_int(&p, &decoded_size);
 while (encoded_size && decoded_size) {
  int namelen, pairtype, elements;
  const char *pairname;

  xdr_int(&p, &namelen);
  pairname = (const char*) p;
  p += roundup(namelen, 4);
  xdr_int(&p, &pairtype);

  if (!memcmp(name, pairname, namelen) && type == pairtype) {
   xdr_int(&p, &elements);
   if (elementsp)
    *elementsp = elements;
   if (type == DATA_TYPE_UINT64) {
    xdr_uint64_t(&p, (uint64_t *) valuep);
    return (0);
   } else if (type == DATA_TYPE_STRING) {
    int len;
    xdr_int(&p, &len);
    (*(const char**) valuep) = (const char*) p;
    return (0);
   } else if (type == DATA_TYPE_NVLIST
       || type == DATA_TYPE_NVLIST_ARRAY) {
    (*(const unsigned char**) valuep) =
      (const unsigned char*) p;
    return (0);
   } else {
    return (EIO);
   }
  } else {



   p = pair + encoded_size;
  }

  pair = p;
  xdr_int(&p, &encoded_size);
  xdr_int(&p, &decoded_size);
 }

 return (EIO);
}
