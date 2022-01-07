; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_unisap.c_unisve_overlap_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unisve_addr = type { i64, i64, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @unisve_overlap_addr(%struct.unisve_addr* %0, %struct.unisve_addr* %1) #0 {
  %3 = alloca %struct.unisve_addr*, align 8
  %4 = alloca %struct.unisve_addr*, align 8
  store %struct.unisve_addr* %0, %struct.unisve_addr** %3, align 8
  store %struct.unisve_addr* %1, %struct.unisve_addr** %4, align 8
  %5 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %6 = load %struct.unisve_addr*, %struct.unisve_addr** %4, align 8
  %7 = call i32 @COMMON_OVERLAP(%struct.unisve_addr* %5, %struct.unisve_addr* %6)
  %8 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %9 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.unisve_addr*, %struct.unisve_addr** %4, align 8
  %12 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %10, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %2
  %16 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %17 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.unisve_addr*, %struct.unisve_addr** %4, align 8
  %20 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %43

23:                                               ; preds = %15
  %24 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %25 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.unisve_addr*, %struct.unisve_addr** %4, align 8
  %28 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = icmp eq i64 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %23
  %32 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %33 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.unisve_addr*, %struct.unisve_addr** %4, align 8
  %36 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.unisve_addr*, %struct.unisve_addr** %3, align 8
  %39 = getelementptr inbounds %struct.unisve_addr, %struct.unisve_addr* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @memcmp(i32 %34, i32 %37, i64 %40)
  %42 = icmp eq i64 %41, 0
  br label %43

43:                                               ; preds = %31, %23, %15, %2
  %44 = phi i1 [ false, %23 ], [ false, %15 ], [ false, %2 ], [ %42, %31 ]
  %45 = zext i1 %44 to i32
  ret i32 %45
}

declare dso_local i32 @COMMON_OVERLAP(%struct.unisve_addr*, %struct.unisve_addr*) #1

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
