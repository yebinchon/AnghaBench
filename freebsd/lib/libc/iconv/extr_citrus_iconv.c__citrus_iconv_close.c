
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct _citrus_iconv {TYPE_2__* cv_shared; } ;
struct TYPE_4__ {TYPE_1__* ci_ops; } ;
struct TYPE_3__ {int (* io_uninit_context ) (struct _citrus_iconv*) ;} ;


 int free (struct _citrus_iconv*) ;
 int release_shared (TYPE_2__*) ;
 int stub1 (struct _citrus_iconv*) ;

void
_citrus_iconv_close(struct _citrus_iconv *cv)
{

 if (cv) {
  (*cv->cv_shared->ci_ops->io_uninit_context)(cv);
  release_shared(cv->cv_shared);
  free(cv);
 }
}
