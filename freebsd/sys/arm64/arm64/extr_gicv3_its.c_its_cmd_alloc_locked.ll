; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_alloc_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gicv3_its.c_its_cmd_alloc_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.its_cmd = type { i32 }
%struct.gicv3_its_softc = type { i64, %struct.its_cmd*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout while waiting for free command\0A\00", align 1
@ITS_CMDQ_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.its_cmd* (i32)* @its_cmd_alloc_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.its_cmd* @its_cmd_alloc_locked(i32 %0) #0 {
  %2 = alloca %struct.its_cmd*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.gicv3_its_softc*, align 8
  %5 = alloca %struct.its_cmd*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call %struct.gicv3_its_softc* @device_get_softc(i32 %7)
  store %struct.gicv3_its_softc* %8, %struct.gicv3_its_softc** %4, align 8
  store i64 1000000, i64* %6, align 8
  %9 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %10 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %9, i32 0, i32 2
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @mtx_assert(i32* %10, i32 %11)
  br label %13

13:                                               ; preds = %24, %1
  %14 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %15 = call i64 @its_cmd_queue_full(%struct.gicv3_its_softc* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %26

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = add i64 %18, -1
  store i64 %19, i64* %6, align 8
  %20 = icmp eq i64 %18, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @device_printf(i32 %22, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store %struct.its_cmd* null, %struct.its_cmd** %2, align 8
  br label %46

24:                                               ; preds = %17
  %25 = call i32 @DELAY(i32 1)
  br label %13

26:                                               ; preds = %13
  %27 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %28 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %27, i32 0, i32 1
  %29 = load %struct.its_cmd*, %struct.its_cmd** %28, align 8
  %30 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %31 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.its_cmd, %struct.its_cmd* %29, i64 %32
  store %struct.its_cmd* %33, %struct.its_cmd** %5, align 8
  %34 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %35 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* @ITS_CMDQ_SIZE, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %39, 4
  %41 = load %struct.gicv3_its_softc*, %struct.gicv3_its_softc** %4, align 8
  %42 = getelementptr inbounds %struct.gicv3_its_softc, %struct.gicv3_its_softc* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = urem i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.its_cmd*, %struct.its_cmd** %5, align 8
  store %struct.its_cmd* %45, %struct.its_cmd** %2, align 8
  br label %46

46:                                               ; preds = %26, %21
  %47 = load %struct.its_cmd*, %struct.its_cmd** %2, align 8
  ret %struct.its_cmd* %47
}

declare dso_local %struct.gicv3_its_softc* @device_get_softc(i32) #1

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i64 @its_cmd_queue_full(%struct.gicv3_its_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
