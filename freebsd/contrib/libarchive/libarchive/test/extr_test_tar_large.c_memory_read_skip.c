
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memdata {scalar_t__ filebytes; int * last; int * first; } ;
struct archive {int dummy; } ;
typedef scalar_t__ off_t ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int64_t
memory_read_skip(struct archive *a, void *_private, int64_t skip)
{
 struct memdata *private = _private;

 (void)a;

 if (private->first == ((void*)0)) {
  private->last = ((void*)0);
  return (0);
 }
 if (private->filebytes > 0) {
  if (private->filebytes < skip)
   skip = (off_t)private->filebytes;
  private->filebytes -= skip;
 } else {
  skip = 0;
 }
 return (skip);
}
