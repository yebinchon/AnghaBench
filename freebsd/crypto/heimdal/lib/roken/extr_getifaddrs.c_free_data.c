
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __set_errno (int) ;
 int errno ;
 int free (void*) ;

__attribute__((used)) static void
free_data(void *data, void *ifdata)
{
  int saved_errno = errno;
  if (data != ((void*)0)) free(data);
  if (ifdata != ((void*)0)) free(ifdata);
  __set_errno(saved_errno);
}
