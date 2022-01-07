
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshauthopt {int dummy; } ;
struct ssh {int dummy; } ;
struct passwd {int dummy; } ;


 int MM_USERKEY ;
 int mm_key_allowed (int ,int *,int *,struct sshkey*,int,struct sshauthopt**) ;

int
mm_user_key_allowed(struct ssh *ssh, struct passwd *pw, struct sshkey *key,
    int pubkey_auth_attempt, struct sshauthopt **authoptp)
{
 return (mm_key_allowed(MM_USERKEY, ((void*)0), ((void*)0), key,
     pubkey_auth_attempt, authoptp));
}
