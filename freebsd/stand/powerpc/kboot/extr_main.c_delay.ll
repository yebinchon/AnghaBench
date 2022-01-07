; ModuleID = '/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_delay.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/powerpc/kboot/extr_main.c_delay.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.host_timeval = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @delay(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.host_timeval, align 8
  %4 = alloca %struct.host_timeval, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  %7 = call i32 @host_gettimeofday(%struct.host_timeval* %3, i32* null)
  %8 = getelementptr inbounds %struct.host_timeval, %struct.host_timeval* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = mul nsw i32 %9, 1000000
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.host_timeval, %struct.host_timeval* %3, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = add nsw i64 %11, %13
  store i64 %14, i64* %5, align 8
  br label %15

15:                                               ; preds = %24, %1
  %16 = call i32 @host_gettimeofday(%struct.host_timeval* %4, i32* null)
  %17 = getelementptr inbounds %struct.host_timeval, %struct.host_timeval* %4, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = mul nsw i32 %18, 1000000
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.host_timeval, %struct.host_timeval* %4, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %20, %22
  store i64 %23, i64* %6, align 8
  br label %24

24:                                               ; preds = %15
  %25 = load i64, i64* %6, align 8
  %26 = load i64, i64* %5, align 8
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %26, %28
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %15, label %31

31:                                               ; preds = %24
  ret void
}

declare dso_local i32 @host_gettimeofday(%struct.host_timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
