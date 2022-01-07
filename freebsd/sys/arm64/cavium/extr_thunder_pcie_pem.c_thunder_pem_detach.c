
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int device_t ;


 int thunder_pem_release_all (int ) ;

__attribute__((used)) static int
thunder_pem_detach(device_t dev)
{

 thunder_pem_release_all(dev);

 return (0);
}
