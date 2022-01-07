; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_set_mux.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/clkng/extr_aw_clk_nkmp.c_aw_clk_nkmp_set_mux.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.aw_clk_nkmp_sc = type { i32, i32, i32, i32 }

@AW_CLK_HAS_MUX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @aw_clk_nkmp_set_mux to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aw_clk_nkmp_set_mux(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clknode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.aw_clk_nkmp_sc*, align 8
  %7 = alloca i32, align 4
  store %struct.clknode* %0, %struct.clknode** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.clknode*, %struct.clknode** %4, align 8
  %9 = call %struct.aw_clk_nkmp_sc* @clknode_get_softc(%struct.clknode* %8)
  store %struct.aw_clk_nkmp_sc* %9, %struct.aw_clk_nkmp_sc** %6, align 8
  %10 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %6, align 8
  %11 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @AW_CLK_HAS_MUX, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

17:                                               ; preds = %2
  %18 = load %struct.clknode*, %struct.clknode** %4, align 8
  %19 = call i32 @DEVICE_LOCK(%struct.clknode* %18)
  %20 = load %struct.clknode*, %struct.clknode** %4, align 8
  %21 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %6, align 8
  %22 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @READ4(%struct.clknode* %20, i32 %23, i32* %7)
  %25 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %6, align 8
  %26 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %7, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %6, align 8
  %33 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %31, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %7, align 4
  %38 = load %struct.clknode*, %struct.clknode** %4, align 8
  %39 = load %struct.aw_clk_nkmp_sc*, %struct.aw_clk_nkmp_sc** %6, align 8
  %40 = getelementptr inbounds %struct.aw_clk_nkmp_sc, %struct.aw_clk_nkmp_sc* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @WRITE4(%struct.clknode* %38, i32 %41, i32 %42)
  %44 = load %struct.clknode*, %struct.clknode** %4, align 8
  %45 = call i32 @DEVICE_UNLOCK(%struct.clknode* %44)
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %17, %16
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.aw_clk_nkmp_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @DEVICE_LOCK(%struct.clknode*) #1

declare dso_local i32 @READ4(%struct.clknode*, i32, i32*) #1

declare dso_local i32 @WRITE4(%struct.clknode*, i32, i32) #1

declare dso_local i32 @DEVICE_UNLOCK(%struct.clknode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
