
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Forward {scalar_t__ listen_port; scalar_t__ connect_port; int connect_path; int connect_host; int listen_path; int listen_host; } ;


 scalar_t__ strcmp_maybe_null (int ,int ) ;

int
forward_equals(const struct Forward *a, const struct Forward *b)
{
 if (strcmp_maybe_null(a->listen_host, b->listen_host) == 0)
  return 0;
 if (a->listen_port != b->listen_port)
  return 0;
 if (strcmp_maybe_null(a->listen_path, b->listen_path) == 0)
  return 0;
 if (strcmp_maybe_null(a->connect_host, b->connect_host) == 0)
  return 0;
 if (a->connect_port != b->connect_port)
  return 0;
 if (strcmp_maybe_null(a->connect_path, b->connect_path) == 0)
  return 0;

 return 1;
}
