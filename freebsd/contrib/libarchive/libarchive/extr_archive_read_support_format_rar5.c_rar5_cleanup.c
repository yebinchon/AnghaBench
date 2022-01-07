
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int filters; struct rar5* filtered_buf; struct rar5* window_buf; } ;
struct TYPE_4__ {struct rar5* push_buf; } ;
struct rar5 {TYPE_2__ cstate; TYPE_1__ vol; } ;
struct archive_read {TYPE_3__* format; } ;
struct TYPE_6__ {int * data; } ;


 int ARCHIVE_OK ;
 int cdeque_free (int *) ;
 int free (struct rar5*) ;
 int free_filters (struct rar5*) ;
 struct rar5* get_context (struct archive_read*) ;

__attribute__((used)) static int rar5_cleanup(struct archive_read *a) {
 struct rar5* rar = get_context(a);

 free(rar->cstate.window_buf);
 free(rar->cstate.filtered_buf);

 free(rar->vol.push_buf);

 free_filters(rar);
 cdeque_free(&rar->cstate.filters);

 free(rar);
 a->format->data = ((void*)0);

 return ARCHIVE_OK;
}
