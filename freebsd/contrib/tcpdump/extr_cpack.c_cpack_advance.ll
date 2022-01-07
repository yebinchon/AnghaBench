; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_cpack.c_cpack_advance.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcpdump/extr_cpack.c_cpack_advance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpack_state = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpack_advance(%struct.cpack_state* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpack_state*, align 8
  %5 = alloca i64, align 8
  store %struct.cpack_state* %0, %struct.cpack_state** %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load %struct.cpack_state*, %struct.cpack_state** %4, align 8
  %7 = getelementptr inbounds %struct.cpack_state, %struct.cpack_state* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.cpack_state*, %struct.cpack_state** %4, align 8
  %10 = getelementptr inbounds %struct.cpack_state, %struct.cpack_state* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = sub nsw i64 %8, %11
  %13 = load i64, i64* %5, align 8
  %14 = add i64 %12, %13
  %15 = load %struct.cpack_state*, %struct.cpack_state** %4, align 8
  %16 = getelementptr inbounds %struct.cpack_state, %struct.cpack_state* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ugt i64 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %26

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.cpack_state*, %struct.cpack_state** %4, align 8
  %23 = getelementptr inbounds %struct.cpack_state, %struct.cpack_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add i64 %24, %21
  store i64 %25, i64* %23, align 8
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
