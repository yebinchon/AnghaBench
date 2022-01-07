
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int errno ;
 int event_err (int,char*,char*) ;

__attribute__((used)) static void
err_fn(void)
{
 errno = ENOENT;
 event_err(5,"Couldn't open %s", "/very/bad/file");
}
