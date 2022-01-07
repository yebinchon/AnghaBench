; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_config_lane.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_config_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_softc = type { i32 }
%struct.padctl_lane = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.padctl_softc*, %struct.padctl_lane*)* @config_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_lane(%struct.padctl_softc* %0, %struct.padctl_lane* %1) #0 {
  %3 = alloca %struct.padctl_softc*, align 8
  %4 = alloca %struct.padctl_lane*, align 8
  %5 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %3, align 8
  store %struct.padctl_lane* %1, %struct.padctl_lane** %4, align 8
  %6 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %7 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  %8 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @RD4(%struct.padctl_softc* %6, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  %12 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  %15 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = shl i32 %13, %16
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %5, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %5, align 4
  %21 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  %22 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  %25 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %23, %26
  %28 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  %29 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %27, %30
  %32 = load i32, i32* %5, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %5, align 4
  %34 = load %struct.padctl_softc*, %struct.padctl_softc** %3, align 8
  %35 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  %36 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @WR4(%struct.padctl_softc* %34, i32 %37, i32 %38)
  ret i32 0
}

declare dso_local i32 @RD4(%struct.padctl_softc*, i32) #1

declare dso_local i32 @WR4(%struct.padctl_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
