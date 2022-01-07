
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uudecode {struct uudecode* out_buff; struct uudecode* in_buff; } ;
struct archive_read_filter {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int free (struct uudecode*) ;

__attribute__((used)) static int
uudecode_filter_close(struct archive_read_filter *self)
{
 struct uudecode *uudecode;

 uudecode = (struct uudecode *)self->data;
 free(uudecode->in_buff);
 free(uudecode->out_buff);
 free(uudecode);

 return (ARCHIVE_OK);
}
