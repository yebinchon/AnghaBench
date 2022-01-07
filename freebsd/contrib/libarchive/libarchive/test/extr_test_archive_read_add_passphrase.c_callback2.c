
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;



__attribute__((used)) static const char *
callback2(struct archive *a, void *_client_data)
{
 int *cd = (int *)_client_data;

 (void)a;

 if (*cd == 0) {
  *cd = 1;
  return ("passCallBack");
 }
 return (((void*)0));
}
