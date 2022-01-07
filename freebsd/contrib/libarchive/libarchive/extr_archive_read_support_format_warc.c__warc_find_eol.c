
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _marker ;


 char* xmemmem (char const*,size_t,char const*,int) ;

__attribute__((used)) static const char*
_warc_find_eol(const char *buf, size_t bsz)
{
 static const char _marker[] = "\r\n";
 const char *hit = xmemmem(buf, bsz, _marker, sizeof(_marker) - 1U);

 return hit;
}
