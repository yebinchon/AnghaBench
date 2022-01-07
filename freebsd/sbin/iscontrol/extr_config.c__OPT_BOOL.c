
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _OPT_INT (char*) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ strcasecmp (char*,char*) ;

__attribute__((used)) static __inline int
_OPT_BOOL(char *w)
{
     if(isalpha((unsigned char)*w))
   return strcasecmp(w, "TRUE") == 0;
     else
   return _OPT_INT(w);
}
