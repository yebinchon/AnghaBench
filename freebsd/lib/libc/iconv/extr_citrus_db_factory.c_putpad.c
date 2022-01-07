
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _region {int dummy; } ;


 size_t ceilto (size_t) ;
 int put8 (struct _region*,size_t*,int ) ;

__attribute__((used)) static __inline void
putpad(struct _region *r, size_t *rofs)
{
 size_t i;

 for (i = ceilto(*rofs) - *rofs; i > 0; i--)
  put8(r, rofs, 0);
}
