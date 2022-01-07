
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_memory_data {scalar_t__ end; scalar_t__ p; scalar_t__ read_size; } ;
struct archive {int dummy; } ;
typedef scalar_t__ int64_t ;



__attribute__((used)) static int64_t
memory_read_skip(struct archive *a, void *client_data, int64_t skip)
{
 struct read_memory_data *mine = (struct read_memory_data *)client_data;

 (void)a;
 if ((int64_t)skip > (int64_t)(mine->end - mine->p))
  skip = mine->end - mine->p;

 skip /= mine->read_size;
 skip *= mine->read_size;
 mine->p += skip;
 return (skip);
}
