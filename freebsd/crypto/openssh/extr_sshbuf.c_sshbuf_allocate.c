
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sshbuf {size_t size; size_t max_size; size_t alloc; int * d; int * cd; } ;


 size_t ROUNDUP (size_t,int ) ;
 int SSHBUF_DBG (char*) ;
 int SSHBUF_SIZE_INC ;
 int SSHBUF_TELL (char*) ;
 int SSH_ERR_ALLOC_FAIL ;
 int * recallocarray (int *,size_t,size_t,int) ;
 int sshbuf_check_reserve (struct sshbuf*,size_t) ;
 int sshbuf_maybe_pack (struct sshbuf*,int) ;

int
sshbuf_allocate(struct sshbuf *buf, size_t len)
{
 size_t rlen, need;
 u_char *dp;
 int r;

 SSHBUF_DBG(("allocate buf = %p len = %zu", buf, len));
 if ((r = sshbuf_check_reserve(buf, len)) != 0)
  return r;




 sshbuf_maybe_pack(buf, buf->size + len > buf->max_size);
 SSHBUF_TELL("allocate");
 if (len + buf->size <= buf->alloc)
  return 0;





 need = len + buf->size - buf->alloc;
 rlen = ROUNDUP(buf->alloc + need, SSHBUF_SIZE_INC);
 SSHBUF_DBG(("need %zu initial rlen %zu", need, rlen));
 if (rlen > buf->max_size)
  rlen = buf->alloc + need;
 SSHBUF_DBG(("adjusted rlen %zu", rlen));
 if ((dp = recallocarray(buf->d, buf->alloc, rlen, 1)) == ((void*)0)) {
  SSHBUF_DBG(("realloc fail"));
  return SSH_ERR_ALLOC_FAIL;
 }
 buf->alloc = rlen;
 buf->cd = buf->d = dp;
 if ((r = sshbuf_check_reserve(buf, len)) < 0) {

  return r;
 }
 SSHBUF_TELL("done");
 return 0;
}
