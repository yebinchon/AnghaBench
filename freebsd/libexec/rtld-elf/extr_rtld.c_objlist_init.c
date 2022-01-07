
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Objlist ;


 int STAILQ_INIT (int *) ;

__attribute__((used)) static void
objlist_init(Objlist *list)
{
    STAILQ_INIT(list);
}
