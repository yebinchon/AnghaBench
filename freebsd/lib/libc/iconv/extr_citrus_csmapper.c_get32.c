
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct _region {int dummy; } ;


 int EFTYPE ;
 int _region_head (struct _region*) ;
 int _region_size (struct _region*) ;
 int be32toh (int ) ;
 int memcpy (int *,int ,size_t) ;

__attribute__((used)) static int
get32(struct _region *r, uint32_t *rval)
{

 if (_region_size(r) != 4)
  return (EFTYPE);

 memcpy(rval, _region_head(r), (size_t)4);
 *rval = be32toh(*rval);

 return (0);
}
