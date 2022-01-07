
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct pqr_struct {int * member_2; int * member_1; int * member_0; } ;
struct TYPE_5__ {int rm_firstdatacol; int rm_cols; TYPE_1__* rm_col; } ;
typedef TYPE_2__ raidz_map_t ;
typedef int abd_t ;
struct TYPE_4__ {int rc_size; int * rc_abd; } ;


 size_t VDEV_RAIDZ_P ;
 int abd_copy_to_buf (int *,int *,int ) ;
 int abd_iterate_func (int *,int ,int ,int ,struct pqr_struct*) ;
 int * abd_to_buf (int *) ;
 int vdev_raidz_p_func ;

__attribute__((used)) static void
vdev_raidz_generate_parity_p(raidz_map_t *rm)
{
 uint64_t *p;
 int c;
 abd_t *src;

 for (c = rm->rm_firstdatacol; c < rm->rm_cols; c++) {
  src = rm->rm_col[c].rc_abd;
  p = abd_to_buf(rm->rm_col[VDEV_RAIDZ_P].rc_abd);

  if (c == rm->rm_firstdatacol) {
   abd_copy_to_buf(p, src, rm->rm_col[c].rc_size);
  } else {
   struct pqr_struct pqr = { p, ((void*)0), ((void*)0) };
   (void) abd_iterate_func(src, 0, rm->rm_col[c].rc_size,
       vdev_raidz_p_func, &pqr);
  }
 }
}
