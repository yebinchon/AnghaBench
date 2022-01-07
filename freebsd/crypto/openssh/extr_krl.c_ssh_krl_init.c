
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ssh_krl {int revoked_certs; int revoked_sha1s; int revoked_keys; } ;


 int RB_INIT (int *) ;
 int TAILQ_INIT (int *) ;
 struct ssh_krl* calloc (int,int) ;

struct ssh_krl *
ssh_krl_init(void)
{
 struct ssh_krl *krl;

 if ((krl = calloc(1, sizeof(*krl))) == ((void*)0))
  return ((void*)0);
 RB_INIT(&krl->revoked_keys);
 RB_INIT(&krl->revoked_sha1s);
 TAILQ_INIT(&krl->revoked_certs);
 return krl;
}
