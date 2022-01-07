
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {int body_nbytes; } ;



int httpread_length_get(struct httpread *h)
{
 return h->body_nbytes;
}
