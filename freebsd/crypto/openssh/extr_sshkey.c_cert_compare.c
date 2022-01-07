
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshkey_cert {int certblob; } ;


 scalar_t__ sshbuf_len (int ) ;
 int sshbuf_ptr (int ) ;
 scalar_t__ timingsafe_bcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
cert_compare(struct sshkey_cert *a, struct sshkey_cert *b)
{
 if (a == ((void*)0) && b == ((void*)0))
  return 1;
 if (a == ((void*)0) || b == ((void*)0))
  return 0;
 if (sshbuf_len(a->certblob) != sshbuf_len(b->certblob))
  return 0;
 if (timingsafe_bcmp(sshbuf_ptr(a->certblob), sshbuf_ptr(b->certblob),
     sshbuf_len(a->certblob)) != 0)
  return 0;
 return 1;
}
