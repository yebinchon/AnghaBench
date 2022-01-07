; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_BIO_new_bufferevent.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libevent/extr_bufferevent_openssl.c_BIO_new_bufferevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bufferevent = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.bufferevent*, i32)* @BIO_new_bufferevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @BIO_new_bufferevent(%struct.bufferevent* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.bufferevent*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  store %struct.bufferevent* %0, %struct.bufferevent** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %8 = icmp ne %struct.bufferevent* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32* null, i32** %3, align 8
  br label %28

10:                                               ; preds = %2
  %11 = call i32 (...) @BIO_s_bufferevent()
  %12 = call i32* @BIO_new(i32 %11)
  store i32* %12, i32** %6, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %10
  store i32* null, i32** %3, align 8
  br label %28

15:                                               ; preds = %10
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @BIO_set_init(i32* %16, i32 1)
  %18 = load i32*, i32** %6, align 8
  %19 = load %struct.bufferevent*, %struct.bufferevent** %4, align 8
  %20 = call i32 @BIO_set_data(i32* %18, %struct.bufferevent* %19)
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 1, i32 0
  %26 = call i32 @BIO_set_shutdown(i32* %21, i32 %25)
  %27 = load i32*, i32** %6, align 8
  store i32* %27, i32** %3, align 8
  br label %28

28:                                               ; preds = %15, %14, %9
  %29 = load i32*, i32** %3, align 8
  ret i32* %29
}

declare dso_local i32* @BIO_new(i32) #1

declare dso_local i32 @BIO_s_bufferevent(...) #1

declare dso_local i32 @BIO_set_init(i32*, i32) #1

declare dso_local i32 @BIO_set_data(i32*, %struct.bufferevent*) #1

declare dso_local i32 @BIO_set_shutdown(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
