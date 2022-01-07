; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra_efuse_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_efuse.c_tegra_efuse_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_efuse_softc = type { i32*, i32*, i32* }

@dev_sc = common dso_local global i32* null, align 8
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_efuse_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_efuse_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_efuse_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tegra_efuse_softc* @device_get_softc(i32 %4)
  store %struct.tegra_efuse_softc* %5, %struct.tegra_efuse_softc** %3, align 8
  store i32* null, i32** @dev_sc, align 8
  %6 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %6, i32 0, i32 2
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %12 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %11, i32 0, i32 2
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @clk_release(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %17 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %22 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @hwreset_release(i32* %23)
  br label %25

25:                                               ; preds = %20, %15
  %26 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %27 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load i32, i32* %2, align 4
  %32 = load i32, i32* @SYS_RES_MEMORY, align 4
  %33 = load %struct.tegra_efuse_softc*, %struct.tegra_efuse_softc** %3, align 8
  %34 = getelementptr inbounds %struct.tegra_efuse_softc, %struct.tegra_efuse_softc* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @bus_release_resource(i32 %31, i32 %32, i32 0, i32* %35)
  br label %37

37:                                               ; preds = %30, %25
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @bus_generic_detach(i32 %38)
  ret i32 %39
}

declare dso_local %struct.tegra_efuse_softc* @device_get_softc(i32) #1

declare dso_local i32 @clk_release(i32*) #1

declare dso_local i32 @hwreset_release(i32*) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
