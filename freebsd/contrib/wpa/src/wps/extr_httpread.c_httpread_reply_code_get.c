
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct httpread {int reply_code; } ;



int httpread_reply_code_get(struct httpread *h)
{
 return h->reply_code;
}
