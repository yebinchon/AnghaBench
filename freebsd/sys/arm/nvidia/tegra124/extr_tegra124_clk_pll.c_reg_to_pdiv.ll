; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_reg_to_pdiv.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_clk_pll.c_reg_to_pdiv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pll_sc = type { %struct.pdiv_table* }
%struct.pdiv_table = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pll_sc*, i32)* @reg_to_pdiv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_to_pdiv(%struct.pll_sc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pll_sc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pdiv_table*, align 8
  store %struct.pll_sc* %0, %struct.pll_sc** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pll_sc*, %struct.pll_sc** %4, align 8
  %8 = getelementptr inbounds %struct.pll_sc, %struct.pll_sc* %7, i32 0, i32 0
  %9 = load %struct.pdiv_table*, %struct.pdiv_table** %8, align 8
  store %struct.pdiv_table* %9, %struct.pdiv_table** %6, align 8
  %10 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %11 = icmp eq %struct.pdiv_table* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* %5, align 4
  %14 = shl i32 1, %13
  store i32 %14, i32* %3, align 4
  br label %35

15:                                               ; preds = %2
  br label %16

16:                                               ; preds = %31, %15
  %17 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %18 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %24 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %22, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %29 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %3, align 4
  br label %35

31:                                               ; preds = %21
  %32 = load %struct.pdiv_table*, %struct.pdiv_table** %6, align 8
  %33 = getelementptr inbounds %struct.pdiv_table, %struct.pdiv_table* %32, i32 1
  store %struct.pdiv_table* %33, %struct.pdiv_table** %6, align 8
  br label %16

34:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %27, %12
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
