
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_operations {int (* show ) (struct seq_file*,void*) ;int stop; int next; int start; } ;
struct seq_file {void* private; } ;
struct linux_file {scalar_t__ private_data; } ;


 int ENOMEM ;
 int M_LSEQ ;
 int M_NOWAIT ;
 int free (struct seq_operations*,int ) ;
 struct seq_operations* malloc (int,int ,int ) ;
 int seq_open (struct linux_file*,struct seq_operations*) ;
 int single_next ;
 int single_start ;
 int single_stop ;

int
single_open(struct linux_file *f, int (*show)(struct seq_file *, void *), void *d)
{
 struct seq_operations *op;
 int rc = -ENOMEM;

 op = malloc(sizeof(*op), M_LSEQ, M_NOWAIT);
 if (op) {
  op->start = single_start;
  op->next = single_next;
  op->stop = single_stop;
  op->show = show;
  rc = seq_open(f, op);
  if (rc)
   free(op, M_LSEQ);
  else
   ((struct seq_file *)f->private_data)->private = d;

 }
 return (rc);
}
