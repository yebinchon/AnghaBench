
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static __inline void
pagecopy(void *s, void *d)
{

 memcpy(d, s, PAGE_SIZE);
}
