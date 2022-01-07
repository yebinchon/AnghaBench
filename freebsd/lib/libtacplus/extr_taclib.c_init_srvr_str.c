
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srvr_str {scalar_t__ len; int * data; } ;



__attribute__((used)) static void
init_srvr_str(struct srvr_str *ss)
{
 ss->data = ((void*)0);
 ss->len = 0;
}
