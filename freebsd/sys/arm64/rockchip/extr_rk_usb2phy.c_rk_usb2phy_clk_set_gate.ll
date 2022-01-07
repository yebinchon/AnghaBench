; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_clk_set_gate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_usb2phy.c_rk_usb2phy_clk_set_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clknode = type { i32 }
%struct.rk_usb2phy_clk_sc = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clknode*, i32)* @rk_usb2phy_clk_set_gate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_usb2phy_clk_set_gate(%struct.clknode* %0, i32 %1) #0 {
  %3 = alloca %struct.clknode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.rk_usb2phy_clk_sc*, align 8
  store %struct.clknode* %0, %struct.clknode** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.clknode*, %struct.clknode** %3, align 8
  %7 = call %struct.rk_usb2phy_clk_sc* @clknode_get_softc(%struct.clknode* %6)
  store %struct.rk_usb2phy_clk_sc* %7, %struct.rk_usb2phy_clk_sc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %27

10:                                               ; preds = %2
  %11 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %12 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %15 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %21 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %20, i32 0, i32 0
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @SYSCON_WRITE_4(i32 %13, i32 %19, i32 %25)
  br label %44

27:                                               ; preds = %2
  %28 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %29 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %32 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.rk_usb2phy_clk_sc*, %struct.rk_usb2phy_clk_sc** %5, align 8
  %38 = getelementptr inbounds %struct.rk_usb2phy_clk_sc, %struct.rk_usb2phy_clk_sc* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SYSCON_WRITE_4(i32 %30, i32 %36, i32 %42)
  br label %44

44:                                               ; preds = %27, %10
  ret i32 0
}

declare dso_local %struct.rk_usb2phy_clk_sc* @clknode_get_softc(%struct.clknode*) #1

declare dso_local i32 @SYSCON_WRITE_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
