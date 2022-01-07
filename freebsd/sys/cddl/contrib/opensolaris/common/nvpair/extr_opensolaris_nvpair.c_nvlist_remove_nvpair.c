
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvpair_t ;
typedef int nvlist_t ;


 int EINVAL ;
 int nvp_buf_free (int *,int *) ;
 int nvp_buf_unlink (int *,int *) ;
 int nvpair_free (int *) ;
 int nvt_remove_nvpair (int *,int *) ;

int
nvlist_remove_nvpair(nvlist_t *nvl, nvpair_t *nvp)
{
 if (nvl == ((void*)0) || nvp == ((void*)0))
  return (EINVAL);

 int err = nvt_remove_nvpair(nvl, nvp);
 if (err != 0)
  return (err);

 nvp_buf_unlink(nvl, nvp);
 nvpair_free(nvp);
 nvp_buf_free(nvl, nvp);
 return (0);
}
