; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_msix_alloc_msi.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/annapurna/alpine/extr_alpine_pci_msix.c_al_msix_alloc_msi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_irqsrc = type { i32 }
%struct.intr_map_data_fdt = type { i32, i64*, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.al_msix_softc = type { i32, i64, i32, %struct.intr_irqsrc**, i32 }
%struct.intr_map_data = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@M_FIRSTFIT = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GIC_INTR_CELL_CNT = common dso_local global i32 0, align 4
@M_AL_MSIX = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@INTR_MAP_DATA_FDT = common dso_local global i32 0, align 4
@AL_SPI_INTR = common dso_local global i64 0, align 8
@AL_EDGE_HIGH = common dso_local global i64 0, align 8
@bootverbose = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"MSI-X allocation: start SPI %d, count %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*, %struct.intr_irqsrc**)* @al_msix_alloc_msi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_msix_alloc_msi(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, %struct.intr_irqsrc** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.intr_irqsrc**, align 8
  %14 = alloca %struct.intr_map_data_fdt*, align 8
  %15 = alloca %struct.al_msix_softc*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store %struct.intr_irqsrc** %5, %struct.intr_irqsrc*** %13, align 8
  %20 = load i32, i32* %8, align 4
  %21 = call %struct.al_msix_softc* @device_get_softc(i32 %20)
  store %struct.al_msix_softc* %21, %struct.al_msix_softc** %15, align 8
  %22 = load i32, i32* %10, align 4
  %23 = call i64 @powerof2(i32 %22)
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %26, 8
  br i1 %27, label %28, label %30

28:                                               ; preds = %25, %6
  %29 = load i32, i32* @EINVAL, align 4
  store i32 %29, i32* %7, align 4
  br label %171

30:                                               ; preds = %25
  %31 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %32 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @M_FIRSTFIT, align 4
  %36 = load i32, i32* @M_NOWAIT, align 4
  %37 = or i32 %35, %36
  %38 = call i64 @vmem_alloc(i32 %33, i32 %34, i32 %37, i64* %16)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @ENOMEM, align 4
  store i32 %41, i32* %7, align 4
  br label %171

42:                                               ; preds = %30
  %43 = load i32, i32* @GIC_INTR_CELL_CNT, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 %44, 4
  %46 = add i64 32, %45
  %47 = trunc i64 %46 to i32
  %48 = load i32, i32* @M_AL_MSIX, align 4
  %49 = load i32, i32* @M_WAITOK, align 4
  %50 = call %struct.intr_map_data_fdt* @malloc(i32 %47, i32 %48, i32 %49)
  store %struct.intr_map_data_fdt* %50, %struct.intr_map_data_fdt** %14, align 8
  %51 = load i32, i32* @INTR_MAP_DATA_FDT, align 4
  %52 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %53 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 8
  %55 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %56 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %55, i32 0, i32 2
  store i64 0, i64* %56, align 8
  %57 = load i32, i32* @GIC_INTR_CELL_CNT, align 4
  %58 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %59 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load i64, i64* @AL_SPI_INTR, align 8
  %61 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %62 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %61, i32 0, i32 1
  %63 = load i64*, i64** %62, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 0
  store i64 %60, i64* %64, align 8
  %65 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %66 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  store i64 0, i64* %68, align 8
  %69 = load i64, i64* @AL_EDGE_HIGH, align 8
  %70 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %71 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %70, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  store i64 %69, i64* %73, align 8
  %74 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %75 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %74, i32 0, i32 2
  %76 = call i32 @mtx_lock(i32* %75)
  %77 = load i64, i64* %16, align 8
  store i64 %77, i64* %18, align 8
  br label %78

78:                                               ; preds = %143, %42
  %79 = load i64, i64* %18, align 8
  %80 = load i64, i64* %16, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = add i64 %80, %82
  %84 = icmp ult i64 %79, %83
  br i1 %84, label %85, label %146

85:                                               ; preds = %78
  %86 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %87 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i64, i64* %18, align 8
  %90 = add i64 %88, %89
  %91 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %92 = getelementptr inbounds %struct.intr_map_data_fdt, %struct.intr_map_data_fdt* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = getelementptr inbounds i64, i64* %93, i64 1
  store i64 %90, i64* %94, align 8
  %95 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %96 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %99 = bitcast %struct.intr_map_data_fdt* %98 to %struct.intr_map_data*
  %100 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %13, align 8
  %101 = call i32 @PIC_MAP_INTR(i32 %97, %struct.intr_map_data* %99, %struct.intr_irqsrc** %100)
  store i32 %101, i32* %17, align 4
  %102 = load i32, i32* %17, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %133

104:                                              ; preds = %85
  %105 = load i64, i64* %16, align 8
  store i64 %105, i64* %19, align 8
  br label %106

106:                                              ; preds = %116, %104
  %107 = load i64, i64* %19, align 8
  %108 = load i64, i64* %18, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %119

110:                                              ; preds = %106
  %111 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %112 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %111, i32 0, i32 3
  %113 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %112, align 8
  %114 = load i64, i64* %19, align 8
  %115 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %113, i64 %114
  store %struct.intr_irqsrc* null, %struct.intr_irqsrc** %115, align 8
  br label %116

116:                                              ; preds = %110
  %117 = load i64, i64* %19, align 8
  %118 = add i64 %117, 1
  store i64 %118, i64* %19, align 8
  br label %106

119:                                              ; preds = %106
  %120 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %121 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %120, i32 0, i32 2
  %122 = call i32 @mtx_unlock(i32* %121)
  %123 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %124 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %16, align 8
  %127 = load i32, i32* %10, align 4
  %128 = call i32 @vmem_free(i32 %125, i64 %126, i32 %127)
  %129 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %130 = load i32, i32* @M_AL_MSIX, align 4
  %131 = call i32 @free(%struct.intr_map_data_fdt* %129, i32 %130)
  %132 = load i32, i32* %17, align 4
  store i32 %132, i32* %7, align 4
  br label %171

133:                                              ; preds = %85
  %134 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %13, align 8
  %135 = load %struct.intr_irqsrc*, %struct.intr_irqsrc** %134, align 8
  %136 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %137 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %136, i32 0, i32 3
  %138 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %137, align 8
  %139 = load i64, i64* %18, align 8
  %140 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %138, i64 %139
  store %struct.intr_irqsrc* %135, %struct.intr_irqsrc** %140, align 8
  %141 = load %struct.intr_irqsrc**, %struct.intr_irqsrc*** %13, align 8
  %142 = getelementptr inbounds %struct.intr_irqsrc*, %struct.intr_irqsrc** %141, i32 1
  store %struct.intr_irqsrc** %142, %struct.intr_irqsrc*** %13, align 8
  br label %143

143:                                              ; preds = %133
  %144 = load i64, i64* %18, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %18, align 8
  br label %78

146:                                              ; preds = %78
  %147 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %148 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %147, i32 0, i32 2
  %149 = call i32 @mtx_unlock(i32* %148)
  %150 = load %struct.intr_map_data_fdt*, %struct.intr_map_data_fdt** %14, align 8
  %151 = load i32, i32* @M_AL_MSIX, align 4
  %152 = call i32 @free(%struct.intr_map_data_fdt* %150, i32 %151)
  %153 = load i64, i64* @bootverbose, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %146
  %156 = load i32, i32* %8, align 4
  %157 = load i64, i64* %16, align 8
  %158 = trunc i64 %157 to i32
  %159 = sext i32 %158 to i64
  %160 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %161 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = add nsw i64 %159, %162
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @device_printf(i32 %156, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %163, i32 %164)
  br label %166

166:                                              ; preds = %155, %146
  %167 = load %struct.al_msix_softc*, %struct.al_msix_softc** %15, align 8
  %168 = getelementptr inbounds %struct.al_msix_softc, %struct.al_msix_softc* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load i32*, i32** %12, align 8
  store i32 %169, i32* %170, align 4
  store i32 0, i32* %7, align 4
  br label %171

171:                                              ; preds = %166, %119, %40, %28
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local %struct.al_msix_softc* @device_get_softc(i32) #1

declare dso_local i64 @powerof2(i32) #1

declare dso_local i64 @vmem_alloc(i32, i32, i32, i64*) #1

declare dso_local %struct.intr_map_data_fdt* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @PIC_MAP_INTR(i32, %struct.intr_map_data*, %struct.intr_irqsrc**) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @vmem_free(i32, i64, i32) #1

declare dso_local i32 @free(%struct.intr_map_data_fdt*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
