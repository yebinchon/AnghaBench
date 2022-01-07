
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int size; struct TYPE_2__* end; struct TYPE_2__* begin; } ;
struct sync_fixture {TYPE_1__* buffer; TYPE_1__ config; } ;
struct ptunit_result {int dummy; } ;


 int memset (TYPE_1__*,int,int) ;
 struct ptunit_result ptu_passed () ;

__attribute__((used)) static struct ptunit_result sfix_init(struct sync_fixture *sfix)
{
 memset(sfix->buffer, 0xcd, sizeof(sfix->buffer));

 memset(&sfix->config, 0, sizeof(sfix->config));
 sfix->config.size = sizeof(sfix->config);
 sfix->config.begin = sfix->buffer;
 sfix->config.end = sfix->buffer + sizeof(sfix->buffer);

 return ptu_passed();
}
