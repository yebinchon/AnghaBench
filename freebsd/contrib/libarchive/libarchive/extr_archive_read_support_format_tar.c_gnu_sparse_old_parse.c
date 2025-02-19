
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tar {int dummy; } ;
struct gnu_sparse {scalar_t__* offset; scalar_t__* numbytes; } ;
struct archive_read {int dummy; } ;


 int ARCHIVE_FATAL ;
 scalar_t__ ARCHIVE_OK ;
 scalar_t__ gnu_add_sparse_entry (struct archive_read*,struct tar*,int ,int ) ;
 int tar_atol (scalar_t__*,int) ;

__attribute__((used)) static int
gnu_sparse_old_parse(struct archive_read *a, struct tar *tar,
    const struct gnu_sparse *sparse, int length)
{
 while (length > 0 && sparse->offset[0] != 0) {
  if (gnu_add_sparse_entry(a, tar,
      tar_atol(sparse->offset, sizeof(sparse->offset)),
      tar_atol(sparse->numbytes, sizeof(sparse->numbytes)))
      != ARCHIVE_OK)
   return (ARCHIVE_FATAL);
  sparse++;
  length--;
 }
 return (ARCHIVE_OK);
}
