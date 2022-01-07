
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int xdr_int (unsigned char const**,int*) ;

__attribute__((used)) static const unsigned char *
nvlist_next(const unsigned char *nvlist)
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
  p = pair + encoded_size;

  pair = p;
  xdr_int(&p, &encoded_size);
  xdr_int(&p, &decoded_size);
 }

 return p;
}
