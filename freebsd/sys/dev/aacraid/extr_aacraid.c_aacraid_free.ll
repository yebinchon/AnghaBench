; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aacraid_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32*, i32, i32, i32*, i32, i64, i64, i64, i64, i32**, i32*, i64*, i64, i32, i64, i32, i64, i32* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@AAC_MAX_MSIX = common dso_local global i32 0, align 4
@SYS_RES_IRQ = common dso_local global i32 0, align 4
@SYS_RES_MEMORY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aacraid_free(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  %4 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %5 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %6 = call i32 @fwprintf(%struct.aac_softc* %4, i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %8 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %7, i32 0, i32 17
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 17
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @destroy_dev(i32* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %18 = call i32 @aac_free_commands(%struct.aac_softc* %17)
  %19 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %20 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %19, i32 0, i32 16
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %25 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %24, i32 0, i32 16
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @bus_dma_tag_destroy(i64 %26)
  br label %28

28:                                               ; preds = %23, %16
  %29 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %30 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %29, i32 0, i32 15
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @M_AACRAIDBUF, align 4
  %33 = call i32 @free(i32 %31, i32 %32)
  %34 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %35 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %34, i32 0, i32 14
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %28
  %39 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %40 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %39, i32 0, i32 12
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %43 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %42, i32 0, i32 13
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @bus_dmamap_unload(i64 %41, i32 %44)
  %46 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %47 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %46, i32 0, i32 12
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 14
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %53 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %52, i32 0, i32 13
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @bus_dmamem_free(i64 %48, i64 %51, i32 %54)
  br label %56

56:                                               ; preds = %38, %28
  %57 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %58 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %57, i32 0, i32 12
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %56
  %62 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %63 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %62, i32 0, i32 12
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @bus_dma_tag_destroy(i64 %64)
  br label %66

66:                                               ; preds = %61, %56
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %130, %66
  %68 = load i32, i32* %3, align 4
  %69 = load i32, i32* @AAC_MAX_MSIX, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %133

71:                                               ; preds = %67
  %72 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %73 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %72, i32 0, i32 11
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %99

80:                                               ; preds = %71
  %81 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %82 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %85 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %84, i32 0, i32 9
  %86 = load i32**, i32*** %85, align 8
  %87 = load i32, i32* %3, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds i32*, i32** %86, i64 %88
  %90 = load i32*, i32** %89, align 8
  %91 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %92 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %91, i32 0, i32 11
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = call i32 @bus_teardown_intr(i32 %83, i32* %90, i64 %97)
  br label %99

99:                                               ; preds = %80, %71
  %100 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %101 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %100, i32 0, i32 9
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %3, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  br i1 %107, label %108, label %128

108:                                              ; preds = %99
  %109 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %110 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @SYS_RES_IRQ, align 4
  %113 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %114 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %113, i32 0, i32 10
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %3, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %121 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %120, i32 0, i32 9
  %122 = load i32**, i32*** %121, align 8
  %123 = load i32, i32* %3, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32*, i32** %122, i64 %124
  %126 = load i32*, i32** %125, align 8
  %127 = call i32 @bus_release_resource(i32 %111, i32 %112, i32 %119, i32* %126)
  br label %129

128:                                              ; preds = %99
  br label %133

129:                                              ; preds = %108
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %3, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %3, align 4
  br label %67

133:                                              ; preds = %128, %67
  %134 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %135 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %134, i32 0, i32 8
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %143, label %138

138:                                              ; preds = %133
  %139 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %140 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %139, i32 0, i32 7
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138, %133
  %144 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %145 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @pci_release_msi(i32 %146)
  br label %148

148:                                              ; preds = %143, %138
  %149 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %150 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %158

153:                                              ; preds = %148
  %154 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %155 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %154, i32 0, i32 6
  %156 = load i64, i64* %155, align 8
  %157 = call i32 @bus_dma_tag_destroy(i64 %156)
  br label %158

158:                                              ; preds = %153, %148
  %159 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %160 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %168

163:                                              ; preds = %158
  %164 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %165 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %164, i32 0, i32 5
  %166 = load i64, i64* %165, align 8
  %167 = call i32 @bus_dma_tag_destroy(i64 %166)
  br label %168

168:                                              ; preds = %163, %158
  %169 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %170 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %169, i32 0, i32 3
  %171 = load i32*, i32** %170, align 8
  %172 = icmp ne i32* %171, null
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %175 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 4
  %177 = load i32, i32* @SYS_RES_MEMORY, align 4
  %178 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %179 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %182 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %181, i32 0, i32 3
  %183 = load i32*, i32** %182, align 8
  %184 = call i32 @bus_release_resource(i32 %176, i32 %177, i32 %180, i32* %183)
  br label %185

185:                                              ; preds = %173, %168
  %186 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %187 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = icmp ne i32* %188, null
  br i1 %189, label %190, label %202

190:                                              ; preds = %185
  %191 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %192 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %191, i32 0, i32 2
  %193 = load i32, i32* %192, align 4
  %194 = load i32, i32* @SYS_RES_MEMORY, align 4
  %195 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %196 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %199 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %198, i32 0, i32 0
  %200 = load i32*, i32** %199, align 8
  %201 = call i32 @bus_release_resource(i32 %193, i32 %194, i32 %197, i32* %200)
  br label %202

202:                                              ; preds = %190, %185
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

declare dso_local i32 @pci_release_msi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
