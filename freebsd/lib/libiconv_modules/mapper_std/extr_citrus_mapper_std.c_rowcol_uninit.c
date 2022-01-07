
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _citrus_mapper_std_rowcol {int rc_src_rowcol; } ;
struct _citrus_mapper_std {struct _citrus_mapper_std_rowcol ms_rowcol; } ;


 int free (int ) ;

__attribute__((used)) static void
rowcol_uninit(struct _citrus_mapper_std *ms)
{
 struct _citrus_mapper_std_rowcol *rc;

 rc = &ms->ms_rowcol;
 free(rc->rc_src_rowcol);
}
