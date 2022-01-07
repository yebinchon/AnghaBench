; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_lane.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_lane = type { i32 }
%struct.padctl_softc = type { i32 }

@lanes_tbl = common dso_local global %struct.padctl_lane* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.padctl_lane* (%struct.padctl_softc*, i8*)* @search_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.padctl_lane* @search_lane(%struct.padctl_softc* %0, i8* %1) #0 {
  %3 = alloca %struct.padctl_lane*, align 8
  %4 = alloca %struct.padctl_softc*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %28, %2
  %8 = load i32, i32* %6, align 4
  %9 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %10 = call i32 @nitems(%struct.padctl_lane* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %7
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %14, i64 %16
  %18 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @strcmp(i8* %13, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %12
  %23 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %23, i64 %25
  store %struct.padctl_lane* %26, %struct.padctl_lane** %3, align 8
  br label %32

27:                                               ; preds = %12
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %6, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %7

31:                                               ; preds = %7
  store %struct.padctl_lane* null, %struct.padctl_lane** %3, align 8
  br label %32

32:                                               ; preds = %31, %22
  %33 = load %struct.padctl_lane*, %struct.padctl_lane** %3, align 8
  ret %struct.padctl_lane* %33
}

declare dso_local i32 @nitems(%struct.padctl_lane*) #1

declare dso_local i64 @strcmp(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
