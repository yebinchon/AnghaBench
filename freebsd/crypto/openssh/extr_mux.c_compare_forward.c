
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Forward {scalar_t__ listen_port; scalar_t__ connect_port; int connect_path; int connect_host; int listen_path; int listen_host; } ;


 int compare_host (int ,int ) ;

__attribute__((used)) static int
compare_forward(struct Forward *a, struct Forward *b)
{
 if (!compare_host(a->listen_host, b->listen_host))
  return 0;
 if (!compare_host(a->listen_path, b->listen_path))
  return 0;
 if (a->listen_port != b->listen_port)
  return 0;
 if (!compare_host(a->connect_host, b->connect_host))
  return 0;
 if (!compare_host(a->connect_path, b->connect_path))
  return 0;
 if (a->connect_port != b->connect_port)
  return 0;

 return 1;
}
