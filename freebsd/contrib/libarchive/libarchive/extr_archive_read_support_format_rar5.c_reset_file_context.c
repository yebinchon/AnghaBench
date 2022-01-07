
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ redir_flags; int redir_type; int b2state; } ;
struct TYPE_5__ {scalar_t__ last_unstore_ptr; scalar_t__ last_write_ptr; scalar_t__ write_ptr; scalar_t__ solid_offset; } ;
struct TYPE_4__ {scalar_t__ solid; } ;
struct rar5 {TYPE_3__ file; TYPE_2__ cstate; TYPE_1__ main; } ;


 int REDIR_TYPE_NONE ;
 int blake2sp_init (int *,int) ;
 int free_filters (struct rar5*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static void reset_file_context(struct rar5* rar) {
 memset(&rar->file, 0, sizeof(rar->file));
 blake2sp_init(&rar->file.b2state, 32);

 if(rar->main.solid) {
  rar->cstate.solid_offset += rar->cstate.write_ptr;
 } else {
  rar->cstate.solid_offset = 0;
 }

 rar->cstate.write_ptr = 0;
 rar->cstate.last_write_ptr = 0;
 rar->cstate.last_unstore_ptr = 0;

 rar->file.redir_type = REDIR_TYPE_NONE;
 rar->file.redir_flags = 0;

 free_filters(rar);
}
