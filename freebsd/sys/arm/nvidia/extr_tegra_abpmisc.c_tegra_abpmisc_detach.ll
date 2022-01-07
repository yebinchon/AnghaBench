; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_abpmisc.c_tegra_abpmisc_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/extr_tegra_abpmisc.c_tegra_abpmisc_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_abpmisc_softc = type { i32*, i32* }

@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_abpmisc_detach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_abpmisc_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tegra_abpmisc_softc*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.tegra_abpmisc_softc* @device_get_softc(i32 %4)
  store %struct.tegra_abpmisc_softc* %5, %struct.tegra_abpmisc_softc** %3, align 8
  %6 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %6, i32 0, i32 1
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %1
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @SYS_RES_MEMORY, align 4
  %13 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @bus_release_resource(i32 %11, i32 %12, i32 0, i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @SYS_RES_MEMORY, align 4
  %25 = load %struct.tegra_abpmisc_softc*, %struct.tegra_abpmisc_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tegra_abpmisc_softc, %struct.tegra_abpmisc_softc* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @bus_release_resource(i32 %23, i32 %24, i32 1, i32* %27)
  br label %29

29:                                               ; preds = %22, %17
  %30 = load i32, i32* %2, align 4
  %31 = call i32 @bus_generic_detach(i32 %30)
  ret i32 %31
}

declare dso_local %struct.tegra_abpmisc_softc* @device_get_softc(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @bus_generic_detach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
