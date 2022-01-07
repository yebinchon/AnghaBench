; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_finish_command.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/amlogic/aml8726/extr_aml8726_sdxc-m8.c_aml8726_sdxc_finish_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aml8726_sdxc_softc = type { i32, i32, %struct.mmc_command*, i32 }
%struct.mmc_command = type { i32, %struct.TYPE_2__*, i32*, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)*, %struct.mmc_command* }
%struct.mmc_data = type { i32, i64 }

@AML_SDXC_IRQ_STATUS_REG = common dso_local global i32 0, align 4
@AML_SDXC_IRQ_STATUS_CLEAR = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aml8726_sdxc_softc*, i32)* @aml8726_sdxc_finish_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aml8726_sdxc_finish_command(%struct.aml8726_sdxc_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.aml8726_sdxc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_command*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  store %struct.aml8726_sdxc_softc* %0, %struct.aml8726_sdxc_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %10 = call i32 @AML_SDXC_LOCK_ASSERT(%struct.aml8726_sdxc_softc* %9)
  %11 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %12 = load i32, i32* @AML_SDXC_IRQ_STATUS_REG, align 4
  %13 = load i32, i32* @AML_SDXC_IRQ_STATUS_CLEAR, align 4
  %14 = call i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc* %11, i32 %12, i32 %13)
  %15 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %16 = load i32, i32* @AML_SDXC_IRQ_STATUS_REG, align 4
  %17 = call i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc* %15, i32 %16)
  %18 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %19 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %18, i32 0, i32 3
  %20 = call i32 @callout_stop(i32* %19)
  %21 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %22 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %21, i32 0, i32 2
  %23 = load %struct.mmc_command*, %struct.mmc_command** %22, align 8
  store %struct.mmc_command* %23, %struct.mmc_command** %6, align 8
  %24 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %24, i32 0, i32 2
  store %struct.mmc_command* null, %struct.mmc_command** %25, align 8
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 3
  %31 = load %struct.mmc_data*, %struct.mmc_data** %30, align 8
  store %struct.mmc_data* %31, %struct.mmc_data** %8, align 8
  %32 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %33 = icmp ne %struct.mmc_data* %32, null
  br i1 %33, label %34, label %81

34:                                               ; preds = %2
  %35 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %81

39:                                               ; preds = %34
  %40 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %41 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @MMC_DATA_READ, align 4
  %44 = load i32, i32* @MMC_DATA_WRITE, align 4
  %45 = or i32 %43, %44
  %46 = and i32 %42, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %39
  %49 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %50 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @MMC_DATA_READ, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %64

55:                                               ; preds = %48
  %56 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %57 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %60 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %63 = call i32 @bus_dmamap_sync(i32 %58, i32 %61, i32 %62)
  br label %73

64:                                               ; preds = %48
  %65 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %72 = call i32 @bus_dmamap_sync(i32 %67, i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %64, %55
  %74 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %75 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %78 = getelementptr inbounds %struct.aml8726_sdxc_softc, %struct.aml8726_sdxc_softc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @bus_dmamap_unload(i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %73, %39, %34, %2
  %82 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %83 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %82, i32 0, i32 1
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 1
  %86 = load %struct.mmc_command*, %struct.mmc_command** %85, align 8
  %87 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %88 = icmp ne %struct.mmc_command* %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %81
  %90 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 1
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load %struct.mmc_command*, %struct.mmc_command** %93, align 8
  br label %96

95:                                               ; preds = %81
  br label %96

96:                                               ; preds = %95, %89
  %97 = phi %struct.mmc_command* [ %94, %89 ], [ null, %95 ]
  store %struct.mmc_command* %97, %struct.mmc_command** %7, align 8
  %98 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %99 = icmp ne %struct.mmc_command* %98, null
  br i1 %99, label %100, label %159

100:                                              ; preds = %96
  %101 = load i32, i32* %4, align 4
  %102 = load i32, i32* @MMC_ERR_NONE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %144

104:                                              ; preds = %100
  %105 = load i32, i32* @MMC_ERR_NONE, align 4
  %106 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %107 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 8
  %108 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %109 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %108, i32 0, i32 2
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %114 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 0
  store i32 %112, i32* %116, align 4
  %117 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %118 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %123 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %122, i32 0, i32 2
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  %126 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %127 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %126, i32 0, i32 2
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 2
  %130 = load i32, i32* %129, align 4
  %131 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %132 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %131, i32 0, i32 2
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 2
  store i32 %130, i32* %134, align 4
  %135 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %136 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %135, i32 0, i32 2
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 3
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %141 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %140, i32 0, i32 2
  %142 = load i32*, i32** %141, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 3
  store i32 %139, i32* %143, align 4
  br label %158

144:                                              ; preds = %100
  %145 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %146 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %147 = call i32 @aml8726_sdxc_start_command(%struct.aml8726_sdxc_softc* %145, %struct.mmc_command* %146)
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %5, align 4
  %149 = load i32, i32* @MMC_ERR_NONE, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %154

151:                                              ; preds = %144
  %152 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %153 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %152)
  br label %176

154:                                              ; preds = %144
  %155 = load i32, i32* %5, align 4
  %156 = load %struct.mmc_command*, %struct.mmc_command** %7, align 8
  %157 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %154, %104
  br label %159

159:                                              ; preds = %158, %96
  %160 = load %struct.aml8726_sdxc_softc*, %struct.aml8726_sdxc_softc** %3, align 8
  %161 = call i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc* %160)
  %162 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %163 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %162, i32 0, i32 1
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** %163, align 8
  %165 = icmp ne %struct.TYPE_2__* %164, null
  br i1 %165, label %166, label %176

166:                                              ; preds = %159
  %167 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %168 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %167, i32 0, i32 1
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i32 0, i32 0
  %171 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %170, align 8
  %172 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %173 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %172, i32 0, i32 1
  %174 = load %struct.TYPE_2__*, %struct.TYPE_2__** %173, align 8
  %175 = call i32 %171(%struct.TYPE_2__* %174)
  br label %176

176:                                              ; preds = %151, %166, %159
  ret void
}

declare dso_local i32 @AML_SDXC_LOCK_ASSERT(%struct.aml8726_sdxc_softc*) #1

declare dso_local i32 @CSR_WRITE_4(%struct.aml8726_sdxc_softc*, i32, i32) #1

declare dso_local i32 @CSR_BARRIER(%struct.aml8726_sdxc_softc*, i32) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @aml8726_sdxc_start_command(%struct.aml8726_sdxc_softc*, %struct.mmc_command*) #1

declare dso_local i32 @AML_SDXC_UNLOCK(%struct.aml8726_sdxc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
