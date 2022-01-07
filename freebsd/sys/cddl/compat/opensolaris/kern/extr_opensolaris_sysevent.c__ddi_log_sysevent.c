
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sysevent_t ;
typedef int sysevent_id_t ;
typedef int nvlist_t ;


 int ASSERT (int) ;
 int DDI_SLEEP ;
 int SE_SLEEP ;
 int log_sysevent (int *,int ,int *) ;
 int * sysevent_alloc (char*,char*,char*,int ) ;
 int sysevent_attach_attributes (int *,int *) ;
 int sysevent_detach_attributes (int *) ;
 int sysevent_free (int *) ;

int
_ddi_log_sysevent(char *vendor, char *class, char *subclass,
    nvlist_t *attr_list, sysevent_id_t *eidp, int flag)
{
 sysevent_t *ev;
 int ret;

 ASSERT(vendor != ((void*)0));
 ASSERT(class != ((void*)0));
 ASSERT(subclass != ((void*)0));
 ASSERT(attr_list != ((void*)0));
 ASSERT(eidp != ((void*)0));
 ASSERT(flag == DDI_SLEEP);

 ev = sysevent_alloc(class, subclass, vendor, SE_SLEEP);
 ASSERT(ev != ((void*)0));
 (void)sysevent_attach_attributes(ev, attr_list);
        ret = log_sysevent(ev, SE_SLEEP, eidp);
 sysevent_detach_attributes(ev);
 sysevent_free(ev);

 return (ret);
}
