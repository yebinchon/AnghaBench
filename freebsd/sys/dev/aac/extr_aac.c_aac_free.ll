; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i64, i32*, i32, i32*, i64, i64, i32*, i64, i64, i32, i64, i32, i64, i32* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AACBUF = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4
@AAC_HWIF_NARK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aac_free(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %3 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %4 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %5 = call i32 @fwprintf(%struct.aac_softc* %3, i8* %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %7 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %6, i32 0, i32 13
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 13
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @destroy_dev(i32* %13)
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %17 = call i32 @aac_free_commands(%struct.aac_softc* %16)
  %18 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %19 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %18, i32 0, i32 12
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %15
  %23 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %24 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %23, i32 0, i32 12
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @bus_dma_tag_destroy(i64 %25)
  br label %27

27:                                               ; preds = %22, %15
  %28 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 11
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @M_AACBUF, align 4
  %32 = call i32 @free(i32 %30, i32 %31)
  %33 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 10
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %55

37:                                               ; preds = %27
  %38 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %39 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %38, i32 0, i32 8
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 9
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @bus_dmamap_unload(i64 %40, i32 %43)
  %45 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %46 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %45, i32 0, i32 8
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %49 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %48, i32 0, i32 10
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %52 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %51, i32 0, i32 9
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @bus_dmamem_free(i64 %47, i64 %50, i32 %53)
  br label %55

55:                                               ; preds = %37, %27
  %56 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %57 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %56, i32 0, i32 8
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %62 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %61, i32 0, i32 8
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @bus_dma_tag_destroy(i64 %63)
  br label %65

65:                                               ; preds = %60, %55
  %66 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %67 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %66, i32 0, i32 7
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %81

70:                                               ; preds = %65
  %71 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %72 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %75 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %74, i32 0, i32 6
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %78 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %77, i32 0, i32 7
  %79 = load i64, i64* %78, align 8
  %80 = call i32 @bus_teardown_intr(i32 %73, i32* %76, i64 %79)
  br label %81

81:                                               ; preds = %70, %65
  %82 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %83 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %82, i32 0, i32 6
  %84 = load i32*, i32** %83, align 8
  %85 = icmp ne i32* %84, null
  br i1 %85, label %86, label %103

86:                                               ; preds = %81
  %87 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %88 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @SYS_RES_IRQ, align 4
  %91 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %92 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %91, i32 0, i32 6
  %93 = load i32*, i32** %92, align 8
  %94 = call i32 @rman_get_rid(i32* %93)
  %95 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %96 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %95, i32 0, i32 6
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @bus_release_resource(i32 %89, i32 %90, i32 %94, i32* %97)
  %99 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %100 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = call i32 @pci_release_msi(i32 %101)
  br label %103

103:                                              ; preds = %86, %81
  %104 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %105 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %104, i32 0, i32 5
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %110 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %109, i32 0, i32 5
  %111 = load i64, i64* %110, align 8
  %112 = call i32 @bus_dma_tag_destroy(i64 %111)
  br label %113

113:                                              ; preds = %108, %103
  %114 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %115 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %113
  %119 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %120 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @bus_dma_tag_destroy(i64 %121)
  br label %123

123:                                              ; preds = %118, %113
  %124 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %125 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %124, i32 0, i32 3
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %128, label %141

128:                                              ; preds = %123
  %129 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %130 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @SYS_RES_MEMORY, align 4
  %133 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %134 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %133, i32 0, i32 3
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @rman_get_rid(i32* %135)
  %137 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %138 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = call i32 @bus_release_resource(i32 %131, i32 %132, i32 %136, i32* %139)
  br label %141

141:                                              ; preds = %128, %123
  %142 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %143 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* @AAC_HWIF_NARK, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %165

147:                                              ; preds = %141
  %148 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %149 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = icmp ne i32* %150, null
  br i1 %151, label %152, label %165

152:                                              ; preds = %147
  %153 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %154 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @SYS_RES_MEMORY, align 4
  %157 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %158 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %157, i32 0, i32 1
  %159 = load i32*, i32** %158, align 8
  %160 = call i32 @rman_get_rid(i32* %159)
  %161 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %162 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @bus_release_resource(i32 %155, i32 %156, i32 %160, i32* %163)
  br label %165

165:                                              ; preds = %152, %147, %141
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @destroy_dev(i32*) #1

declare dso_local i32 @aac_free_commands(%struct.aac_softc*) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i64, i32) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i32) #1

declare dso_local i32 @bus_teardown_intr(i32, i32*, i64) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32*) #1

declare dso_local i32 @rman_get_rid(i32*) #1

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
