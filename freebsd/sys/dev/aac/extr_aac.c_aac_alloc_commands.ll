; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_alloc_commands.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_alloc_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i64, i32, i64, i32, i32, i32, i32, i32, %struct.aac_command*, i32 }
%struct.aac_command = type { i32, %struct.aac_command*, i64, %struct.aac_fib*, %struct.aac_softc* }
%struct.aac_fib = type { i32 }
%struct.aac_fibmap = type { i32, i64, %struct.aac_command* }

@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENOMEM = common dso_local global i32 0, align 4
@M_AACBUF = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Not enough contiguous memory available.\0A\00", align 1
@aac_map_command_helper = common dso_local global i32 0, align 4
@fm_link = common dso_local global i32 0, align 4
@HBA_FLAGS_DBG_COMM_B = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [16 x i8] c"total_fibs= %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aac_softc*)* @aac_alloc_commands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_alloc_commands(%struct.aac_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aac_softc*, align 8
  %4 = alloca %struct.aac_command*, align 8
  %5 = alloca %struct.aac_fibmap*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.aac_softc* %0, %struct.aac_softc** %3, align 8
  %9 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %10 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %11 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %9, i8* %10, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %13 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %16 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %14, %18
  %20 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %21 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  store i32 %25, i32* %2, align 4
  br label %204

26:                                               ; preds = %1
  %27 = load i32, i32* @M_AACBUF, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.aac_fibmap* @malloc(i32 24, i32 %27, i32 %30)
  store %struct.aac_fibmap* %31, %struct.aac_fibmap** %5, align 8
  %32 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %33 = icmp eq %struct.aac_fibmap* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOMEM, align 4
  store i32 %35, i32* %2, align 4
  br label %204

