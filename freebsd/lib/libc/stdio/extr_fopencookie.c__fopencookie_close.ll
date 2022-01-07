; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c__fopencookie_close.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/stdio/extr_fopencookie.c__fopencookie_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fopencookie_thunk = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (i32)* }

@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @_fopencookie_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_fopencookie_close(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fopencookie_thunk*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %4, align 4
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.fopencookie_thunk*
  store %struct.fopencookie_thunk* %7, %struct.fopencookie_thunk** %3, align 8
  %8 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %3, align 8
  %9 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (i32)*, i32 (i32)** %10, align 8
  %12 = icmp ne i32 (i32)* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %3, align 8
  %15 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %3, align 8
  %19 = getelementptr inbounds %struct.fopencookie_thunk, %struct.fopencookie_thunk* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 %17(i32 %20)
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %13, %1
  %23 = load i32, i32* @errno, align 4
  store i32 %23, i32* %5, align 4
  %24 = load %struct.fopencookie_thunk*, %struct.fopencookie_thunk** %3, align 8
  %25 = call i32 @free(%struct.fopencookie_thunk* %24)
  %26 = load i32, i32* %5, align 4
  store i32 %26, i32* @errno, align 4
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i32 @free(%struct.fopencookie_thunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
