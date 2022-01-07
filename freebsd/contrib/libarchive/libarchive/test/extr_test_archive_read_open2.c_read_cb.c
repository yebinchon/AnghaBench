
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int ssize_t ;



__attribute__((used)) static ssize_t
read_cb(struct archive *a, void *client, const void **buff)
{
 (void)a;
 (void)client;
 (void)buff;
 return (ssize_t)0;
}
