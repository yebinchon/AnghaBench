
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int EINVAL ;
 int blake2b_update (void*,void*,int ) ;

__attribute__((used)) static int
blake2b_applicator(void *state, void *buf, u_int len)
{
 int rc;

 rc = blake2b_update(state, buf, len);
 if (rc != 0)
  return (EINVAL);
 return (0);
}
