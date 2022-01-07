
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sshbuf {int refcount; scalar_t__ max_size; scalar_t__ alloc; scalar_t__ size; scalar_t__ off; int * cd; int * d; int readonly; } ;


 int SIGSEGV ;
 int SIG_DFL ;
 int SSHBUF_DBG (char*) ;
 int SSHBUF_REFS_MAX ;
 scalar_t__ SSHBUF_SIZE_MAX ;
 int SSHBUF_TELL (char*) ;
 int SSH_ERR_INTERNAL_ERROR ;
 scalar_t__ __predict_false (int) ;
 int raise (int ) ;
 int signal (int ,int ) ;

__attribute__((used)) static inline int
sshbuf_check_sanity(const struct sshbuf *buf)
{
 SSHBUF_TELL("sanity");
 if (__predict_false(buf == ((void*)0) ||
     (!buf->readonly && buf->d != buf->cd) ||
     buf->refcount < 1 || buf->refcount > SSHBUF_REFS_MAX ||
     buf->cd == ((void*)0) ||
     buf->max_size > SSHBUF_SIZE_MAX ||
     buf->alloc > buf->max_size ||
     buf->size > buf->alloc ||
     buf->off > buf->size)) {

  SSHBUF_DBG(("SSH_ERR_INTERNAL_ERROR"));
  signal(SIGSEGV, SIG_DFL);
  raise(SIGSEGV);
  return SSH_ERR_INTERNAL_ERROR;
 }
 return 0;
}
