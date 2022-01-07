
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef int int64_t ;



__attribute__((used)) static int64_t
skip_cb(struct archive *a, void *client, int64_t request)
{
 (void)a;
 (void)client;
 (void)request;
 return (int64_t)0;
}
