
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct manpage {int bits; int sec; scalar_t__ names; } ;


 int strcasecmp (char const*,char const*) ;
 char* strchr (scalar_t__,char) ;
 size_t strcspn (scalar_t__,char*) ;
 int strncasecmp (scalar_t__,scalar_t__,size_t) ;

__attribute__((used)) static int
manpage_compare(const void *vp1, const void *vp2)
{
 const struct manpage *mp1, *mp2;
 const char *cp1, *cp2;
 size_t sz1, sz2;
 int diff;

 mp1 = vp1;
 mp2 = vp2;
 if ((diff = mp2->bits - mp1->bits) ||
     (diff = mp1->sec - mp2->sec))
  return diff;


 sz1 = strcspn(mp1->names, "(");
 sz2 = strcspn(mp2->names, "(");
 if (sz1 < sz2)
  sz1 = sz2;
 if ((diff = strncasecmp(mp1->names, mp2->names, sz1)))
  return diff;


 cp1 = strchr(mp1->names + sz1, '/');
 cp2 = strchr(mp2->names + sz2, '/');
 return cp1 != ((void*)0) && cp2 != ((void*)0) ? strcasecmp(cp1, cp2) :
     cp1 != ((void*)0) ? -1 : cp2 != ((void*)0) ? 1 : 0;
}
