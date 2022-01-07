; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_setup_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_setup_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i64, i32, i32 }
%struct.resource = type { i32 }
%struct.intr_map_data = type { i32 }
%struct.gic_v3_softc = type { i32 }
%struct.gic_v3_irqsrc = type { i32, i32, i32 }

@ENOTSUP = common dso_local global i32 0, align 4
@INTR_POLARITY_CONFORM = common dso_local global i32 0, align 4
@INTR_TRIGGER_CONFORM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@INTR_ISRCF_PPI = common dso_local global i32 0, align 4
@cpuid = common dso_local global i32 0, align 4
@GIC_FIRST_PPI = common dso_local global i32 0, align 4
@GIC_LAST_SPI = common dso_local global i32 0, align 4
@GIC_LAST_PPI = common dso_local global i32 0, align 4
@GICR_SGI_BASE_SIZE = common dso_local global i64 0, align 8
@INTR_TRIGGER_LEVEL = common dso_local global i32 0, align 4
@REDIST = common dso_local global i32 0, align 4
@DIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.intr_irqsrc*, %struct.resource*, %struct.intr_map_data*)* @gic_v3_setup_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_setup_intr(i32 %0, %struct.intr_irqsrc* %1, %struct.resource* %2, %struct.intr_map_data* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intr_irqsrc*, align 8
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.intr_map_data*, align 8
  %10 = alloca %struct.gic_v3_softc*, align 8
  %11 = alloca %struct.gic_v3_irqsrc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store %struct.intr_irqsrc* %1, %struct.intr_irqsrc** %7, align 8
  store %struct.resource* %2, %struct.resource** %8, align 8
  store %struct.intr_map_data* %3, %struct.intr_map_data** %9, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call %struct.gic_v3_softc* @device_get_softc(i32 %17)
  store %struct.gic_v3_softc* %18, %struct.gic_v3_softc** %10, align 8
  %19 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %20 = bitcast %struct.intr_irqsrc* %19 to %struct.gic_v3_irqsrc*
  store %struct.gic_v3_irqsrc* %20, %struct.gic_v3_irqsrc** %11, align 8
  %21 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %22 = icmp eq %struct.intr_map_data* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOTSUP, align 4
  store i32 %24, i32* %5, align 4
  br label %166

25:                                               ; preds = %4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.intr_map_data*, %struct.intr_map_data** %9, align 8
  %28 = call i32 @do_gic_v3_map_intr(i32 %26, %struct.intr_map_data* %27, i32* %15, i32* %13, i32* %12)
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %25
  %32 = load i32, i32* %16, align 4
  store i32 %32, i32* %5, align 4
  br label %166

33:                                               ; preds = %25
  %34 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %11, align 8
  %35 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %15, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %47, label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @INTR_POLARITY_CONFORM, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %47, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @INTR_TRIGGER_CONFORM, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %43, %39, %33
  %48 = load i32, i32* @EINVAL, align 4
  store i32 %48, i32* %5, align 4
  br label %166

49:                                               ; preds = %43
  %50 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %51 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %11, align 8
  %57 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %54
  %61 = load i32, i32* %12, align 4
  %62 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %11, align 8
  %63 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %61, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %60, %54
  %67 = load i32, i32* @EINVAL, align 4
  store i32 %67, i32* %5, align 4
  br label %166

68:                                               ; preds = %60
  store i32 0, i32* %5, align 4
  br label %166

69:                                               ; preds = %49
  %70 = load i32, i32* %13, align 4
  %71 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %11, align 8
  %72 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load i32, i32* %12, align 4
  %74 = load %struct.gic_v3_irqsrc*, %struct.gic_v3_irqsrc** %11, align 8
  %75 = getelementptr inbounds %struct.gic_v3_irqsrc, %struct.gic_v3_irqsrc* %74, i32 0, i32 2
  store i32 %73, i32* %75, align 4
  %76 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %77 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @INTR_ISRCF_PPI, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %69
  %83 = load i32, i32* @cpuid, align 4
  %84 = call i32 @PCPU_GET(i32 %83)
  %85 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %86 = getelementptr inbounds %struct.intr_irqsrc, %struct.intr_irqsrc* %85, i32 0, i32 2
  %87 = call i32 @CPU_SET(i32 %84, i32* %86)
  br label %88

88:                                               ; preds = %82, %69
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @GIC_FIRST_PPI, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %92, label %165

92:                                               ; preds = %88
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* @GIC_LAST_SPI, align 4
  %95 = icmp sle i32 %93, %94
  br i1 %95, label %96, label %165

96:                                               ; preds = %92
  %97 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %98 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %97, i32 0, i32 0
  %99 = call i32 @mtx_lock_spin(i32* %98)
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @GIC_LAST_PPI, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %110

103:                                              ; preds = %96
  %104 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %105 = load i64, i64* @GICR_SGI_BASE_SIZE, align 8
  %106 = load i32, i32* %15, align 4
  %107 = call i64 @GICD_ICFGR(i32 %106)
  %108 = add nsw i64 %105, %107
  %109 = call i32 @gic_r_read(%struct.gic_v3_softc* %104, i32 4, i64 %108)
  store i32 %109, i32* %14, align 4
  br label %115

110:                                              ; preds = %96
  %111 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %112 = load i32, i32* %15, align 4
  %113 = call i64 @GICD_ICFGR(i32 %112)
  %114 = call i32 @gic_d_read(%struct.gic_v3_softc* %111, i32 4, i64 %113)
  store i32 %114, i32* %14, align 4
  br label %115

115:                                              ; preds = %110, %103
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* @INTR_TRIGGER_LEVEL, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %127

119:                                              ; preds = %115
  %120 = load i32, i32* %15, align 4
  %121 = srem i32 %120, 16
  %122 = mul nsw i32 %121, 2
  %123 = shl i32 2, %122
  %124 = xor i32 %123, -1
  %125 = load i32, i32* %14, align 4
  %126 = and i32 %125, %124
  store i32 %126, i32* %14, align 4
  br label %134

127:                                              ; preds = %115
  %128 = load i32, i32* %15, align 4
  %129 = srem i32 %128, 16
  %130 = mul nsw i32 %129, 2
  %131 = shl i32 2, %130
  %132 = load i32, i32* %14, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %14, align 4
  br label %134

134:                                              ; preds = %127, %119
  %135 = load i32, i32* %15, align 4
  %136 = load i32, i32* @GIC_LAST_PPI, align 4
  %137 = icmp sle i32 %135, %136
  br i1 %137, label %138, label %149

138:                                              ; preds = %134
  %139 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %140 = load i64, i64* @GICR_SGI_BASE_SIZE, align 8
  %141 = load i32, i32* %15, align 4
  %142 = call i64 @GICD_ICFGR(i32 %141)
  %143 = add nsw i64 %140, %142
  %144 = load i32, i32* %14, align 4
  %145 = call i32 @gic_r_write(%struct.gic_v3_softc* %139, i32 4, i64 %143, i32 %144)
  %146 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %147 = load i32, i32* @REDIST, align 4
  %148 = call i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc* %146, i32 %147)
  br label %158

