
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imsg {int data; } ;


 int free (int ) ;

void
imsg_free(struct imsg *imsg)
{
 free(imsg->data);
}
