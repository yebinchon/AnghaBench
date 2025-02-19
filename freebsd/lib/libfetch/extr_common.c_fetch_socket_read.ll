; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_socket_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libfetch/extr_common.c_fetch_socket_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@fetchRestartCalls = common dso_local global i64 0, align 8
@FETCH_READ_WAIT = common dso_local global i64 0, align 8
@FETCH_READ_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*, i64)* @fetch_socket_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @fetch_socket_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = load i64, i64* %7, align 8
  %12 = call i64 @read(i32 %9, i8* %10, i64 %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %30

15:                                               ; preds = %3
  %16 = load i64, i64* @errno, align 8
  %17 = load i64, i64* @EAGAIN, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* @errno, align 8
  %21 = load i64, i64* @EINTR, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = load i64, i64* @fetchRestartCalls, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23, %15
  %27 = load i64, i64* @FETCH_READ_WAIT, align 8
  store i64 %27, i64* %4, align 8
  br label %32

28:                                               ; preds = %23, %19
  %29 = load i64, i64* @FETCH_READ_ERROR, align 8
  store i64 %29, i64* %4, align 8
  br label %32

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  store i64 %31, i64* %4, align 8
  br label %32

32:                                               ; preds = %30, %28, %26
  %33 = load i64, i64* %4, align 8
  ret i64 %33
}

declare dso_local i64 @read(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
