
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIOCATMARK ;
 int _ioctl (int,int ,int*) ;

int sockatmark(int s)
{
 int atmark;

 if (_ioctl(s, SIOCATMARK, &atmark) == -1)
  return -1;
 return atmark;
}
