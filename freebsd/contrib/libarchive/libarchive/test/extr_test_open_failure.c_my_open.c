
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct my_data {int open_return; int open_called; int magic; } ;
struct archive {int dummy; } ;


 int MAGIC ;
 int assertEqualInt (int ,int ) ;

__attribute__((used)) static int
my_open(struct archive *a, void *_private)
{
 struct my_data *private = (struct my_data *)_private;
 (void)a;
 assertEqualInt(MAGIC, private->magic);
 ++private->open_called;
 return (private->open_return);
}
