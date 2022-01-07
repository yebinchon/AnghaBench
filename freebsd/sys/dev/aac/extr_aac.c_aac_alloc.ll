; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.aac_common*, i32, i32, i32, i32, i32, i32, i32 }
%struct.aac_common = type { i32 }

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
@AAC_FLAGS_4GB_WINDOW = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"can't allocate FIB DMA tag\0A\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"can't allocate common structure DMA tag\0A\00", align 1
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [33 x i8] c"can't allocate common structure\0A\00", align 1
@aac_common_map = common dso_local global i32 0, align 4
@M_AACBUF = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_alloc(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %4 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %5 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %6 = call i32 @fwprintf(%struct.aac_softc* %4, i8* %5, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %8 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %7, i32 0, i32 14
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %11 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  br label %20

18:                                               ; preds = %1
  %19 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %20

20:                                               ; preds = %18, %16
  %21 = phi i32 [ %17, %16 ], [ %19, %18 ]
  %22 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %23 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %24 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 9
  %27 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %28 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %31 = load i32, i32* @BUS_DMA_ALLOCNOW, align 4
  %32 = load i32*, i32** @busdma_lock_mutex, align 8
  %33 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %34 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %33, i32 0, i32 17
  %35 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %36 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %35, i32 0, i32 16
  %37 = call i64 @bus_dma_tag_create(i32 %9, i32 1, i32 0, i32 %21, i32 %22, i32* null, i32* null, i32 %26, i32 %29, i32 %30, i32 %31, i32* %32, i32* %34, i32* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %20
  %40 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %41 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %40, i32 0, i32 13
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ENOMEM, align 4
  store i32 %44, i32* %2, align 4
  br label %203

45:                                               ; preds = %20
  %46 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %47 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @AAC_FLAGS_4GB_WINDOW, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %45
  %56 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %58

57:                                               ; preds = %45
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 2147483647, %57 ]
  %60 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %61 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %62 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %65 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %69 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %72 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = mul nsw i32 %70, %73
  %75 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %76 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %75, i32 0, i32 15
  %77 = call i64 @bus_dma_tag_create(i32 %48, i32 1, i32 0, i32 %59, i32 %60, i32* null, i32* null, i32 %67, i32 1, i32 %74, i32 0, i32* null, i32* null, i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %58
  %80 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %81 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %80, i32 0, i32 13
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @device_printf(i32 %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  store i32 %84, i32* %2, align 4
  br label %203

85:                                               ; preds = %58
  %86 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %87 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %86, i32 0, i32 14
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %90 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @AAC_FLAGS_4GB_WINDOW, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %85
  %96 = load i32, i32* @BUS_SPACE_MAXADDR_32BIT, align 4
  br label %98

97:                                               ; preds = %85
  br label %98

98:                                               ; preds = %97, %95
  %99 = phi i32 [ %96, %95 ], [ 2147483647, %97 ]
  %100 = load i32, i32* @BUS_SPACE_MAXADDR, align 4
  %101 = load i32, i32* @BUS_SPACE_MAXSIZE_32BIT, align 4
  %102 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %103 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %102, i32 0, i32 12
  %104 = call i64 @bus_dma_tag_create(i32 %88, i32 1, i32 0, i32 %99, i32 %100, i32* null, i32* null, i32 8196, i32 1, i32 %101, i32 0, i32* null, i32* null, i32* %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %98
  %107 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %108 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %107, i32 0, i32 13
  %109 = load i32, i32* %108, align 8
  %110 = call i32 @device_printf(i32 %109, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %111 = load i32, i32* @ENOMEM, align 4
  store i32 %111, i32* %2, align 4
  br label %203

112:                                              ; preds = %98
  %113 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %114 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %113, i32 0, i32 12
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %117 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %116, i32 0, i32 10
  %118 = bitcast %struct.aac_common** %117 to i8**
  %119 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %120 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %121 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %120, i32 0, i32 11
  %122 = call i64 @bus_dmamem_alloc(i32 %115, i8** %118, i32 %119, i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %112
  %125 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %126 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %125, i32 0, i32 13
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @device_printf(i32 %127, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  %129 = load i32, i32* @ENOMEM, align 4
  store i32 %129, i32* %2, align 4
  br label %203

130:                                              ; preds = %112
  %131 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %132 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %131, i32 0, i32 12
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %135 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %134, i32 0, i32 11
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %138 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %137, i32 0, i32 10
  %139 = load %struct.aac_common*, %struct.aac_common** %138, align 8
  %140 = load i32, i32* @aac_common_map, align 4
  %141 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %142 = call i32 @bus_dmamap_load(i32 %133, i32 %136, %struct.aac_common* %139, i32 8196, i32 %140, %struct.aac_softc* %141, i32 0)
  %143 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %144 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %143, i32 0, i32 5
  %145 = load i32, i32* %144, align 4
  %146 = icmp slt i32 %145, 8192
  br i1 %146, label %147, label %160

147:                                              ; preds = %130
  %148 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %149 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %148, i32 0, i32 10
  %150 = load %struct.aac_common*, %struct.aac_common** %149, align 8
  %151 = bitcast %struct.aac_common* %150 to i32*
  %152 = getelementptr inbounds i32, i32* %151, i64 8192
  %153 = bitcast i32* %152 to %struct.aac_common*
  %154 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %155 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %154, i32 0, i32 10
  store %struct.aac_common* %153, %struct.aac_common** %155, align 8
  %156 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %157 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = add nsw i32 %158, 8192
  store i32 %159, i32* %157, align 4
  br label %160

160:                                              ; preds = %147, %130
  %161 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %162 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %161, i32 0, i32 10
  %163 = load %struct.aac_common*, %struct.aac_common** %162, align 8
  %164 = call i32 @bzero(%struct.aac_common* %163, i32 4)
  %165 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %166 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %165, i32 0, i32 9
  %167 = call i32 @TAILQ_INIT(i32* %166)
  %168 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %169 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %168, i32 0, i32 6
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = mul i64 %171, 4
  %173 = trunc i64 %172 to i32
  %174 = load i32, i32* @M_AACBUF, align 4
  %175 = load i32, i32* @M_WAITOK, align 4
  %176 = load i32, i32* @M_ZERO, align 4
  %177 = or i32 %175, %176
  %178 = call i32 @malloc(i32 %173, i32 %174, i32 %177)
  %179 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %180 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  br label %181

181:                                              ; preds = %194, %160
  %182 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %183 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %186 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %185, i32 0, i32 6
  %187 = load i32, i32* %186, align 8
  %188 = icmp slt i32 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %181
  %190 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %191 = call i64 @aac_alloc_commands(%struct.aac_softc* %190)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  br label %195

194:                                              ; preds = %189
  br label %181

195:                                              ; preds = %193, %181
  %196 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %197 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %196, i32 0, i32 7
  %198 = load i32, i32* %197, align 4
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %200, label %202

200:                                              ; preds = %195
  %201 = load i32, i32* @ENOMEM, align 4
  store i32 %201, i32* %2, align 4
  br label %203

202:                                              ; preds = %195
  store i32 0, i32* %2, align 4
  br label %203

203:                                              ; preds = %202, %200, %124, %106, %79, %39
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i64 @bus_dma_tag_create(i32, i32, i32, i32, i32, i32*, i32*, i32, i32, i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, %struct.aac_common*, i32, i32, %struct.aac_softc*, i32) #1

declare dso_local i32 @bzero(%struct.aac_common*, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i32 @malloc(i32, i32, i32) #1

declare dso_local i64 @aac_alloc_commands(%struct.aac_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
