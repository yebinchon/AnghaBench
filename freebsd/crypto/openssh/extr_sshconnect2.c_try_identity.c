
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
struct TYPE_4__ {int filename; TYPE_3__* key; } ;
typedef TYPE_1__ Identity ;


 scalar_t__ KEY_RSA ;
 int SSH_BUG_RSASIGMD5 ;
 int datafellows ;
 int debug (char*,int ,int ) ;
 int sshkey_type (TYPE_3__*) ;
 scalar_t__ sshkey_type_plain (int ) ;

__attribute__((used)) static int
try_identity(Identity *id)
{
 if (!id->key)
  return (0);
 if (sshkey_type_plain(id->key->type) == KEY_RSA &&
     (datafellows & SSH_BUG_RSASIGMD5) != 0) {
  debug("Skipped %s key %s for RSA/MD5 server",
      sshkey_type(id->key), id->filename);
  return (0);
 }
 return 1;
}
