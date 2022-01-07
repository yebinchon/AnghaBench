
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct peer {int dummy; } ;
typedef unsigned int associd_t ;


 unsigned int current_association_ID ;
 struct peer* findpeerbyassoc (unsigned int) ;
 unsigned int initial_association_ID ;
 int unpeer (struct peer*) ;

void peer_cleanup(void)
{
        struct peer *peer;
        associd_t assoc;

        for (assoc = initial_association_ID; assoc != current_association_ID; assoc++) {
            if (assoc != 0U) {
                peer = findpeerbyassoc(assoc);
                if (peer != ((void*)0))
                    unpeer(peer);
            }
        }
        peer = findpeerbyassoc(current_association_ID);
        if (peer != ((void*)0))
            unpeer(peer);
}
