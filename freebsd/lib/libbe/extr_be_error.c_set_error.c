
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ print_on_err; scalar_t__ error; } ;
typedef TYPE_1__ libbe_handle_t ;
typedef scalar_t__ be_error_t ;


 scalar_t__ BE_ERR_SUCCESS ;
 int fprintf (int ,char*,char*) ;
 char* libbe_error_description (TYPE_1__*) ;
 int stderr ;

int
set_error(libbe_handle_t *lbh, be_error_t err)
{

 lbh->error = err;
 if (lbh->print_on_err && (err != BE_ERR_SUCCESS))
  fprintf(stderr, "%s\n", libbe_error_description(lbh));

 return (err);
}
