
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshkey {int dummy; } ;


 int SSHKEY_SERIALIZE_DEFAULT ;
 int to_blob (struct sshkey const*,int **,size_t*,int,int ) ;

int
sshkey_plain_to_blob(const struct sshkey *key, u_char **blobp, size_t *lenp)
{
 return to_blob(key, blobp, lenp, 1, SSHKEY_SERIALIZE_DEFAULT);
}
