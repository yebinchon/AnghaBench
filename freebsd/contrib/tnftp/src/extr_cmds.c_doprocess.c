
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* docase (char*,size_t,char const*) ;
 char* domap (char*,size_t,char const*) ;
 char* dotrans (char*,size_t,char const*) ;

__attribute__((used)) static const char *
doprocess(char *dst, size_t dlen, const char *src,
    int casef, int transf, int mapf)
{
 if (casef)
  src = docase(dst, dlen, src);
 if (transf)
  src = dotrans(dst, dlen, src);
 if (mapf)
  src = domap(dst, dlen, src);
 return src;
}
