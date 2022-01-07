; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_BIO_s_bufferevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_BIO_s_bufferevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@methods_bufferevent = common dso_local global i32* null, align 8
@BIO_TYPE_LIBEVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"bufferevent\00", align 1
@bio_bufferevent_write = common dso_local global i32 0, align 4
@bio_bufferevent_read = common dso_local global i32 0, align 4
@bio_bufferevent_puts = common dso_local global i32 0, align 4
@bio_bufferevent_ctrl = common dso_local global i32 0, align 4
@bio_bufferevent_new = common dso_local global i32 0, align 4
@bio_bufferevent_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @BIO_s_bufferevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BIO_s_bufferevent() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32*, i32** @methods_bufferevent, align 8
  %3 = icmp eq i32* %2, null
  br i1 %3, label %4, label %29

4:                                                ; preds = %0
  %5 = load i32, i32* @BIO_TYPE_LIBEVENT, align 4
  %6 = call i32* @BIO_meth_new(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  store i32* %6, i32** @methods_bufferevent, align 8
  %7 = load i32*, i32** @methods_bufferevent, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %4
  store i32* null, i32** %1, align 8
  br label %31

10:                                               ; preds = %4
  %11 = load i32*, i32** @methods_bufferevent, align 8
  %12 = load i32, i32* @bio_bufferevent_write, align 4
  %13 = call i32 @BIO_meth_set_write(i32* %11, i32 %12)
  %14 = load i32*, i32** @methods_bufferevent, align 8
  %15 = load i32, i32* @bio_bufferevent_read, align 4
  %16 = call i32 @BIO_meth_set_read(i32* %14, i32 %15)
  %17 = load i32*, i32** @methods_bufferevent, align 8
  %18 = load i32, i32* @bio_bufferevent_puts, align 4
  %19 = call i32 @BIO_meth_set_puts(i32* %17, i32 %18)
  %20 = load i32*, i32** @methods_bufferevent, align 8
  %21 = load i32, i32* @bio_bufferevent_ctrl, align 4
  %22 = call i32 @BIO_meth_set_ctrl(i32* %20, i32 %21)
  %23 = load i32*, i32** @methods_bufferevent, align 8
  %24 = load i32, i32* @bio_bufferevent_new, align 4
  %25 = call i32 @BIO_meth_set_create(i32* %23, i32 %24)
  %26 = load i32*, i32** @methods_bufferevent, align 8
  %27 = load i32, i32* @bio_bufferevent_free, align 4
  %28 = call i32 @BIO_meth_set_destroy(i32* %26, i32 %27)
  br label %29

29:                                               ; preds = %10, %0
  %30 = load i32*, i32** @methods_bufferevent, align 8
  store i32* %30, i32** %1, align 8
  br label %31

31:                                               ; preds = %29, %9
  %32 = load i32*, i32** %1, align 8
  ret i32* %32
}

declare dso_local i32* @BIO_meth_new(i32, i8*) #1

declare dso_local i32 @BIO_meth_set_write(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_read(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_puts(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_ctrl(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_create(i32*, i32) #1

declare dso_local i32 @BIO_meth_set_destroy(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
