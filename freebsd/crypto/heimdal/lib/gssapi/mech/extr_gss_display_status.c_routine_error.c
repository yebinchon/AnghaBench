
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msgs ;
typedef int OM_uint32 ;


 int GSS_C_ROUTINE_ERROR_OFFSET ;

__attribute__((used)) static const char *
routine_error(OM_uint32 v)
{
    static const char *msgs[] = {
 "Function completed successfully",
 "An unsupported mechanism was requested",
 "An invalid name was supplied",
 "A supplied name was of an unsupported type",
 "Incorrect channel bindings were supplied",
 "An invalid status code was supplied",
 "A token had an invalid MIC",
 "No credentials were supplied, "
 "or the credentials were unavailable or inaccessible.",
 "No context has been established",
 "A token was invalid",
 "A credential was invalid",
 "The referenced credentials have expired",
 "The context has expired",
 "Miscellaneous failure (see text)",
 "The quality-of-protection requested could not be provide",
 "The operation is forbidden by local security policy",
 "The operation or option is not available",
 "The requested credential element already exists",
 "The provided name was not a mechanism name.",
    };

    v >>= GSS_C_ROUTINE_ERROR_OFFSET;

    if (v >= sizeof(msgs)/sizeof(*msgs))
 return "unknown routine error";
    else
 return msgs[v];
}