36:                                               ; preds = %26
  %37 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %38 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %41 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %40, i32 0, i32 1
  %42 = bitcast i64* %41 to i8**
  %43 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %44 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %45 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %44, i32 0, i32 0
  %46 = call i64 @bus_dmamem_alloc(i32 %39, i8** %42, i32 %43, i32* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %36
  %49 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %54 = load i32, i32* @M_AACBUF, align 4
  %55 = call i32 @free(%struct.aac_fibmap* %53, i32 %54)
  %56 = load i32, i32* @ENOMEM, align 4
  store i32 %56, i32* %2, align 4
  br label %204

57:                                               ; preds = %36
  %58 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %59 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %62 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %65 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %68 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %71 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = mul nsw i32 %69, %72
  %74 = load i32, i32* @aac_map_command_helper, align 4
  %75 = call i32 @bus_dmamap_load(i32 %60, i32 %63, i64 %66, i32 %73, i32 %74, i64* %6, i32 0)
  %76 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %77 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %80 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %83 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 8
  %85 = mul nsw i32 %81, %84
  %86 = call i32 @bzero(i64 %78, i32 %85)
  store i32 0, i32* %7, align 4
  br label %87

87:                                               ; preds = %158, %57
  %88 = load i32, i32* %7, align 4
  %89 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %90 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %161

93:                                               ; preds = %87
  %94 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %95 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %94, i32 0, i32 8
  %96 = load %struct.aac_command*, %struct.aac_command** %95, align 8
  %97 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %98 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %96, i64 %99
  store %struct.aac_command* %100, %struct.aac_command** %4, align 8
  %101 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %102 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %103 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %102, i32 0, i32 2
  store %struct.aac_command* %101, %struct.aac_command** %103, align 8
  %104 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %105 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %106 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %105, i32 0, i32 4
  store %struct.aac_softc* %104, %struct.aac_softc** %106, align 8
  %107 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %108 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = inttoptr i64 %109 to i32*
  %111 = load i32, i32* %7, align 4
  %112 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %113 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = mul nsw i32 %111, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %110, i64 %116
  %118 = bitcast i32* %117 to %struct.aac_fib*
  %119 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %120 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %119, i32 0, i32 3
  store %struct.aac_fib* %118, %struct.aac_fib** %120, align 8
  %121 = load i64, i64* %6, align 8
  %122 = load i32, i32* %7, align 4
  %123 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %124 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = mul nsw i32 %122, %125
  %127 = sext i32 %126 to i64
  %128 = add nsw i64 %121, %127
  %129 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %130 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %129, i32 0, i32 2
  store i64 %128, i64* %130, align 8
  %131 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %132 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = inttoptr i64 %133 to %struct.aac_command*
  %135 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %136 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %135, i32 0, i32 1
  store %struct.aac_command* %134, %struct.aac_command** %136, align 8
  %137 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %138 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %137, i32 0, i32 7
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %141 = getelementptr inbounds %struct.aac_command, %struct.aac_command* %140, i32 0, i32 0
  %142 = call i32 @bus_dmamap_create(i32 %139, i32 0, i32* %141)
  store i32 %142, i32* %8, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %93
  br label %161

145:                                              ; preds = %93
  %146 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %147 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %146, i32 0, i32 5
  %148 = call i32 @mtx_lock(i32* %147)
  %149 = load %struct.aac_command*, %struct.aac_command** %4, align 8
  %150 = call i32 @aac_release_command(%struct.aac_command* %149)
  %151 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %152 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %152, align 8
  %155 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %156 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %155, i32 0, i32 5
  %157 = call i32 @mtx_unlock(i32* %156)
  br label %158

158:                                              ; preds = %145
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %7, align 4
  br label %87

161:                                              ; preds = %144, %87
  %162 = load i32, i32* %7, align 4
  %163 = icmp sgt i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %166 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %165, i32 0, i32 5
  %167 = call i32 @mtx_lock(i32* %166)
  %168 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %169 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %168, i32 0, i32 6
  %170 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %171 = load i32, i32* @fm_link, align 4
  %172 = call i32 @TAILQ_INSERT_TAIL(i32* %169, %struct.aac_fibmap* %170, i32 %171)
  %173 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %174 = load i8*, i8** @HBA_FLAGS_DBG_COMM_B, align 8
  %175 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %176 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %175, i32 0, i32 0
  %177 = load i64, i64* %176, align 8
  %178 = call i32 (%struct.aac_softc*, i8*, i8*, ...) @fwprintf(%struct.aac_softc* %173, i8* %174, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64 %177)
  %179 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %180 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %179, i32 0, i32 5
  %181 = call i32 @mtx_unlock(i32* %180)
  store i32 0, i32* %2, align 4
  br label %204

182:                                              ; preds = %161
  %183 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %184 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %183, i32 0, i32 4
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %187 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = call i32 @bus_dmamap_unload(i32 %185, i32 %188)
  %190 = load %struct.aac_softc*, %struct.aac_softc** %3, align 8
  %191 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %194 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %197 = getelementptr inbounds %struct.aac_fibmap, %struct.aac_fibmap* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @bus_dmamem_free(i32 %192, i64 %195, i32 %198)
  %200 = load %struct.aac_fibmap*, %struct.aac_fibmap** %5, align 8
  %201 = load i32, i32* @M_AACBUF, align 4
  %202 = call i32 @free(%struct.aac_fibmap* %200, i32 %201)
  %203 = load i32, i32* @ENOMEM, align 4
  store i32 %203, i32* %2, align 4
  br label %204

204:                                              ; preds = %182, %164, %48, %34, %24
  %205 = load i32, i32* %2, align 4
  ret i32 %205
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*, ...) #1

declare dso_local %struct.aac_fibmap* @malloc(i32, i32, i32) #1

declare dso_local i64 @bus_dmamem_alloc(i32, i8**, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @free(%struct.aac_fibmap*, i32) #1

declare dso_local i32 @bus_dmamap_load(i32, i32, i64, i32, i32, i64*, i32) #1

declare dso_local i32 @bzero(i64, i32) #1

declare dso_local i32 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aac_release_command(%struct.aac_command*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.aac_fibmap*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
