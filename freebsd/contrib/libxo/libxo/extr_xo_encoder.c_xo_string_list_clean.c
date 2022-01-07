
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int xo_string_node_t ;
typedef int xo_string_list_t ;


 int * TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int xo_free (int *) ;
 int xo_string_list_init (int *) ;
 int xs_link ;

__attribute__((used)) static inline void
xo_string_list_clean (xo_string_list_t *listp)
{
    xo_string_node_t *xsp;

    xo_string_list_init(listp);

    for (;;) {
 xsp = TAILQ_FIRST(listp);
        if (xsp == ((void*)0))
            break;
        TAILQ_REMOVE(listp, xsp, xs_link);
 xo_free(xsp);
    }
}
