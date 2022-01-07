
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isc_msgcat ;
 int isc_msgcat_open (char*,int *) ;

__attribute__((used)) static void
open_msgcat(void) {
 isc_msgcat_open("libisc.cat", &isc_msgcat);
}
