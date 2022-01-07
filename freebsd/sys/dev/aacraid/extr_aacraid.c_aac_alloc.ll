; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_FLAGS_SG_64BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR = common dso_local global i32 0, align 4
@BUS_SPACE_MAXADDR_32BIT = common dso_local global i32 0, align 4
@BUS_SPACE_MAXSIZE_32BIT = common dso_local global i32 0, align 4
@BUS_DMA_ALLOCNOW = common dso_local global i32 0, align 4
@busdma_lock_mutex = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [31 x i8] c"can't allocate buffer DMA tag\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AAC_FLAGS_NEW_COMM_TYPE1 = common dso_local global i32 0, align 4
@AAC_FLAGS_4GB_WINDOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"can't allocate FIB DMA tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"can't allocate common structure DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"can't allocate common structure\0A\00", align 1
@aac_common_map = common dso_local global i32 0, align 4
@M_AACRAIDBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_alloc(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %5 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %6 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %7 = call i32 @fwprintf(%struct.aac_softc* %5, i8* %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %9 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %8, i32 0, i32 14
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %12 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ %18, %17 ], [ %20, %19 ]
  %23 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %24 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %25 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = shl i32 %26, 9
  %28 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %29 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %32 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %33 = load i32*, i32** @busdma_lock_mutex, align 8
  %34 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %35 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %34, i32 0, i32 7
  %36 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %37 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %36, i32 0, i32 16
  %38 = call i64 @bus_dma_tag_create(i32 %10, i32 1, i32 0, i32 %22, i32 %23, i32* null, i32* null, i32 %27, i32 %30, i32 %31, i32 %32, i32* %33, i32* %35, i32* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %21
  %41 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %42 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %45 = load i32, i32* @ENOMEM, align 4
  store i32 %45, i32* %2, align 4
  br label %221

46:                                               ; preds = %21
  %47 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %48 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @AAC_FLAGS_NEW_COMM_TYPE1, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %66

53:                                               ; preds = %46
  %54 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %55 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = add i64 %61, 4
  %63 = add i64 %62, 31
  %64 = mul i64 %57, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %4, align 4
  br label %75

66:                                               ; preds = %46
  %67 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %68 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %71 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 31
  %74 = mul nsw i32 %69, %73
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %66, %53
  %76 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %77 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %76, i32 0, i32 14
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %80 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @AAC_FLAGS_4GB_WINDOW, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %75
  %86 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %88

87:                                               ; preds = %75
  br label %88

88:                                               ; preds = %87, %85
  %89 = phi i32 [ %86, %85 ], [ 2147483647, %87 ]
  %90 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %94 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %93, i32 0, i32 15
  %95 = call i64 @bus_dma_tag_create(i32 %78, i32 1, i32 0, i32 %89, i32 %90, i32* null, i32* null, i32 %91, i32 1, i32 %92, i32 0, i32* null, i32* null, i32* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %88
  %98 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %99 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %98, i32 0, i32 13
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @device_printf(i32 %100, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  store i32 %102, i32* %2, align 4
  br label %221

103:                                              ; preds = %88
  store i32 4, i32* %4, align 4
  %104 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %105 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %104, i32 0, i32 5
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = mul i64 %107, 4
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = add i64 %110, %108
  %112 = trunc i64 %111 to i32
  store i32 %112, i32* %4, align 4
  %113 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %114 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %113, i32 0, i32 14
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %117 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32, i32* @AAC_FLAGS_4GB_WINDOW, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %103
  %123 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %125

124:                                              ; preds = %103
  br label %125

125:                                              ; preds = %124, %122
  %126 = phi i32 [ %123, %122 ], [ 2147483647, %124 ]
  %127 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %128 = load i32, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %131 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %130, i32 0, i32 12
  %132 = call i64 @bus_dma_tag_create(i32 %115, i32 1, i32 0, i32 %126, i32 %127, i32* null, i32* null, i32 %128, i32 1, i32 %129, i32 0, i32* null, i32* null, i32* %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %140

134:                                              ; preds = %125
  %135 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %136 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %135, i32 0, i32 13
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @device_printf(i32 %137, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %139 = load i32, i32* @ENOMEM, align 4
  store i32 %139, i32* %2, align 4
  br label %221

140:                                              ; preds = %125
  %141 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %142 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %141, i32 0, i32 12
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %145 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %144, i32 0, i32 10
  %146 = bitcast i32* %145 to i8**
  %147 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %148 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %149 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %148, i32 0, i32 11
  %150 = call i64 @bus_dmamem_alloc(i32 %143, i8** %146, i32 %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %140
  %153 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %154 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %153, i32 0, i32 13
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @device_printf(i32 %155, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %157 = load i32, i32* @ENOMEM, align 4
  store i32 %157, i32* %2, align 4
  br label %221

158:                                              ; preds = %140
  %159 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %160 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %159, i32 0, i32 12
  %161 = load i32, i32* %160, align 4
  %162 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %163 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %162, i32 0, i32 11
  %164 = load i32, i32* %163, align 4
  %165 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %166 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %165, i32 0, i32 10
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* %4, align 4
  %169 = load i32, i32* @aac_common_map, align 4
  %170 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %171 = call i32 @bus_dmamap_load(i32 %161, i32 %164, i32 %167, i32 %168, i32 %169, %struct.aac_softc* %170, i32 0)
  %172 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %173 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %4, align 4
  %176 = call i32 @bzero(i32 %174, i32 %175)
  %177 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %178 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %177, i32 0, i32 9
  %179 = call i32 @TAILQ_INIT(i32* %178)
  %180 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %181 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %180, i32 0, i32 5
  %182 = load i32, i32* %181, align 4
  %183 = sext i32 %182 to i64
  %184 = mul i64 %183, 4
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @M_AACRAIDBUF, align 4
  %187 = load i32, i32* @M_WAITOK, align 4
  %188 = load i32, i32* @M_ZERO, align 4
  %189 = or i32 %187, %188
  %190 = call i32 @malloc(i32 %185, i32 %186, i32 %189)
  %191 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %192 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %191, i32 0, i32 8
  store i32 %190, i32* %192, align 4
  %193 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %194 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %193, i32 0, i32 7
  %195 = call i32 @mtx_lock(i32* %194)
  br label %196

196:                                              ; preds = %209, %158
  %197 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %198 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %197, i32 0, i32 6
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %201 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %200, i32 0, i32 5
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %210

204:                                              ; preds = %196
  %205 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %206 = call i64 @aac_alloc_commands(%struct.aac_softc* %205)
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %209

208:                                              ; preds = %204
  br label %210

209:                                              ; preds = %204
  br label %196

210:                                              ; preds = %208, %196
  %211 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %212 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %211, i32 0, i32 7
  %213 = call i32 @mtx_unlock(i32* %212)
  %214 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %215 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %214, i32 0, i32 6
  %216 = load i32, i32* %215, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %210
  %219 = load i32, i32* @ENOMEM, align 4
  store i32 %219, i32* %2, align 4
  br label %221

220:                                              ; preds = %210
  store i32 0, i32* %2, align 4
  br label %221

221:                                              ; preds = %220, %218, %152, %134, %97, %40
  %222 = load i32, i32* %2, align 4
  ret i32 %222
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i32, i32, i32, %struct.aac_softc*, i32) #1

declare dso_local i32 @bzero(i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i64 @aac_alloc_commands(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
