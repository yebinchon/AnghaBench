; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_recv.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ofed/librdmacm/extr_preload.c_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i32, i8*, i64, i32)* }

@fd_rsocket = common dso_local global i64 0, align 8
@real = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv(i32 %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i64 @fd_fork_get(i32 %10, i32* %9)
  %12 = load i64, i64* @fd_rsocket, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @rrecv(i32 %15, i8* %16, i64 %17, i32 %18)
  br label %27

20:                                               ; preds = %4
  %21 = load i32 (i32, i8*, i64, i32)*, i32 (i32, i8*, i64, i32)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @real, i32 0, i32 0), align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i8*, i8** %6, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 %21(i32 %22, i8* %23, i64 %24, i32 %25)
  br label %27

27:                                               ; preds = %20, %14
  %28 = phi i32 [ %19, %14 ], [ %26, %20 ]
  ret i32 %28
}

declare dso_local i64 @fd_fork_get(i32, i32*) #1

declare dso_local i32 @rrecv(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
