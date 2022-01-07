
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct _citrus_mapper_area {int ma_dir; } ;
struct _citrus_mapper {int * cm_traits; TYPE_1__* cm_ops; int * cm_module; int * cm_key; scalar_t__ cm_refcount; int * cm_closure; } ;
typedef int (* _citrus_mapper_getops_t ) (TYPE_1__*) ;
struct TYPE_3__ {int (* mo_init ) (struct _citrus_mapper_area*,struct _citrus_mapper*,int ,void const*,scalar_t__,int *,int) ;int mo_init_state; int mo_convert; int mo_uninit; } ;


 int EINVAL ;
 int EOPNOTSUPP ;
 scalar_t__ _citrus_find_getops (int *,char const*,char*) ;
 int _citrus_load_module (int **,char const*) ;
 int errno ;
 void* malloc (int) ;
 int mapper_close (struct _citrus_mapper*) ;
 scalar_t__ strlen (char const*) ;
 int stub1 (TYPE_1__*) ;
 int stub2 (struct _citrus_mapper_area*,struct _citrus_mapper*,int ,void const*,scalar_t__,int *,int) ;

__attribute__((used)) static int
mapper_open(struct _citrus_mapper_area *__restrict ma,
    struct _citrus_mapper * __restrict * __restrict rcm,
    const char * __restrict module,
    const char * __restrict variable)
{
 struct _citrus_mapper *cm;
 _citrus_mapper_getops_t getops;
 int ret;


 cm = malloc(sizeof(*cm));
 if (!cm)
  return (errno);

 cm->cm_module = ((void*)0);
 cm->cm_ops = ((void*)0);
 cm->cm_closure = ((void*)0);
 cm->cm_traits = ((void*)0);
 cm->cm_refcount = 0;
 cm->cm_key = ((void*)0);


 ret = _citrus_load_module(&cm->cm_module, module);
 if (ret)
  goto err;


 getops = (_citrus_mapper_getops_t)
     _citrus_find_getops(cm->cm_module, module, "mapper");
 if (!getops) {
  ret = EOPNOTSUPP;
  goto err;
 }
 cm->cm_ops = malloc(sizeof(*cm->cm_ops));
 if (!cm->cm_ops) {
  ret = errno;
  goto err;
 }
 ret = (*getops)(cm->cm_ops);
 if (ret)
  goto err;

 if (!cm->cm_ops->mo_init ||
     !cm->cm_ops->mo_uninit ||
     !cm->cm_ops->mo_convert ||
     !cm->cm_ops->mo_init_state) {
  ret = EINVAL;
  goto err;
 }


 cm->cm_traits = malloc(sizeof(*cm->cm_traits));
 if (cm->cm_traits == ((void*)0)) {
  ret = errno;
  goto err;
 }

 ret = (*cm->cm_ops->mo_init)(ma, cm, ma->ma_dir,
     (const void *)variable, strlen(variable) + 1,
     cm->cm_traits, sizeof(*cm->cm_traits));
 if (ret)
  goto err;

 *rcm = cm;

 return (0);

err:
 mapper_close(cm);
 return (ret);
}
