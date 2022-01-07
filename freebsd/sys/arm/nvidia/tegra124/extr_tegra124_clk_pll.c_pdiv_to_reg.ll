; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pdiv_to_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_pdiv_to_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { %struct.pdiv_table* }
%struct.pdiv_table = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.pll_sc*, i64)* @pdiv_to_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @pdiv_to_reg(%struct.pll_sc* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.pll_sc*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.pdiv_table*, align 8
  store %struct.pll_sc* %0, %struct.pll_sc** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.pll_sc*, %struct.pll_sc** %4, align 8
  %8 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %7, i32 0, i32 0
  %9 = load %struct.pdiv_table*, %struct.pdiv_table** %8, align 8
  store %struct.pdiv_table* %9, %struct.pdiv_table** %6, align 8
  %10 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %11 = icmp eq %struct.pdiv_table* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = call i64 @ffs(i64 %13)
  %15 = sub nsw i64 %14, 1
  store i64 %15, i64* %3, align 8
  br label %36

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %32, %16
  %18 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %19 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %17
  %23 = load i64, i64* %5, align 8
  %24 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %25 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %30 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  store i64 %31, i64* %3, align 8
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %34 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %33, i32 1
  store %struct.pdiv_table* %34, %struct.pdiv_table** %6, align 8
  br label %17

35:                                               ; preds = %17
  store i64 4294967295, i64* %3, align 8
  br label %36

36:                                               ; preds = %35, %28, %12
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

declare dso_local i64 @ffs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
