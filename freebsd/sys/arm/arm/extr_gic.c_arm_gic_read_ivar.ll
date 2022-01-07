; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/arm/extr_gic.c_arm_gic_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arm_gic_softc = type { i64, i32 }

@.str = private unnamed_addr constant [52 x i8] c"arm_gic_read_ivar: Unknown IIDR revision %u (%.08x)\00", align 1
@GIC_BUS_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"arm_gic_read_ivar: Unknown bus type\00", align 1
@GIC_BUS_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [39 x i8] c"arm_gic_read_ivar: Invalid bus type %u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @arm_gic_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_gic_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.arm_gic_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.arm_gic_softc* @device_get_softc(i32 %11)
  store %struct.arm_gic_softc* %12, %struct.arm_gic_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %60 [
    i32 128, label %14
    i32 129, label %37
  ]

14:                                               ; preds = %4
  %15 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %16 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @GICD_IIDR_VAR(i32 %17)
  %19 = icmp slt i32 %18, 3
  %20 = zext i1 %19 to i32
  %21 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %22 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @GICD_IIDR_VAR(i32 %23)
  %25 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %26 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @KASSERT(i32 %20, i8* %29)
  %31 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %32 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @GICD_IIDR_VAR(i32 %33)
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %9, align 8
  store i64 %35, i64* %36, align 8
  store i32 0, i32* %5, align 4
  br label %62

37:                                               ; preds = %4
  %38 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %39 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @GIC_BUS_UNKNOWN, align 8
  %42 = icmp ne i64 %40, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @KASSERT(i32 %43, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %46 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @GIC_BUS_MAX, align 8
  %49 = icmp ule i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %52 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @KASSERT(i32 %50, i8* %54)
  %56 = load %struct.arm_gic_softc*, %struct.arm_gic_softc** %10, align 8
  %57 = getelementptr inbounds %struct.arm_gic_softc, %struct.arm_gic_softc* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %9, align 8
  store i64 %58, i64* %59, align 8
  store i32 0, i32* %5, align 4
  br label %62

60:                                               ; preds = %4
  %61 = load i32, i32* @ENOENT, align 4
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %60, %37, %14
  %63 = load i32, i32* %5, align 4
  ret i32 %63
}

declare dso_local %struct.arm_gic_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @GICD_IIDR_VAR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
