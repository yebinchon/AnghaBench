
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XmapVal ;
typedef int CStr ;


 int TraverseMap (int ,int *,int *) ;
 int Xmap ;

int
GetXkey(CStr *ch, XmapVal *val)
{
    return (TraverseMap(Xmap, ch, val));
}
