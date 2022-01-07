
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msgs ;
typedef int OM_uint32 ;


 int GSS_C_SUPPLEMENTARY_OFFSET ;

__attribute__((used)) static const char *
supplementary_error(OM_uint32 v)
{
    static const char *msgs[] = {
 "normal completion",
 "continuation call to routine required",
 "duplicate per-message token detected",
 "timed-out per-message token detected",
 "reordered (early) per-message token detected",
 "skipped predecessor token(s) detected"
    };

    v >>= GSS_C_SUPPLEMENTARY_OFFSET;

    if (v >= sizeof(msgs)/sizeof(*msgs))
 return "unknown routine error";
    else
 return msgs[v];
}
