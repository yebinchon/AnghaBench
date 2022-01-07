; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i64, i64, i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@NIRQ = common dso_local global i64 0, align 8
@cpuid = common dso_local global i32 0, align 4
@GICR_PIDR2_ARCH_GICv3 = common dso_local global i64 0, align 8
@GICR_PIDR2_ARCH_GICv4 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [55 x i8] c"gic_v3_read_ivar: Invalid GIC architecture: %d (%.08X)\00", align 1
@GIC_BUS_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [35 x i8] c"gic_v3_read_ivar: Unknown bus type\00", align 1
@GIC_BUS_MAX = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"gic_v3_read_ivar: Invalid bus type %u\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i64*)* @gic_v3_read_ivar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_read_ivar(i32 %0, i32 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.gic_v3_softc*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.gic_v3_softc* @device_get_softc(i32 %11)
  store %struct.gic_v3_softc* %12, %struct.gic_v3_softc** %10, align 8
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %91 [
    i32 131, label %14
    i32 130, label %25
    i32 128, label %36
    i32 129, label %68
  ]

14:                                               ; preds = %4
  %15 = load i64, i64* @NIRQ, align 8
  %16 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %17 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  %20 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %21 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = udiv i64 %19, %22
  %24 = load i64*, i64** %9, align 8
  store i64 %23, i64* %24, align 8
  store i32 0, i32* %5, align 4
  br label %93

25:                                               ; preds = %4
  %26 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %27 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* @cpuid, align 4
  %31 = call i64 @PCPU_GET(i32 %30)
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64*, i64** %9, align 8
  store i64 %34, i64* %35, align 8
  store i32 0, i32* %5, align 4
  br label %93

36:                                               ; preds = %4
  %37 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %38 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @GICR_PIDR2_ARCH(i32 %39)
  %41 = load i64, i64* @GICR_PIDR2_ARCH_GICv3, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %50, label %43

43:                                               ; preds = %36
  %44 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %45 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @GICR_PIDR2_ARCH(i32 %46)
  %48 = load i64, i64* @GICR_PIDR2_ARCH_GICv4, align 8
  %49 = icmp eq i64 %47, %48
  br label %50

50:                                               ; preds = %43, %36
  %51 = phi i1 [ true, %36 ], [ %49, %43 ]
  %52 = zext i1 %51 to i32
  %53 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %54 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 8
  %56 = call i64 @GICR_PIDR2_ARCH(i32 %55)
  %57 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %58 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = sext i32 %59 to i64
  %61 = inttoptr i64 %60 to i8*
  %62 = call i32 @KASSERT(i32 %52, i8* %61)
  %63 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %64 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = call i64 @GICR_PIDR2_ARCH(i32 %65)
  %67 = load i64*, i64** %9, align 8
  store i64 %66, i64* %67, align 8
  store i32 0, i32* %5, align 4
  br label %93

68:                                               ; preds = %4
  %69 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %70 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @GIC_BUS_UNKNOWN, align 8
  %73 = icmp ne i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @KASSERT(i32 %74, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %76 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %77 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @GIC_BUS_MAX, align 8
  %80 = icmp ule i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %83 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = call i32 @KASSERT(i32 %81, i8* %85)
  %87 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %88 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64*, i64** %9, align 8
  store i64 %89, i64* %90, align 8
  store i32 0, i32* %5, align 4
  br label %93

91:                                               ; preds = %4
  %92 = load i32, i32* @ENOENT, align 4
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %91, %68, %50, %25, %14
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i64 @PCPU_GET(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @GICR_PIDR2_ARCH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
