
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_LDPC ;
 int errx (int,char*) ;
 scalar_t__ get80211val (int,int ,int*) ;
 int set80211 (int,int ,int,int ,int *) ;

__attribute__((used)) static void
set80211ldpc(const char *val, int d, int s, const struct afswtch *rafp)
{
        int ldpc;

        if (get80211val(s, IEEE80211_IOC_LDPC, &ldpc) < 0)
                errx(-1, "cannot set LDPC setting");
        if (d < 0) {
                d = -d;
                ldpc &= ~d;
        } else
                ldpc |= d;
        set80211(s, IEEE80211_IOC_LDPC, ldpc, 0, ((void*)0));
}
