; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_dist_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_dist_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i64 }

@GICD_CTLR = common dso_local global i32 0, align 4
@DIST = common dso_local global i32 0, align 4
@GIC_FIRST_SPI = common dso_local global i64 0, align 8
@GICD_I_PER_IGROUPRn = common dso_local global i64 0, align 8
@GICD_I_PER_ICFGRn = common dso_local global i64 0, align 8
@GIC_PRIORITY_MAX = common dso_local global i32 0, align 4
@GICD_I_PER_IPRIORITYn = common dso_local global i64 0, align 8
@GICD_I_PER_ISENABLERn = common dso_local global i64 0, align 8
@GICD_CTLR_ARE_NS = common dso_local global i32 0, align 4
@GICD_CTLR_G1A = common dso_local global i32 0, align 4
@GICD_CTLR_G1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gic_v3_softc*)* @gic_v3_dist_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_dist_init(%struct.gic_v3_softc* %0) #0 {
  %2 = alloca %struct.gic_v3_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.gic_v3_softc* %0, %struct.gic_v3_softc** %2, align 8
  %5 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %6 = load i32, i32* @GICD_CTLR, align 4
  %7 = call i32 @gic_d_write(%struct.gic_v3_softc* %5, i32 4, i32 %6, i32 0)
  %8 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %9 = load i32, i32* @DIST, align 4
  %10 = call i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc* %8, i32 %9)
  %11 = load i64, i64* @GIC_FIRST_SPI, align 8
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %23, %1
  %13 = load i64, i64* %4, align 8
  %14 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %15 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %13, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @GICD_IGROUPR(i64 %20)
  %22 = call i32 @gic_d_write(%struct.gic_v3_softc* %19, i32 4, i32 %21, i32 -1)
  br label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @GICD_I_PER_IGROUPRn, align 8
  %25 = load i64, i64* %4, align 8
  %26 = add nsw i64 %25, %24
  store i64 %26, i64* %4, align 8
  br label %12

27:                                               ; preds = %12
  %28 = load i64, i64* @GIC_FIRST_SPI, align 8
  store i64 %28, i64* %4, align 8
  br label %29

29:                                               ; preds = %40, %27
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %32 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %37 = load i64, i64* %4, align 8
  %38 = call i32 @GICD_ICFGR(i64 %37)
  %39 = call i32 @gic_d_write(%struct.gic_v3_softc* %36, i32 4, i32 %38, i32 0)
  br label %40

40:                                               ; preds = %35
  %41 = load i64, i64* @GICD_I_PER_ICFGRn, align 8
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %4, align 8
  br label %29

44:                                               ; preds = %29
  %45 = load i64, i64* @GIC_FIRST_SPI, align 8
  store i64 %45, i64* %4, align 8
  br label %46

46:                                               ; preds = %58, %44
  %47 = load i64, i64* %4, align 8
  %48 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %49 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %62

52:                                               ; preds = %46
  %53 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %54 = load i64, i64* %4, align 8
  %55 = call i32 @GICD_IPRIORITYR(i64 %54)
  %56 = load i32, i32* @GIC_PRIORITY_MAX, align 4
  %57 = call i32 @gic_d_write(%struct.gic_v3_softc* %53, i32 4, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %52
  %59 = load i64, i64* @GICD_I_PER_IPRIORITYn, align 8
  %60 = load i64, i64* %4, align 8
  %61 = add nsw i64 %60, %59
  store i64 %61, i64* %4, align 8
  br label %46

62:                                               ; preds = %46
  %63 = load i64, i64* @GIC_FIRST_SPI, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %75, %62
  %65 = load i64, i64* %4, align 8
  %66 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %67 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp slt i64 %65, %68
  br i1 %69, label %70, label %79

70:                                               ; preds = %64
  %71 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @GICD_ICENABLER(i64 %72)
  %74 = call i32 @gic_d_write(%struct.gic_v3_softc* %71, i32 4, i32 %73, i32 -1)
  br label %75

75:                                               ; preds = %70
  %76 = load i64, i64* @GICD_I_PER_ISENABLERn, align 8
  %77 = load i64, i64* %4, align 8
  %78 = add nsw i64 %77, %76
  store i64 %78, i64* %4, align 8
  br label %64

79:                                               ; preds = %64
  %80 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %81 = load i32, i32* @DIST, align 4
  %82 = call i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc* %80, i32 %81)
  %83 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %84 = load i32, i32* @GICD_CTLR, align 4
  %85 = load i32, i32* @GICD_CTLR_ARE_NS, align 4
  %86 = load i32, i32* @GICD_CTLR_G1A, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @GICD_CTLR_G1, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @gic_d_write(%struct.gic_v3_softc* %83, i32 4, i32 %84, i32 %89)
  %91 = call i32 @CPU_AFFINITY(i32 0)
  store i32 %91, i32* %3, align 4
  %92 = load i64, i64* @GIC_FIRST_SPI, align 8
  store i64 %92, i64* %4, align 8
  br label %93

93:                                               ; preds = %105, %79
  %94 = load i64, i64* %4, align 8
  %95 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %96 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %93
  %100 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %2, align 8
  %101 = load i64, i64* %4, align 8
  %102 = call i32 @GICD_IROUTER(i64 %101)
  %103 = load i32, i32* %3, align 4
  %104 = call i32 @gic_d_write(%struct.gic_v3_softc* %100, i32 4, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %99
  %106 = load i64, i64* %4, align 8
  %107 = add nsw i64 %106, 1
  store i64 %107, i64* %4, align 8
  br label %93

108:                                              ; preds = %93
  ret i32 0
}

declare dso_local i32 @gic_d_write(%struct.gic_v3_softc*, i32, i32, i32) #1

declare dso_local i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc*, i32) #1

declare dso_local i32 @GICD_IGROUPR(i64) #1

declare dso_local i32 @GICD_ICFGR(i64) #1

declare dso_local i32 @GICD_IPRIORITYR(i64) #1

declare dso_local i32 @GICD_ICENABLER(i64) #1

declare dso_local i32 @CPU_AFFINITY(i32) #1

declare dso_local i32 @GICD_IROUTER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
