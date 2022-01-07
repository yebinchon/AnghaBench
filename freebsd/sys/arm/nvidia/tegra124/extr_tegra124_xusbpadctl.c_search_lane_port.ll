; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_lane_port.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_lane_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_port = type { %struct.padctl_lane*, i32 }
%struct.padctl_lane = type { i32 }
%struct.padctl_softc = type { i32 }

@ports_tbl = common dso_local global %struct.padctl_port* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.padctl_port* (%struct.padctl_softc*, %struct.padctl_lane*)* @search_lane_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.padctl_port* @search_lane_port(%struct.padctl_softc* %0, %struct.padctl_lane* %1) #0 {
  %3 = alloca %struct.padctl_port*, align 8
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca %struct.padctl_lane*, align 8
  %6 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store %struct.padctl_lane* %1, %struct.padctl_lane** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %36, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.padctl_port*, %struct.padctl_port** @ports_tbl, align 8
  %10 = call i32 @nitems(%struct.padctl_port* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %39

12:                                               ; preds = %7
  %13 = load %struct.padctl_port*, %struct.padctl_port** @ports_tbl, align 8
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %13, i64 %15
  %17 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %12
  br label %36

21:                                               ; preds = %12
  %22 = load %struct.padctl_port*, %struct.padctl_port** @ports_tbl, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %22, i64 %24
  %26 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %25, i32 0, i32 0
  %27 = load %struct.padctl_lane*, %struct.padctl_lane** %26, align 8
  %28 = load %struct.padctl_lane*, %struct.padctl_lane** %5, align 8
  %29 = icmp eq %struct.padctl_lane* %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %21
  %31 = load %struct.padctl_port*, %struct.padctl_port** @ports_tbl, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.padctl_port, %struct.padctl_port* %31, i64 %33
  store %struct.padctl_port* %34, %struct.padctl_port** %3, align 8
  br label %40

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35, %20
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %7

39:                                               ; preds = %7
  store %struct.padctl_port* null, %struct.padctl_port** %3, align 8
  br label %40

40:                                               ; preds = %39, %30
  %41 = load %struct.padctl_port*, %struct.padctl_port** %3, align 8
  ret %struct.padctl_port* %41
}

declare dso_local i32 @nitems(%struct.padctl_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
