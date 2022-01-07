
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper_area {int dummy; } ;
struct _citrus_csmapper {int dummy; } ;


 int UNLOCK (int *) ;
 int WLOCK (int *) ;
 int _mapper_open_direct (struct _citrus_mapper_area*,struct _citrus_csmapper**,char*,char*) ;
 int _mapper_set_persistent (struct _citrus_csmapper*) ;
 struct _citrus_csmapper* csm_none ;
 int ma_lock ;

__attribute__((used)) static int
get_none(struct _citrus_mapper_area *__restrict ma,
    struct _citrus_csmapper *__restrict *__restrict rcsm)
{
 int ret;

 WLOCK(&ma_lock);
 if (csm_none) {
  *rcsm = csm_none;
  ret = 0;
  goto quit;
 }

 ret = _mapper_open_direct(ma, &csm_none, "mapper_none", "");
 if (ret)
  goto quit;
 _mapper_set_persistent(csm_none);

 *rcsm = csm_none;
 ret = 0;
quit:
 UNLOCK(&ma_lock);
 return (ret);
}
