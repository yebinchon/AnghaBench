
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_data {int write_return; int write_called; int magic; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;


 int MAGIC ;
 int assertEqualInt (int ,int ) ;

__attribute__((used)) static ssize_t
my_write(struct archive *a, void *_private, const void *buff, size_t s)
{
 struct my_data *private = (struct my_data *)_private;
 (void)a;
 (void)buff;
 (void)s;
 assertEqualInt(MAGIC, private->magic);
 ++private->write_called;
 return (private->write_return);
}
