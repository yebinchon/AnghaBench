
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct client {int dummy; } ;


 int GSMERR_OK ;
 int eGoodBye ;
 int put32 (struct client*,int ) ;

__attribute__((used)) static int
goodbye(struct client *client)
{
    put32(client, eGoodBye);
    return GSMERR_OK;
}
