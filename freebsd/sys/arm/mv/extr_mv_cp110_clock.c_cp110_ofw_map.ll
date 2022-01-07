; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_clock.c_cp110_ofw_map.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_cp110_clock.c_cp110_ofw_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clkdom = type { i32 }
%struct.clknode = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@CP110_MAX_CLOCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.clkdom*, i32, i32*, %struct.clknode**)* @cp110_ofw_map to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cp110_ofw_map(%struct.clkdom* %0, i32 %1, i32* %2, %struct.clknode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.clkdom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.clknode**, align 8
  %10 = alloca i32, align 4
  store %struct.clkdom* %0, %struct.clkdom** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store %struct.clknode** %3, %struct.clknode*** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 2
  br i1 %12, label %13, label %15

13:                                               ; preds = %4
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %5, align 4
  br label %34

15:                                               ; preds = %4
  %16 = load i32*, i32** %8, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %29

23:                                               ; preds = %15
  %24 = load i64, i64* @CP110_MAX_CLOCK, align 8
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %23, %15
  %30 = load %struct.clkdom*, %struct.clkdom** %6, align 8
  %31 = load i32, i32* %10, align 4
  %32 = call %struct.clknode* @clknode_find_by_id(%struct.clkdom* %30, i32 %31)
  %33 = load %struct.clknode**, %struct.clknode*** %9, align 8
  store %struct.clknode* %32, %struct.clknode** %33, align 8
  store i32 0, i32* %5, align 4
  br label %34

34:                                               ; preds = %29, %13
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local %struct.clknode* @clknode_find_by_id(%struct.clkdom*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
