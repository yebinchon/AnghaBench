; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_disable.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_ctrl = type { i64, %struct.amdvi_ctrl* }
%struct.amdvi_softc = type { i64, %struct.amdvi_softc* }

@ivhd_count = common dso_local global i32 0, align 4
@ivhd_devs = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [15 x i8] c"softc is NULL\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"ctrl is NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @amdvi_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @amdvi_disable() #0 {
  %1 = alloca %struct.amdvi_ctrl*, align 8
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %26, %0
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @ivhd_count, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %29

8:                                                ; preds = %4
  %9 = load i32*, i32** @ivhd_devs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, i32* %9, i64 %11
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.amdvi_softc* @device_get_softc(i32 %13)
  store %struct.amdvi_softc* %14, %struct.amdvi_softc** %2, align 8
  %15 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %16 = call i32 @KASSERT(%struct.amdvi_softc* %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %18 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %17, i32 0, i32 1
  %19 = load %struct.amdvi_softc*, %struct.amdvi_softc** %18, align 8
  %20 = bitcast %struct.amdvi_softc* %19 to %struct.amdvi_ctrl*
  store %struct.amdvi_ctrl* %20, %struct.amdvi_ctrl** %1, align 8
  %21 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %1, align 8
  %22 = bitcast %struct.amdvi_ctrl* %21 to %struct.amdvi_softc*
  %23 = call i32 @KASSERT(%struct.amdvi_softc* %22, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %24 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %1, align 8
  %25 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %24, i32 0, i32 0
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %8
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %4

29:                                               ; preds = %4
  ret void
}

declare dso_local %struct.amdvi_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(%struct.amdvi_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
