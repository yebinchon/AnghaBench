
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mtree {int fd; } ;
struct archive_read {TYPE_1__* format; } ;
struct TYPE_2__ {scalar_t__ data; } ;


 int ARCHIVE_OK ;
 int close (int) ;

__attribute__((used)) static int
skip(struct archive_read *a)
{
 struct mtree *mtree;

 mtree = (struct mtree *)(a->format->data);
 if (mtree->fd >= 0) {
  close(mtree->fd);
  mtree->fd = -1;
 }
 return (ARCHIVE_OK);
}