149:                                              ; preds = %134
  %150 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %151 = load i32, i32* %15, align 4
  %152 = call i64 @GICD_ICFGR(i32 %151)
  %153 = load i32, i32* %14, align 4
  %154 = call i32 @gic_d_write(%struct.gic_v3_softc* %150, i32 4, i64 %152, i32 %153)
  %155 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %156 = load i32, i32* @DIST, align 4
  %157 = call i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc* %155, i32 %156)
  br label %158

158:                                              ; preds = %149, %138
  %159 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %10, align 8
  %160 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %159, i32 0, i32 0
  %161 = call i32 @mtx_unlock_spin(i32* %160)
  %162 = load i32, i32* %6, align 4
  %163 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %7, align 8
  %164 = call i32 @gic_v3_bind_intr(i32 %162, %struct.intr_irqsrc* %163)
  br label %165

165:                                              ; preds = %158, %92, %88
  store i32 0, i32* %5, align 4
  br label %166

166:                                              ; preds = %165, %68, %66, %47, %31, %23
  %167 = load i32, i32* %5, align 4
  ret i32 %167
}

declare dso_local %struct.gic_v3_softc* @device_get_softc(i32) #1

declare dso_local i32 @do_gic_v3_map_intr(i32, %struct.intr_map_data*, i32*, i32*, i32*) #1

declare dso_local i32 @CPU_SET(i32, i32*) #1

declare dso_local i32 @PCPU_GET(i32) #1

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @gic_r_read(%struct.gic_v3_softc*, i32, i64) #1

declare dso_local i64 @GICD_ICFGR(i32) #1

declare dso_local i32 @gic_d_read(%struct.gic_v3_softc*, i32, i64) #1

declare dso_local i32 @gic_r_write(%struct.gic_v3_softc*, i32, i64, i32) #1

declare dso_local i32 @gic_v3_wait_for_rwp(%struct.gic_v3_softc*, i32) #1

declare dso_local i32 @gic_d_write(%struct.gic_v3_softc*, i32, i64, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

declare dso_local i32 @gic_v3_bind_intr(i32, %struct.intr_irqsrc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
