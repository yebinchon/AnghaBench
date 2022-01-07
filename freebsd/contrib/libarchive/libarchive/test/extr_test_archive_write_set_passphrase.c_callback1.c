
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;



__attribute__((used)) static const char *
callback1(struct archive *a, void *_client_data)
{
 int *cnt;

 (void)a;

 cnt = (int *)_client_data;
 *cnt += 1;
 return ("passCallBack");
}
