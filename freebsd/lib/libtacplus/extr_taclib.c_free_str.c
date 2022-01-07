
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct clnt_str {scalar_t__ len; int * data; } ;


 int free (int *) ;
 int memset (int *,int ,scalar_t__) ;

__attribute__((used)) static void
free_str(struct clnt_str *cs)
{
 if (cs->data != ((void*)0)) {
  memset(cs->data, 0, cs->len);
  free(cs->data);
  cs->data = ((void*)0);
  cs->len = 0;
 }
}
