
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union jrec {int dummy; } jrec ;
struct suj_rec {union jrec* sr_rec; } ;
struct suj_ino {int dummy; } ;
struct jrefrec {int jr_diroff; int jr_op; } ;
typedef int off_t ;


 int JOP_ADDREF ;
 void* errmalloc (int) ;
 int ino_add_ref (struct suj_ino*,struct suj_rec*) ;

__attribute__((used)) static void
ino_dup_ref(struct suj_ino *sino, struct jrefrec *refrec, off_t diroff)
{
 struct jrefrec *rrn;
 struct suj_rec *srn;

 rrn = errmalloc(sizeof(*refrec));
 *rrn = *refrec;
 rrn->jr_op = JOP_ADDREF;
 rrn->jr_diroff = diroff;
 srn = errmalloc(sizeof(*srn));
 srn->sr_rec = (union jrec *)rrn;
 ino_add_ref(sino, srn);
}
