
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dmu_buf_user_t ;
typedef int dmu_buf_t ;


 void* dmu_buf_replace_user (int *,int *,int *) ;

void *
dmu_buf_set_user(dmu_buf_t *db_fake, dmu_buf_user_t *user)
{
 return (dmu_buf_replace_user(db_fake, ((void*)0), user));
}
