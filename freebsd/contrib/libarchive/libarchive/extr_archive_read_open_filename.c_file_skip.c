
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct read_file_data {scalar_t__ use_lseek; } ;
struct archive {int dummy; } ;
typedef int int64_t ;


 int file_skip_lseek (struct archive*,void*,int ) ;

__attribute__((used)) static int64_t
file_skip(struct archive *a, void *client_data, int64_t request)
{
 struct read_file_data *mine = (struct read_file_data *)client_data;


 if (mine->use_lseek)
  return (file_skip_lseek(a, client_data, request));


 return (0);
}
