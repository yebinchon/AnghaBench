
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clnt_str {scalar_t__ len; int * data; } ;



__attribute__((used)) static void
init_clnt_str(struct clnt_str *cs)
{
 cs->data = ((void*)0);
 cs->len = 0;
}
