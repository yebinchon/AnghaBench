; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_redist_find.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/arm64/extr_gic_v3.c_gic_v3_redist_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gic_v3_softc = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__**, %struct.resource** }
%struct.TYPE_3__ = type { i32, %struct.resource }
%struct.resource = type { i32 }

@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Start searching for Re-Distributor\0A\00", align 1
@GICR_PIDR2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"No Re-Distributor found for CPU%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@GICR_TYPER = common dso_local global i32 0, align 4
@GICR_TYPER_AFF_SHIFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [41 x i8] c"Invalid pointer to per-CPU redistributor\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"CPU%u Re-Distributor has been found\0A\00", align 1
@GICR_RD_BASE_SIZE = common dso_local global i64 0, align 8
@GICR_SGI_BASE_SIZE = common dso_local global i64 0, align 8
@GICR_TYPER_VLPIS = common dso_local global i32 0, align 4
@GICR_VLPI_BASE_SIZE = common dso_local global i64 0, align 8
@GICR_RESERVED_SIZE = common dso_local global i64 0, align 8
@GICR_TYPER_LAST = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gic_v3_softc*)* @gic_v3_redist_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gic_v3_redist_find(%struct.gic_v3_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gic_v3_softc*, align 8
  %4 = alloca %struct.resource, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.gic_v3_softc* %0, %struct.gic_v3_softc** %3, align 8
  %11 = load i64, i64* %9, align 8
  %12 = call i64 @PCPU_GET(i64 %11)
  store i64 %12, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = call i32 @CPU_AFFINITY(i64 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @CPU_AFF3(i32 %15)
  %17 = shl i32 %16, 24
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @CPU_AFF2(i32 %18)
  %20 = shl i32 %19, 16
  %21 = or i32 %17, %20
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @CPU_AFF1(i32 %22)
  %24 = shl i32 %23, 8
  %25 = or i32 %21, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @CPU_AFF0(i32 %26)
  %28 = or i32 %25, %27
  store i32 %28, i32* %6, align 4
  %29 = load i64, i64* @bootverbose, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %33 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %31, %1
  store i64 0, i64* %10, align 8
  br label %37

37:                                               ; preds = %143, %36
  %38 = load i64, i64* %10, align 8
  %39 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %40 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %38, %42
  br i1 %43, label %44, label %146

44:                                               ; preds = %37
  %45 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %46 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 2
  %48 = load %struct.resource**, %struct.resource*** %47, align 8
  %49 = load i64, i64* %10, align 8
  %50 = getelementptr inbounds %struct.resource*, %struct.resource** %48, i64 %49
  %51 = load %struct.resource*, %struct.resource** %50, align 8
  %52 = bitcast %struct.resource* %4 to i8*
  %53 = bitcast %struct.resource* %51 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %52, i8* align 4 %53, i64 4, i1 false)
  %54 = call i32 @rman_get_bushandle(%struct.resource* %4)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* @GICR_PIDR2, align 4
  %56 = call i32 @bus_read_4(%struct.resource* %4, i32 %55)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @GICR_PIDR2_ARCH(i32 %57)
  switch i32 %58, label %60 [
    i32 129, label %59
    i32 128, label %59
  ]

59:                                               ; preds = %44, %44
  br label %67

60:                                               ; preds = %44
  %61 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %62 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 (i32, i8*, ...) @device_printf(i32 %63, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %64)
  %66 = load i32, i32* @ENODEV, align 4
  store i32 %66, i32* %2, align 4
  br label %153

67:                                               ; preds = %59
  br label %68

68:                                               ; preds = %137, %67
  %69 = load i32, i32* @GICR_TYPER, align 4
  %70 = call i32 @bus_read_8(%struct.resource* %4, i32 %69)
  store i32 %70, i32* %7, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @GICR_TYPER_AFF_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load i32, i32* %6, align 4
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %76, label %114

76:                                               ; preds = %68
  %77 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %78 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %79, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %80, i64 %81
  %83 = load %struct.TYPE_3__*, %struct.TYPE_3__** %82, align 8
  %84 = icmp ne %struct.TYPE_3__* %83, null
  %85 = zext i1 %84 to i32
  %86 = call i32 @KASSERT(i32 %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %87 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %88 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %90, i64 %91
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 1
  %95 = bitcast %struct.resource* %94 to i8*
  %96 = bitcast %struct.resource* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %95, i8* align 4 %96, i64 4, i1 false)
  %97 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %98 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %100, i64 %101
  %103 = load %struct.TYPE_3__*, %struct.TYPE_3__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 4
  %105 = load i64, i64* @bootverbose, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %113

107:                                              ; preds = %76
  %108 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %109 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = load i64, i64* %9, align 8
  %112 = call i32 (i32, i8*, ...) @device_printf(i32 %110, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %111)
  br label %113

113:                                              ; preds = %107, %76
  store i32 0, i32* %2, align 4
  br label %153

114:                                              ; preds = %68
  %115 = load i64, i64* @GICR_RD_BASE_SIZE, align 8
  %116 = load i64, i64* @GICR_SGI_BASE_SIZE, align 8
  %117 = add nsw i64 %115, %116
  %118 = load i32, i32* %5, align 4
  %119 = sext i32 %118 to i64
  %120 = add nsw i64 %119, %117
  %121 = trunc i64 %120 to i32
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @GICR_TYPER_VLPIS, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %114
  %127 = load i64, i64* @GICR_VLPI_BASE_SIZE, align 8
  %128 = load i64, i64* @GICR_RESERVED_SIZE, align 8
  %129 = add nsw i64 %127, %128
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %131, %129
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %5, align 4
  br label %134

134:                                              ; preds = %126, %114
  %135 = load i32, i32* %5, align 4
  %136 = call i32 @rman_set_bushandle(%struct.resource* %4, i32 %135)
  br label %137

137:                                              ; preds = %134
  %138 = load i32, i32* %7, align 4
  %139 = load i32, i32* @GICR_TYPER_LAST, align 4
  %140 = and i32 %138, %139
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %68, label %142

142:                                              ; preds = %137
  br label %143

143:                                              ; preds = %142
  %144 = load i64, i64* %10, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %10, align 8
  br label %37

146:                                              ; preds = %37
  %147 = load %struct.gic_v3_softc*, %struct.gic_v3_softc** %3, align 8
  %148 = getelementptr inbounds %struct.gic_v3_softc, %struct.gic_v3_softc* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = load i64, i64* %9, align 8
  %151 = call i32 (i32, i8*, ...) @device_printf(i32 %149, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 %150)
  %152 = load i32, i32* @ENXIO, align 4
  store i32 %152, i32* %2, align 4
  br label %153

153:                                              ; preds = %146, %113, %60
  %154 = load i32, i32* %2, align 4
  ret i32 %154
}

declare dso_local i64 @PCPU_GET(i64) #1

declare dso_local i32 @CPU_AFFINITY(i64) #1

declare dso_local i32 @CPU_AFF3(i32) #1

declare dso_local i32 @CPU_AFF2(i32) #1

declare dso_local i32 @CPU_AFF1(i32) #1

declare dso_local i32 @CPU_AFF0(i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rman_get_bushandle(%struct.resource*) #1

declare dso_local i32 @bus_read_4(%struct.resource*, i32) #1

declare dso_local i32 @GICR_PIDR2_ARCH(i32) #1

declare dso_local i32 @bus_read_8(%struct.resource*, i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @rman_set_bushandle(%struct.resource*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
