
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int _DIAGASSERT (int ) ;

__attribute__((used)) static u_int
st_hash(const char *name, size_t len, int tabsz)
{
 u_int key = 0;

 _DIAGASSERT(name != ((void*)0));

 while (len--) {
  key += *name++;
  key = (key << 8) | (key >> 24);
 }

 return (key % tabsz);
}
