
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct data_key {int user; } ;



__attribute__((used)) static void ieee802_1x_kay_use_data_key(struct data_key *pkey)
{
 pkey->user++;
}
