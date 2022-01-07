; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_init_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/vmm/amd/extr_amdvi_hw.c_amdvi_init_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdvi_softc = type { i32, i64, i32, %struct.amdvi_ctrl* }
%struct.amdvi_ctrl = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@M_AMDVI = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"Event buffer not aligned on page.\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amdvi_softc*)* @amdvi_init_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdvi_init_event(%struct.amdvi_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.amdvi_softc*, align 8
  %4 = alloca %struct.amdvi_ctrl*, align 8
  store %struct.amdvi_softc* %0, %struct.amdvi_softc** %3, align 8
  %5 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %6 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %5, i32 0, i32 3
  %7 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %6, align 8
  store %struct.amdvi_ctrl* %7, %struct.amdvi_ctrl** %4, align 8
  %8 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %9 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 8, i32* %10, align 8
  %11 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %12 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = shl i32 1, %14
  %16 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %17 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %19 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 4, %21
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @M_AMDVI, align 4
  %25 = load i32, i32* @M_WAITOK, align 4
  %26 = load i32, i32* @M_ZERO, align 4
  %27 = or i32 %25, %26
  %28 = call i64 @malloc(i32 %23, i32 %24, i32 %27)
  %29 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %30 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %29, i32 0, i32 1
  store i64 %28, i64* %30, align 8
  %31 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %32 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @PAGE_MASK, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %1
  %38 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %39 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %56

42:                                               ; preds = %1
  %43 = load %struct.amdvi_softc*, %struct.amdvi_softc** %3, align 8
  %44 = getelementptr inbounds %struct.amdvi_softc, %struct.amdvi_softc* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @vtophys(i64 %45)
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = sdiv i32 %46, %47
  %49 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %50 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  store i32 %48, i32* %51, align 4
  %52 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %53 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load %struct.amdvi_ctrl*, %struct.amdvi_ctrl** %4, align 8
  %55 = getelementptr inbounds %struct.amdvi_ctrl, %struct.amdvi_ctrl* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %42, %37
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i64 @malloc(i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @vtophys(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
