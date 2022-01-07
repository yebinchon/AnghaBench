; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_intvl_random.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/routed/extr_main.c_intvl_random.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @intvl_random(%struct.timeval* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %5, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  br label %21

12:                                               ; preds = %3
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* %6, align 8
  %15 = add nsw i64 1, %14
  %16 = load i64, i64* %5, align 8
  %17 = sub nsw i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = call i64 @arc4random_uniform(i32 %18)
  %20 = add nsw i64 %13, %19
  br label %21

21:                                               ; preds = %12, %10
  %22 = phi i64 [ %11, %10 ], [ %20, %12 ]
  %23 = load %struct.timeval*, %struct.timeval** %4, align 8
  %24 = getelementptr inbounds %struct.timeval, %struct.timeval* %23, i32 0, i32 1
  store i64 %22, i64* %24, align 8
  %25 = call i64 @arc4random_uniform(i32 1000000)
  %26 = load %struct.timeval*, %struct.timeval** %4, align 8
  %27 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  ret void
}

declare dso_local i64 @arc4random_uniform(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
