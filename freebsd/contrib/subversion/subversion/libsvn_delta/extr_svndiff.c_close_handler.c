
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int svn_error_t ;
struct decode_baton {int header_bytes; int pool; int consumer_baton; int * (* consumer_func ) (int *,int ) ;TYPE_1__* buffer; scalar_t__ error_on_early_close; } ;
struct TYPE_2__ {scalar_t__ len; } ;


 int SVN_ERR_SVNDIFF_UNEXPECTED_END ;
 int _ (char*) ;
 int * stub1 (int *,int ) ;
 int * svn_error_create (int ,int *,int ) ;
 int svn_pool_destroy (int ) ;

__attribute__((used)) static svn_error_t *
close_handler(void *baton)
{
  struct decode_baton *db = (struct decode_baton *) baton;
  svn_error_t *err;



  if ((db->error_on_early_close)
      && (db->header_bytes < 4 || db->buffer->len != 0))
    return svn_error_create(SVN_ERR_SVNDIFF_UNEXPECTED_END, ((void*)0),
                            _("Unexpected end of svndiff input"));


  err = db->consumer_func(((void*)0), db->consumer_baton);
  svn_pool_destroy(db->pool);
  return err;
}
