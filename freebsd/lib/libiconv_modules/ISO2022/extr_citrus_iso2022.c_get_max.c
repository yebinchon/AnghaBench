
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int maxcharset; } ;
typedef TYPE_1__ _ISO2022EncodingInfo ;


 int _MATCH ;
 int _NOTMATCH ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static __inline int
get_max(_ISO2022EncodingInfo * __restrict ei,
    const char * __restrict token)
{
 if (!strcmp(token, "MAX1"))
  ei->maxcharset = 1;
 else if (!strcmp(token, "MAX2"))
  ei->maxcharset = 2;
 else if (!strcmp(token, "MAX3"))
  ei->maxcharset = 3;
 else
  return (_NOTMATCH);

 return (_MATCH);
}
