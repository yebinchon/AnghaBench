
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;
typedef int sshkey_printfn ;


 int SSHKEY_SERIALIZE_DEFAULT ;
 int sshkey_private_serialize_opt (struct sshkey const*,struct sshbuf*,int ) ;

int
sshkey_private_serialize_maxsign(const struct sshkey *k, struct sshbuf *b,
    u_int32_t maxsign, sshkey_printfn *pr)
{
 return sshkey_private_serialize_opt(k, b, SSHKEY_SERIALIZE_DEFAULT);
}
