
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;



__attribute__((used)) static int
close_cb(struct archive *a, void *client)
{
 (void)a;
 (void)client;
 return 0;
}
