; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_redist_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_redist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i32 }

@GICR_SGI_BASE_SIZE = common dso_local global i64 0, align 8
@GICR_IGROUPR0 = common dso_local global i64 0, align 8
@GICR_ICENABLER0 = common dso_local global i64 0, align 8
@GICR_I_ENABLER_PPI_MASK = common dso_local global i32 0, align 4
@GICR_ISENABLER0 = common dso_local global i64 0, align 8
@GICR_I_ENABLER_SGI_MASK = common dso_local global i32 0, align 4
@GIC_LAST_PPI = common dso_local global i64 0, align 8
@GIC_PRIORITY_MAX = common dso_local global i32 0, align 4
@GICR_I_PER_IPRIORITYn = common dso_local global i64 0, align 8
@REDIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gic_v3_softc*)* @gic_v3_redist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_redist_init(%struct.gic_v3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_v3_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.gic_v3_softc* %0, %struct.gic_v3_softc** %3, align 8
  %6 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %7 = call i32 @gic_v3_redist_find(%struct.gic_v3_softc* %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %57

12:                                               ; preds = %1
  %13 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %14 = call i32 @gic_v3_redist_wake(%struct.gic_v3_softc* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %57

19:                                               ; preds = %12
  %20 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %21 = load i64, i64* @GICR_SGI_BASE_SIZE, align 8
  %22 = load i64, i64* @GICR_IGROUPR0, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @gic_r_write(%struct.gic_v3_softc* %20, i32 4, i64 %23, i32 -1)
  %25 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %26 = load i64, i64* @GICR_SGI_BASE_SIZE, align 8
  %27 = load i64, i64* @GICR_ICENABLER0, align 8
  %28 = add nsw i64 %26, %27
  %29 = load i32, i32* @GICR_I_ENABLER_PPI_MASK, align 4
  %30 = call i32 @gic_r_write(%struct.gic_v3_softc* %25, i32 4, i64 %28, i32 %29)
  %31 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %32 = load i64, i64* @GICR_SGI_BASE_SIZE, align 8
  %33 = load i64, i64* @GICR_ISENABLER0, align 8
  %34 = add nsw i64 %32, %33
  %35 = load i32, i32* @GICR_I_ENABLER_SGI_MASK, align 4
  %36 = call i32 @gic_r_write(%struct.gic_v3_softc* %31, i32 4, i64 %34, i32 %35)
  store i64 0, i64* %5, align 8
  br label %37

37:                                               ; preds = %49, %19
  %38 = load i64, i64* %5, align 8
  %39 = load i64, i64* @GIC_LAST_PPI, align 8
  %40 = icmp ule i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %43 = load i64, i64* @GICR_SGI_BASE_SIZE, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @GICD_IPRIORITYR(i64 %44)
  %46 = add nsw i64 %43, %45
  %47 = load i32, i32* @GIC_PRIORITY_MAX, align 4
  %48 = call i32 @gic_r_write(%struct.gic_v3_softc* %42, i32 4, i64 %46, i32 %47)
  br label %49

49:                                               ; preds = %41
  %50 = load i64, i64* @GICR_I_PER_IPRIORITYn, align 8
  %51 = load i64, i64* %5, align 8
  %52 = add i64 %51, %50
  store i64 %52, i64* %5, align 8
  br label %37

53:                                               ; preds = %37
  %54 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %55 = load i32, i32* @REDIST, align 4
  %56 = call i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc* %54, i32 %55)
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %53, %17, %10
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @gic_v3_redist_find(%struct.gic_v3_softc*) #1

declare dso_local i32 @gic_v3_redist_wake(%struct.gic_v3_softc*) #1

declare dso_local i32 @gic_r_write(%struct.gic_v3_softc*, i32, i64, i32) #1

declare dso_local i64 @GICD_IPRIORITYR(i64) #1

declare dso_local i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
