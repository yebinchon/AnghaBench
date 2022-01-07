; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_pad_lane.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/nvidia/tegra124/extr_tegra124_xusbpadctl.c_search_pad_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.padctl_lane = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.padctl_softc = type { i32 }

@lanes_tbl = common dso_local global %struct.padctl_lane* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.padctl_lane* (%struct.padctl_softc*, i32, i32)* @search_pad_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.padctl_lane* @search_pad_lane(%struct.padctl_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.padctl_lane*, align 8
  %5 = alloca %struct.padctl_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.padctl_softc* %0, %struct.padctl_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %49, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %12 = call i32 @nitems(%struct.padctl_lane* %11)
  %13 = icmp slt i32 %10, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %15, i64 %17
  %19 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %49

23:                                               ; preds = %14
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %25, i64 %27
  %29 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %24, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %23
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %36, i64 %38
  %40 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp eq i32 %35, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %34
  %44 = load %struct.padctl_lane*, %struct.padctl_lane** @lanes_tbl, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.padctl_lane, %struct.padctl_lane* %44, i64 %46
  store %struct.padctl_lane* %47, %struct.padctl_lane** %4, align 8
  br label %53

48:                                               ; preds = %34, %23
  br label %49

49:                                               ; preds = %48, %22
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %9

52:                                               ; preds = %9
  store %struct.padctl_lane* null, %struct.padctl_lane** %4, align 8
  br label %53

53:                                               ; preds = %52, %43
  %54 = load %struct.padctl_lane*, %struct.padctl_lane** %4, align 8
  ret %struct.padctl_lane* %54
}

declare dso_local i32 @nitems(%struct.padctl_lane*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
