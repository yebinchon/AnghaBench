
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_data {int read_return; int read_called; int magic; } ;
struct archive {int dummy; } ;
typedef int ssize_t ;


 int MAGIC ;
 int assertEqualInt (int ,int ) ;

__attribute__((used)) static ssize_t
my_read(struct archive *a, void *_private, const void **buff)
{
 struct my_data *private = (struct my_data *)_private;
 (void)a;
 (void)buff;
 assertEqualInt(MAGIC, private->magic);
 ++private->read_called;
 return (private->read_return);
}
