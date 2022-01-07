
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIOCGLIFCONF ;
 int ioctl (int ,int ,char*) ;

int main() {
    ioctl(0, SIOCGLIFCONF, (char *)0);
}
