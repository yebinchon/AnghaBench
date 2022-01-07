
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int isc_result_t ;
typedef int isc_httpdfree_t ;
typedef int isc_buffer_t ;


 int ISC_R_SUCCESS ;
 int UNUSED (void*) ;
 int isc_buffer_add (int *,int ) ;
 int isc_buffer_reinit (int *,char*,int ) ;
 int strlen (char*) ;

__attribute__((used)) static isc_result_t
render_500(const char *url, const char *querystring,
    void *arg,
    unsigned int *retcode, const char **retmsg,
    const char **mimetype, isc_buffer_t *b,
    isc_httpdfree_t **freecb, void **freecb_args)
{
 static char msg[] = "Internal server failure.";

 UNUSED(url);
 UNUSED(querystring);
 UNUSED(arg);

 *retcode = 500;
 *retmsg = "Internal server failure";
 *mimetype = "text/plain";
 isc_buffer_reinit(b, msg, strlen(msg));
 isc_buffer_add(b, strlen(msg));
 *freecb = ((void*)0);
 *freecb_args = ((void*)0);

 return (ISC_R_SUCCESS);
}
