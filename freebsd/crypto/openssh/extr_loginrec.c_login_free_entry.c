
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct logininfo {int dummy; } ;


 int free (struct logininfo*) ;

void
login_free_entry(struct logininfo *li)
{
 free(li);
}
