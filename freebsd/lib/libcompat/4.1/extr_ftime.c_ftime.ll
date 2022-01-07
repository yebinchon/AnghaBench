; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libcompat/4.1/extr_ftime.c_ftime.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libcompat/4.1/extr_ftime.c_ftime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeb = type { i32, i32, i32, i32 }
%struct.timezone = type { i32, i32 }
%struct.timeval = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ftime(%struct.timeb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeb*, align 8
  %4 = alloca %struct.timezone, align 4
  %5 = alloca %struct.timeval, align 4
  store %struct.timeb* %0, %struct.timeb** %3, align 8
  %6 = call i64 @gettimeofday(%struct.timeval* %5, %struct.timezone* %4)
  %7 = icmp slt i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %27

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = sdiv i32 %11, 1000
  %13 = load %struct.timeb*, %struct.timeb** %3, align 8
  %14 = getelementptr inbounds %struct.timeb, %struct.timeb* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %5, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.timeb*, %struct.timeb** %3, align 8
  %18 = getelementptr inbounds %struct.timeb, %struct.timeb* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.timezone, %struct.timezone* %4, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.timeb*, %struct.timeb** %3, align 8
  %22 = getelementptr inbounds %struct.timeb, %struct.timeb* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = getelementptr inbounds %struct.timezone, %struct.timezone* %4, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.timeb*, %struct.timeb** %3, align 8
  %26 = getelementptr inbounds %struct.timeb, %struct.timeb* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %9, %8
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i64 @gettimeofday(%struct.timeval*, %struct.timezone*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
