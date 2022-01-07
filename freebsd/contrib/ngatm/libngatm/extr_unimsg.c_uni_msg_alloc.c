
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {int * b_buf; int * b_lim; int * b_wptr; int * b_rptr; } ;


 scalar_t__ EXTRA ;
 int free (struct uni_msg*) ;
 void* malloc (size_t) ;

struct uni_msg *
uni_msg_alloc(size_t s)
{
 struct uni_msg *m;

 s += EXTRA;

 if ((m = malloc(sizeof(struct uni_msg))) == ((void*)0))
  return ((void*)0);
 if ((m->b_buf = malloc(s)) == ((void*)0)) {
  free(m);
  return (((void*)0));
 }
 m->b_rptr = m->b_wptr = m->b_buf;
 m->b_lim = m->b_buf + s;
 return (m);
}
