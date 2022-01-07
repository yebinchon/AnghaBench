
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee802_1x_cp_sm {scalar_t__ connect; scalar_t__ chgd_server; } ;


 scalar_t__ SECURE ;
 scalar_t__ changed_cipher (struct ieee802_1x_cp_sm*) ;

__attribute__((used)) static int changed_connect(struct ieee802_1x_cp_sm *sm)
{
 return sm->connect != SECURE || sm->chgd_server || changed_cipher(sm);
}
