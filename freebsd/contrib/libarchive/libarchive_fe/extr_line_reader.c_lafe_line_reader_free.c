
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lafe_line_reader {struct lafe_line_reader* pathname; struct lafe_line_reader* buff; } ;


 int free (struct lafe_line_reader*) ;

void
lafe_line_reader_free(struct lafe_line_reader *lr)
{
 free(lr->buff);
 free(lr->pathname);
 free(lr);
}
