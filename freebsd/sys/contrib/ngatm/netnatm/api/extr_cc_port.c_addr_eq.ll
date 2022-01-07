; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_addr_eq.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ngatm/netnatm/api/extr_cc_port.c_addr_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uni_addr = type { i64, i64, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uni_addr*, %struct.uni_addr*)* @addr_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addr_eq(%struct.uni_addr* %0, %struct.uni_addr* %1) #0 {
  %3 = alloca %struct.uni_addr*, align 8
  %4 = alloca %struct.uni_addr*, align 8
  store %struct.uni_addr* %0, %struct.uni_addr** %3, align 8
  store %struct.uni_addr* %1, %struct.uni_addr** %4, align 8
  %5 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %6 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.uni_addr*, %struct.uni_addr** %4, align 8
  %9 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %7, %10
  br i1 %11, label %12, label %40

12:                                               ; preds = %2
  %13 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %14 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.uni_addr*, %struct.uni_addr** %4, align 8
  %17 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %15, %18
  br i1 %19, label %20, label %40

20:                                               ; preds = %12
  %21 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %22 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.uni_addr*, %struct.uni_addr** %4, align 8
  %25 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %23, %26
  br i1 %27, label %28, label %40

28:                                               ; preds = %20
  %29 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %30 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.uni_addr*, %struct.uni_addr** %4, align 8
  %33 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.uni_addr*, %struct.uni_addr** %3, align 8
  %36 = getelementptr inbounds %struct.uni_addr, %struct.uni_addr* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = call i64 @memcmp(i32 %31, i32 %34, i64 %37)
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %28, %20, %12, %2
  %41 = phi i1 [ false, %20 ], [ false, %12 ], [ false, %2 ], [ %39, %28 ]
  %42 = zext i1 %41 to i32
  ret i32 %42
}

declare dso_local i64 @memcmp(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
