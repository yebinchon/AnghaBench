
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cuse_dev_entered {scalar_t__ got_signal; } ;


 int CUSE_ERR_INVALID ;
 int CUSE_ERR_OTHER ;
 struct cuse_dev_entered* cuse_dev_get_entered () ;

int
cuse_got_peer_signal(void)
{
 struct cuse_dev_entered *pe;

 pe = cuse_dev_get_entered();
 if (pe == ((void*)0))
  return (CUSE_ERR_INVALID);

 if (pe->got_signal)
  return (0);

 return (CUSE_ERR_OTHER);
}
