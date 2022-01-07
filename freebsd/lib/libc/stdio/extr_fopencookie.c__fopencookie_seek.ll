; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c__fopencookie_seek.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c__fopencookie_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fopencookie_thunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32, i64*, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @_fopencookie_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fopencookie_seek(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fopencookie_thunk*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %13 [
    i32 128, label %12
    i32 130, label %12
    i32 129, label %12
  ]

12:                                               ; preds = %3, %3, %3
  br label %15

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %44

15:                                               ; preds = %12
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.fopencookie_thunk*
  store %struct.fopencookie_thunk* %17, %struct.fopencookie_thunk** %8, align 8
  %18 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %8, align 8
  %19 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %20, align 8
  %22 = icmp eq i32 (i32, i64*, i32)* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %15
  %24 = load i32, i32* @ENOTSUP, align 4
  store i32 %24, i32* @errno, align 4
  store i32 -1, i32* %4, align 4
  br label %44

25:                                               ; preds = %15
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %9, align 8
  %28 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %8, align 8
  %29 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (i32, i64*, i32)*, i32 (i32, i64*, i32)** %30, align 8
  %32 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %8, align 8
  %33 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 %31(i32 %34, i64* %9, i32 %35)
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %25
  %40 = load i32, i32* %10, align 4
  store i32 %40, i32* %4, align 4
  br label %44

41:                                               ; preds = %25
  %42 = load i64, i64* %9, align 8
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %39, %23, %13
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
