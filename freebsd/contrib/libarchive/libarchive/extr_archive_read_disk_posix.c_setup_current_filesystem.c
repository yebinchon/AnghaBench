
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tree {TYPE_1__* current_filesystem; } ;
struct archive_read_disk {int archive; struct tree* tree; } ;
struct TYPE_2__ {int synthetic; int remote; int xfer_align; int max_xfer_size; int min_xfer_size; int incr_xfer_size; long name_max; scalar_t__ noatime; } ;


 int ARCHIVE_FAILED ;
 int ARCHIVE_OK ;
 long NAME_MAX ;
 long PATH_MAX ;
 int _PC_NAME_MAX ;
 int archive_set_error (int *,int ,char*) ;
 int errno ;
 long fpathconf (int ,int ) ;
 int get_xfer_size (struct tree*,int,char*) ;
 long pathconf (int ,int ) ;
 int tree_current_access_path (struct tree*) ;
 int tree_current_dir_fd (struct tree*) ;
 scalar_t__ tree_current_is_symblic_link_target (struct tree*) ;
 scalar_t__ tree_enter_working_dir (struct tree*) ;

__attribute__((used)) static int
setup_current_filesystem(struct archive_read_disk *a)
{
 struct tree *t = a->tree;



 t->current_filesystem->synthetic = -1;
 t->current_filesystem->remote = -1;
 t->current_filesystem->noatime = 0;
 (void)get_xfer_size(t, -1, ".");
 t->current_filesystem->xfer_align = -1;
 t->current_filesystem->max_xfer_size = -1;
 t->current_filesystem->min_xfer_size = -1;
 t->current_filesystem->incr_xfer_size = -1;
 return (ARCHIVE_OK);
}
