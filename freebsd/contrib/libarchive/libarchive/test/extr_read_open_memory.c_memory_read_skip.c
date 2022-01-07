
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_memory_data {int end; int p; } ;
struct archive {int dummy; } ;
typedef scalar_t__ off_t ;
typedef int int64_t ;



__attribute__((used)) static int64_t
memory_read_skip(struct archive *a, void *client_data, int64_t skip)
{
 struct read_memory_data *mine = (struct read_memory_data *)client_data;

 (void)a;

 if ((off_t)skip > (off_t)(mine->end - mine->p))
  skip = mine->end - mine->p;

 if (skip > 71)
  skip = 71;
 mine->p += skip;
 return (skip);
}
