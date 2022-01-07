
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int restrict_u ;


 size_t INC_RESLIST4 ;
 int INSIST (int) ;
 int LINK_SLIST (int ,int *,int ) ;
 int UNLINK_HEAD_SLIST (int *,int ,int ) ;
 size_t V4_SIZEOF_RESTRICT_U ;
 int * eallocarray (size_t const,size_t const) ;
 int link ;
 int resfree4 ;

__attribute__((used)) static restrict_u *
alloc_res4(void)
{
 const size_t cb = V4_SIZEOF_RESTRICT_U;
 const size_t count = INC_RESLIST4;
 restrict_u * rl;
 restrict_u * res;
 size_t i;

 UNLINK_HEAD_SLIST(res, resfree4, link);
 if (res != ((void*)0))
  return res;

 rl = eallocarray(count, cb);

 res = (void *)((char *)rl + (count - 1) * cb);
 for (i = count - 1; i > 0; i--) {
  LINK_SLIST(resfree4, res, link);
  res = (void *)((char *)res - cb);
 }
 INSIST(rl == res);

 return res;
}
