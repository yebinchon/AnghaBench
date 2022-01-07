; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_init_cmd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_init_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, i64, %struct.amdvi_ctrl* }
%struct.amdvi_ctrl = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@M_AMDVI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"AMDVi: Command buffer not aligned on page boundary.\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdvi_softc*)* @amdvi_init_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdvi_init_cmd(%struct.amdvi_softc* %0) #0 {
  %2 = alloca %struct.amdvi_softc*, align 8
  %3 = alloca %struct.amdvi_ctrl*, align 8
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %2, align 8
  %4 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %5 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %4, i32 0, i32 2
  %6 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %5, align 8
  store %struct.amdvi_ctrl* %6, %struct.amdvi_ctrl** %3, align 8
  %7 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %8 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 8, i32* %9, align 8
  %10 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = shl i32 1, %13
  %15 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %16 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %18 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = load i32, i32* @M_AMDVI, align 4
  %24 = load i32, i32* @M_WAITOK, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call i64 @malloc(i32 %22, i32 %23, i32 %26)
  %28 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %29 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %28, i32 0, i32 1
  store i64 %27, i64* %29, align 8
  %30 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %31 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PAGE_MASK, align 8
  %34 = and i64 %32, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %1
  %37 = call i32 @panic(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %1
  %39 = load %struct.amdvi_softc*, %struct.amdvi_softc** %2, align 8
  %40 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @vtophys(i64 %41)
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = sdiv i32 %42, %43
  %45 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %46 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 1
  store i32 %44, i32* %47, align 4
  %48 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %49 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %48, i32 0, i32 1
  store i64 0, i64* %49, align 8
  %50 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %3, align 8
  %51 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  ret i32 0
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @vtophys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
