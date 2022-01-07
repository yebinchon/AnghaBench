
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int how_set; int * how_data; } ;


 int free (int *) ;
 int * strdup (char const*) ;

int
run_how_assign(struct run *msg,
    const char * value)
{
  if (msg->how_data != ((void*)0))
    free(msg->how_data);
  if ((msg->how_data = strdup(value)) == ((void*)0))
    return (-1);
  msg->how_set = 1;
  return (0);
}
