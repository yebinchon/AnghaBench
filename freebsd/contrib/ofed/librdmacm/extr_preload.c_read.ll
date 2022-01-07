; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i64)* }

@fd_rsocket = common dso_local global i64 0, align 8
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = call i32 (...) @init_preload()
  %9 = load i32, i32* %4, align 4
  %10 = call i64 @fd_fork_get(i32 %9, i32* %7)
  %11 = load i64, i64* @fd_rsocket, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = load i8*, i8** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @rread(i32 %14, i8* %15, i64 %16)
  br label %24

18:                                               ; preds = %3
  %19 = load i32 (i32, i8*, i64)*, i32 (i32, i8*, i64)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i8*, i8** %5, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 %19(i32 %20, i8* %21, i64 %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = phi i32 [ %17, %13 ], [ %23, %18 ]
  ret i32 %25
}

declare dso_local i32 @init_preload(...) #1

declare dso_local i64 @fd_fork_get(i32, i32*) #1

declare dso_local i32 @rread(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
