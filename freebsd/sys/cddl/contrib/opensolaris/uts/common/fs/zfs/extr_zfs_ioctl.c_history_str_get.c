
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ zc_history; } ;
typedef TYPE_1__ zfs_cmd_t ;


 int HIS_MAX_RECORD_LEN ;
 int KM_SLEEP ;
 scalar_t__ copyinstr (void*,char*,int,int *) ;
 int history_str_free (char*) ;
 char* kmem_alloc (int,int ) ;

__attribute__((used)) static char *
history_str_get(zfs_cmd_t *zc)
{
 char *buf;

 if (zc->zc_history == 0)
  return (((void*)0));

 buf = kmem_alloc(HIS_MAX_RECORD_LEN, KM_SLEEP);
 if (copyinstr((void *)(uintptr_t)zc->zc_history,
     buf, HIS_MAX_RECORD_LEN, ((void*)0)) != 0) {
  history_str_free(buf);
  return (((void*)0));
 }

 buf[HIS_MAX_RECORD_LEN -1] = '\0';

 return (buf);
}
