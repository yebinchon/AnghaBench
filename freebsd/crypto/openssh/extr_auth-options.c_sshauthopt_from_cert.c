
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sshkey {TYPE_1__* cert; int type; } ;
struct sshauthopt {int dummy; } ;
struct TYPE_2__ {scalar_t__ type; int extensions; int critical; } ;


 int OPTIONS_CRITICAL ;
 int OPTIONS_EXTENSIONS ;
 scalar_t__ SSH2_CERT_TYPE_USER ;
 int cert_option_list (struct sshauthopt*,int ,int ,int) ;
 int sshauthopt_free (struct sshauthopt*) ;
 struct sshauthopt* sshauthopt_new () ;
 int sshkey_type_is_cert (int ) ;

struct sshauthopt *
sshauthopt_from_cert(struct sshkey *k)
{
 struct sshauthopt *ret;

 if (k == ((void*)0) || !sshkey_type_is_cert(k->type) || k->cert == ((void*)0) ||
     k->cert->type != SSH2_CERT_TYPE_USER)
  return ((void*)0);

 if ((ret = sshauthopt_new()) == ((void*)0))
  return ((void*)0);


 if (cert_option_list(ret, k->cert->critical,
     OPTIONS_CRITICAL, 1) == -1) {
  sshauthopt_free(ret);
  return ((void*)0);
 }
 if (cert_option_list(ret, k->cert->extensions,
     OPTIONS_EXTENSIONS, 0) == -1) {
  sshauthopt_free(ret);
  return ((void*)0);
 }

 return ret;
}
