
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int out ;
typedef scalar_t__ int32_t ;


 int assert (int) ;
 scalar_t__ dba_tell () ;
 int err (int,char*) ;
 int fwrite (scalar_t__ const**,int,scalar_t__,int ) ;
 int ofp ;

int32_t
dba_skip(int32_t nmemb, int32_t sz)
{
 const int32_t out[5] = {0, 0, 0, 0, 0};
 int32_t i, pos;

 assert(sz >= 0);
 assert(nmemb > 0);
 assert(nmemb <= 5);
 pos = dba_tell();
 for (i = 0; i < sz; i++)
  if (nmemb - fwrite(&out, sizeof(out[0]), nmemb, ofp))
   err(1, "fwrite");
 return pos;
}
