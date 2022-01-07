
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t length; int value; } ;
struct TYPE_5__ {size_t length; int value; } ;
struct mg_thread_ctx {int maj_stat; int min_stat; TYPE_2__ min_error; TYPE_1__ maj_error; int mech; } ;
typedef TYPE_3__* gss_buffer_t ;
typedef int * gss_OID ;
struct TYPE_7__ {size_t length; int * value; } ;
typedef int OM_uint32 ;




 int GSS_S_BAD_STATUS ;
 int GSS_S_COMPLETE ;
 struct mg_thread_ctx* _gss_mechglue_thread () ;
 scalar_t__ gss_oid_equal (int ,int * const) ;
 void* malloc (int ) ;
 int memcpy (int *,int ,size_t) ;

OM_uint32
_gss_mg_get_error(const gss_OID mech, OM_uint32 type,
    OM_uint32 value, gss_buffer_t string)
{
    struct mg_thread_ctx *mg;

    mg = _gss_mechglue_thread();
    if (mg == ((void*)0))
 return GSS_S_BAD_STATUS;
    switch (type) {
    case 129: {
 if (value != mg->maj_stat || mg->maj_error.length == 0)
     break;
 string->value = malloc(mg->maj_error.length + 1);
 string->length = mg->maj_error.length;
 memcpy(string->value, mg->maj_error.value, mg->maj_error.length);
        ((char *) string->value)[string->length] = '\0';
 return GSS_S_COMPLETE;
    }
    case 128: {
 if (value != mg->min_stat || mg->min_error.length == 0)
     break;
 string->value = malloc(mg->min_error.length + 1);
 string->length = mg->min_error.length;
 memcpy(string->value, mg->min_error.value, mg->min_error.length);
        ((char *) string->value)[string->length] = '\0';
 return GSS_S_COMPLETE;
    }
    }
    string->value = ((void*)0);
    string->length = 0;
    return GSS_S_BAD_STATUS;
}
