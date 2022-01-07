; ModuleID = '/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_timedsend_cancel.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/librt/extr_mq.c___mq_timedsend_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.timespec = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mq_timedsend_cancel(%struct.TYPE_3__* %0, i8* %1, i64 %2, i32 %3, %struct.timespec* %4) #0 {
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.timespec* %4, %struct.timespec** %10, align 8
  %12 = call i32 @_pthread_cancel_enter(i32 1)
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = load i64, i64* %8, align 8
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.timespec*, %struct.timespec** %10, align 8
  %20 = call i32 @__sys_kmq_timedsend(i32 %15, i8* %16, i64 %17, i32 %18, %struct.timespec* %19)
  store i32 %20, i32* %11, align 4
  %21 = load i32, i32* %11, align 4
  %22 = icmp eq i32 %21, -1
  %23 = zext i1 %22 to i32
  %24 = call i32 @_pthread_cancel_leave(i32 %23)
  %25 = load i32, i32* %11, align 4
  ret i32 %25
}

declare dso_local i32 @_pthread_cancel_enter(i32) #1

declare dso_local i32 @__sys_kmq_timedsend(i32, i8*, i64, i32, %struct.timespec*) #1

declare dso_local i32 @_pthread_cancel_leave(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
