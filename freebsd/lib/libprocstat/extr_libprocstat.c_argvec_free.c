
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct argvec {struct argvec* buf; struct argvec* argv; } ;


 int free (struct argvec*) ;

__attribute__((used)) static void
argvec_free(struct argvec * av)
{

 free(av->argv);
 free(av->buf);
 free(av);
}
