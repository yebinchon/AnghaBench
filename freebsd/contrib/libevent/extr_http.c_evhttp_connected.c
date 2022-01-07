
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evhttp_connection {int state; } ;
__attribute__((used)) static int
evhttp_connected(struct evhttp_connection *evcon)
{
 switch (evcon->state) {
 case 134:
 case 135:
  return (0);
 case 133:
 case 131:
 case 130:
 case 132:
 case 129:
 case 128:
 default:
  return (1);
 }
}
