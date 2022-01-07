
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntlm_buf {scalar_t__ length; int * data; } ;


 int free (int *) ;

void
heim_ntlm_free_buf(struct ntlm_buf *p)
{
    if (p->data)
 free(p->data);
    p->data = ((void*)0);
    p->length = 0;
}
