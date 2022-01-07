
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t apr_size_t ;


 size_t dirent_root_length (char const*,size_t) ;

__attribute__((used)) static apr_size_t
dirent_previous_segment(const char *dirent,
                        apr_size_t len)
{
  if (len == 0)
    return 0;

  --len;
  while (len > 0 && dirent[len] != '/'



        )
    --len;


  if (dirent_root_length(dirent, len+1) == len + 1)
    return len + 1;
  else
    return len;
}
