
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_char ;
struct sshbuf {int dummy; } ;


 int sshbuf_get_cstring (struct sshbuf*,char**,int *) ;
 int sshbuf_get_u8 (struct sshbuf*,scalar_t__*) ;

__attribute__((used)) static int
deserialise_nullable_string(struct sshbuf *m, char **sp)
{
 int r;
 u_char flag;

 *sp = ((void*)0);
 if ((r = sshbuf_get_u8(m, &flag)) != 0 ||
     (r = sshbuf_get_cstring(m, flag ? ((void*)0) : sp, ((void*)0))) != 0)
  return r;
 return 0;
}
