; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_set_options.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/examples/extr_udpong.c_set_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@buffer_size = common dso_local global i64 0, align 8
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_SNDBUF = common dso_local global i32 0, align 4
@SO_RCVBUF = common dso_local global i32 0, align 4
@flags = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@F_SETFL = common dso_local global i32 0, align 4
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @set_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_options(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i64, i64* @buffer_size, align 8
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %15

6:                                                ; preds = %1
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @SOL_SOCKET, align 4
  %9 = load i32, i32* @SO_SNDBUF, align 4
  %10 = call i32 @rs_setsockopt(i32 %7, i32 %8, i32 %9, i8* bitcast (i64* @buffer_size to i8*), i32 8)
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SOL_SOCKET, align 4
  %13 = load i32, i32* @SO_RCVBUF, align 4
  %14 = call i32 @rs_setsockopt(i32 %11, i32 %12, i32 %13, i8* bitcast (i64* @buffer_size to i8*), i32 8)
  br label %26

15:                                               ; preds = %1
  store i32 524288, i32* %3, align 4
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @SOL_SOCKET, align 4
  %18 = load i32, i32* @SO_SNDBUF, align 4
  %19 = bitcast i32* %3 to i8*
  %20 = call i32 @rs_setsockopt(i32 %16, i32 %17, i32 %18, i8* %19, i32 4)
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* @SOL_SOCKET, align 4
  %23 = load i32, i32* @SO_RCVBUF, align 4
  %24 = bitcast i32* %3 to i8*
  %25 = call i32 @rs_setsockopt(i32 %21, i32 %22, i32 %23, i8* %24, i32 4)
  br label %26

26:                                               ; preds = %15, %6
  %27 = load i32, i32* @flags, align 4
  %28 = load i32, i32* @MSG_DONTWAIT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @F_SETFL, align 4
  %34 = load i32, i32* @O_NONBLOCK, align 4
  %35 = call i32 @rs_fcntl(i32 %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  ret void
}

declare dso_local i32 @rs_setsockopt(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @rs_fcntl(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
