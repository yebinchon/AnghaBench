; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_clk_ofw_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_clk_ofw_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clknode = type { i32 }

@ERANGE = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clkdom*, i64, i32*, %struct.clknode**)* @rk_usb2phy_clk_ofw_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_usb2phy_clk_ofw_map(%struct.clkdom* %0, i64 %1, i32* %2, %struct.clknode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clkdom*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.clknode**, align 8
  store %struct.clkdom* %0, %struct.clkdom** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.clknode** %3, %struct.clknode*** %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %4
  %13 = load i32, i32* @ERANGE, align 4
  store i32 %13, i32* %5, align 4
  br label %24

14:                                               ; preds = %4
  %15 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %16 = call %struct.clknode* @clknode_find_by_id(%struct.clkdom* %15, i32 0)
  %17 = load %struct.clknode**, %struct.clknode*** %9, align 8
  store %struct.clknode* %16, %struct.clknode** %17, align 8
  %18 = load %struct.clknode**, %struct.clknode*** %9, align 8
  %19 = load %struct.clknode*, %struct.clknode** %18, align 8
  %20 = icmp eq %struct.clknode* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load i32, i32* @ENXIO, align 4
  store i32 %22, i32* %5, align 4
  br label %24

23:                                               ; preds = %14
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %23, %21, %12
  %25 = load i32, i32* %5, align 4
  ret i32 %25
}

declare dso_local %struct.clknode* @clknode_find_by_id(%struct.clkdom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
