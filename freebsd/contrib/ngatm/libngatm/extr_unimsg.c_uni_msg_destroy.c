
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {struct uni_msg* b_buf; } ;


 int free (struct uni_msg*) ;

void
uni_msg_destroy(struct uni_msg *m)
{
 free(m->b_buf);
 free(m);
}
