
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileblocks {scalar_t__ fileposition; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;


 int SEEK_CUR ;
 scalar_t__ memory_read_seek (struct archive*,void*,scalar_t__,int ) ;

__attribute__((used)) static int64_t
memory_read_skip(struct archive *a, void *_private, int64_t skip)
{
 struct fileblocks *private = _private;
 int64_t old_position = private->fileposition;
 int64_t new_position = memory_read_seek(a, _private, skip, SEEK_CUR);
 return (new_position - old_position);
}
