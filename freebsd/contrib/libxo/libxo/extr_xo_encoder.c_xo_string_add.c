
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* xs_data; } ;
typedef TYPE_1__ xo_string_node_t ;
typedef int xo_string_list_t ;


 int TAILQ_INSERT_TAIL (int *,TYPE_1__*,int ) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 TYPE_1__* xo_realloc (int *,int) ;
 int xo_string_list_init (int *) ;
 int xs_link ;

__attribute__((used)) static inline xo_string_node_t *
xo_string_add (xo_string_list_t *listp, const char *str)
{
    if (listp == ((void*)0) || str == ((void*)0))
 return ((void*)0);

    xo_string_list_init(listp);
    size_t len = strlen(str);
    xo_string_node_t *xsp;

    xsp = xo_realloc(((void*)0), sizeof(*xsp) + len + 1);
    if (xsp) {
 memcpy(xsp->xs_data, str, len);
 xsp->xs_data[len] = '\0';
 TAILQ_INSERT_TAIL(listp, xsp, xs_link);
    }

    return xsp;
}
