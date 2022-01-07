
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int comment; int key; } ;
typedef TYPE_1__ Identity ;


 int SSH_FP_DEFAULT ;
 scalar_t__ ask_permission (char*,int ,char*) ;
 int fingerprint_hash ;
 int free (char*) ;
 char* sshkey_fingerprint (int ,int ,int ) ;

__attribute__((used)) static int
confirm_key(Identity *id)
{
 char *p;
 int ret = -1;

 p = sshkey_fingerprint(id->key, fingerprint_hash, SSH_FP_DEFAULT);
 if (p != ((void*)0) &&
     ask_permission("Allow use of key %s?\nKey fingerprint %s.",
     id->comment, p))
  ret = 0;
 free(p);

 return (ret);
}
