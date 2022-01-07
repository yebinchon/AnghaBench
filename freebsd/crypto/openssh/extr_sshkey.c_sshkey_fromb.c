
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey {int dummy; } ;
struct sshbuf {int dummy; } ;


 int sshkey_from_blob_internal (struct sshbuf*,struct sshkey**,int) ;

int
sshkey_fromb(struct sshbuf *b, struct sshkey **keyp)
{
 return sshkey_from_blob_internal(b, keyp, 1);
}
