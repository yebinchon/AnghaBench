
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {int dummy; } ;


 int free (int *) ;
 int handle_from_string (int *,size_t) ;
 int sshbuf_get_string (struct sshbuf*,int **,size_t*) ;

__attribute__((used)) static int
get_handle(struct sshbuf *queue, int *hp)
{
 u_char *handle;
 int r;
 size_t hlen;

 *hp = -1;
 if ((r = sshbuf_get_string(queue, &handle, &hlen)) != 0)
  return r;
 if (hlen < 256)
  *hp = handle_from_string(handle, hlen);
 free(handle);
 return 0;
}
