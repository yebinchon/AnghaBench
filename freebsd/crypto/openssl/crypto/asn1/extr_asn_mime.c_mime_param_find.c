
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int params; } ;
struct TYPE_7__ {char* param_name; int * param_value; } ;
typedef TYPE_1__ MIME_PARAM ;
typedef TYPE_2__ MIME_HEADER ;


 int sk_MIME_PARAM_find (int ,TYPE_1__*) ;
 TYPE_1__* sk_MIME_PARAM_value (int ,int) ;

__attribute__((used)) static MIME_PARAM *mime_param_find(MIME_HEADER *hdr, const char *name)
{
    MIME_PARAM param;
    int idx;

    param.param_name = (char *)name;
    param.param_value = ((void*)0);
    idx = sk_MIME_PARAM_find(hdr->params, &param);
    return sk_MIME_PARAM_value(hdr->params, idx);
}
