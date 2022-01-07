
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_FILE_data {scalar_t__ can_skip; int f; } ;
struct archive {int dummy; } ;
typedef int skip ;
typedef int request ;
typedef int off_t ;
typedef scalar_t__ int64_t ;


 int SEEK_CUR ;
 scalar_t__ _fseeki64 (int ,long,int ) ;
 int fileno (int ) ;
 scalar_t__ fseek (int ,long,int ) ;
 scalar_t__ fseeko (int ,long,int ) ;
 scalar_t__ lseek (int ,long,int ) ;

__attribute__((used)) static int64_t
file_skip(struct archive *a, void *client_data, int64_t request)
{
 struct read_FILE_data *mine = (struct read_FILE_data *)client_data;





 long skip = (long)request;

 int skip_bits = sizeof(skip) * 8 - 1;

 (void)a;





 if (!mine->can_skip)
  return (0);
 if (request == 0)
  return (0);


 if (sizeof(request) > sizeof(skip)) {
  int64_t max_skip =
      (((int64_t)1 << (skip_bits - 1)) - 1) * 2 + 1;
  if (request > max_skip)
   skip = max_skip;
 }
 if (fseek(mine->f, skip, SEEK_CUR) != 0)

 {
  mine->can_skip = 0;
  return (0);
 }
 return (request);
}
