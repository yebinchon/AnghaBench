
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {size_t max_size; int refcount; size_t size; size_t alloc; int * d; int * cd; scalar_t__ readonly; } ;


 size_t ROUNDUP (size_t,int ) ;
 int SSHBUF_DBG (char*) ;
 int SSHBUF_SIZE_INC ;
 size_t SSHBUF_SIZE_INIT ;
 size_t SSHBUF_SIZE_MAX ;
 int SSHBUF_TELL (char*) ;
 int SSH_ERR_ALLOC_FAIL ;
 int SSH_ERR_BUFFER_READ_ONLY ;
 int SSH_ERR_NO_BUFFER_SPACE ;
 int * recallocarray (int *,size_t,size_t,int) ;
 int sshbuf_check_sanity (struct sshbuf*) ;
 int sshbuf_maybe_pack (struct sshbuf*,int) ;

int
sshbuf_set_max_size(struct sshbuf *buf, size_t max_size)
{
 size_t rlen;
 u_char *dp;
 int r;

 SSHBUF_DBG(("set max buf = %p len = %zu", buf, max_size));
 if ((r = sshbuf_check_sanity(buf)) != 0)
  return r;
 if (max_size == buf->max_size)
  return 0;
 if (buf->readonly || buf->refcount > 1)
  return SSH_ERR_BUFFER_READ_ONLY;
 if (max_size > SSHBUF_SIZE_MAX)
  return SSH_ERR_NO_BUFFER_SPACE;

 sshbuf_maybe_pack(buf, max_size < buf->size);
 if (max_size < buf->alloc && max_size > buf->size) {
  if (buf->size < SSHBUF_SIZE_INIT)
   rlen = SSHBUF_SIZE_INIT;
  else
   rlen = ROUNDUP(buf->size, SSHBUF_SIZE_INC);
  if (rlen > max_size)
   rlen = max_size;
  SSHBUF_DBG(("new alloc = %zu", rlen));
  if ((dp = recallocarray(buf->d, buf->alloc, rlen, 1)) == ((void*)0))
   return SSH_ERR_ALLOC_FAIL;
  buf->cd = buf->d = dp;
  buf->alloc = rlen;
 }
 SSHBUF_TELL("new-max");
 if (max_size < buf->alloc)
  return SSH_ERR_NO_BUFFER_SPACE;
 buf->max_size = max_size;
 return 0;
}
