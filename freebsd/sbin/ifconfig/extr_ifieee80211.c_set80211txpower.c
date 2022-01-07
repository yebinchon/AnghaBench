
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct afswtch {int dummy; } ;


 int IEEE80211_IOC_TXPOWER ;
 double atof (char const*) ;
 int errx (int,char*) ;
 int set80211 (int,int ,int,int ,int *) ;

__attribute__((used)) static void
set80211txpower(const char *val, int d, int s, const struct afswtch *rafp)
{
 double v = atof(val);
 int txpow;

 txpow = (int) (2*v);
 if (txpow != 2*v)
  errx(-1, "invalid tx power (must be .5 dBm units)");
 set80211(s, IEEE80211_IOC_TXPOWER, txpow, 0, ((void*)0));
}
