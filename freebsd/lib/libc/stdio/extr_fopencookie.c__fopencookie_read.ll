; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c__fopencookie_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c__fopencookie_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fopencookie_thunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 (i32, i8*, i64)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32)* @_fopencookie_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fopencookie_read(i8* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fopencookie_thunk*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.fopencookie_thunk*
  store %struct.fopencookie_thunk* %10, %struct.fopencookie_thunk** %8, align 8
  %11 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %8, align 8
  %12 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %13, align 8
  %15 = icmp eq i64 (i32, i8*, i64)* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %8, align 8
  %19 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64 (i32, i8*, i64)*, i64 (i32, i8*, i64)** %20, align 8
  %22 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %8, align 8
  %23 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = sext i32 %26 to i64
  %28 = call i64 %21(i32 %24, i8* %25, i64 %27)
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %17, %16
  %31 = load i32, i32* %4, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
