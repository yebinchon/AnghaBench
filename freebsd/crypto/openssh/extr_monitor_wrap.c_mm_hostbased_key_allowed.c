
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct passwd {int dummy; } ;


 int MM_HOSTKEY ;
 int mm_key_allowed (int ,char const*,char const*,struct sshkey*,int ,int *) ;

int
mm_hostbased_key_allowed(struct passwd *pw, const char *user, const char *host,
    struct sshkey *key)
{
 return (mm_key_allowed(MM_HOSTKEY, user, host, key, 0, ((void*)0)));
}
