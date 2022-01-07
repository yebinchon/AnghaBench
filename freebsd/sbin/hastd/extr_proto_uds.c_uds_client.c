
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PJDLOG_ASSERT (int ) ;
 int UDS_SIDE_CLIENT ;
 int uds_common_setup (char const*,void**,int ) ;

__attribute__((used)) static int
uds_client(const char *srcaddr, const char *dstaddr, void **ctxp)
{
 int ret;

 ret = uds_common_setup(dstaddr, ctxp, UDS_SIDE_CLIENT);
 if (ret != 0)
  return (ret);

 PJDLOG_ASSERT(srcaddr == ((void*)0));

 return (0);
}
