
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysevent_t ;
struct sysevent {int se_pub; int se_subclass; int se_class; int * se_nvl; } ;


 int ASSERT (int) ;
 int KM_SLEEP ;
 int SE_SLEEP ;
 struct sysevent* kmem_alloc (int,int ) ;
 int strlcpy (int ,char*,int) ;

sysevent_t *
sysevent_alloc(char *class, char *subclass, char *pub, int flag)
{
 struct sysevent *ev;

 ASSERT(class != ((void*)0));
 ASSERT(subclass != ((void*)0));
 ASSERT(pub != ((void*)0));
 ASSERT(flag == SE_SLEEP);

 ev = kmem_alloc(sizeof(*ev), KM_SLEEP);
 ev->se_nvl = ((void*)0);
 strlcpy(ev->se_class, class, sizeof(ev->se_class));
 strlcpy(ev->se_subclass, subclass, sizeof(ev->se_subclass));
 strlcpy(ev->se_pub, pub, sizeof(ev->se_pub));

 return ((sysevent_t *)ev);
}
