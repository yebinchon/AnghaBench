
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct run {int some_bytes_set; int * some_bytes_data; int some_bytes_length; } ;
typedef int ev_uint8_t ;
typedef int ev_uint32_t ;


 int free (int *) ;
 int * malloc (int ) ;
 int memcpy (int *,int const*,int ) ;

int
run_some_bytes_assign(struct run *msg, const ev_uint8_t * value, ev_uint32_t len)
{
  if (msg->some_bytes_data != ((void*)0))
    free (msg->some_bytes_data);
  msg->some_bytes_data = malloc(len);
  if (msg->some_bytes_data == ((void*)0))
    return (-1);
  msg->some_bytes_set = 1;
  msg->some_bytes_length = len;
  memcpy(msg->some_bytes_data, value, len);
  return (0);
}
