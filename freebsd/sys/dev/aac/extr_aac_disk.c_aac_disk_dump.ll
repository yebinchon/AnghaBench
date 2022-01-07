; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_disk_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac_disk.c_aac_disk_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_disk = type { %struct.TYPE_7__*, %struct.aac_softc* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.aac_softc = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.aac_fib }
%struct.aac_fib = type { %struct.TYPE_8__, i32* }
%struct.TYPE_8__ = type { i64 }
%struct.disk = type { %struct.aac_disk* }
%struct.aac_blockwrite = type { i64, i64, i32, i32, i32 }
%struct.aac_blockwrite64 = type { i64, i64, i64, i64, i32, i32 }

@aac_disk_dump.dump_datamap = internal global i32 0, align 4
@aac_disk_dump.first = internal global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"bus_dmamap_create failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AAC_FLAGS_SG_64BIT = common dso_local global i32 0, align 4
@VM_CtBlockWrite = common dso_local global i32 0, align 4
@AAC_BLOCK_SIZE = common dso_local global i64 0, align 8
@CUNSTABLE = common dso_local global i32 0, align 4
@ContainerCommand = common dso_local global i32 0, align 4
@aac_dump_map_sg = common dso_local global i32* null, align 8
@VM_CtHostWrite64 = common dso_local global i32 0, align 4
@ContainerCommand64 = common dso_local global i32 0, align 4
@aac_dump_map_sg64 = common dso_local global i32* null, align 8
@BUS_DMA_NOWAIT = common dso_local global i32 0, align 4
@BUS_DMASYNC_PREWRITE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Error dumping block 0x%jx\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i64, i64, i64)* @aac_disk_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aac_disk_dump(i8* %0, i8* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.aac_disk*, align 8
  %13 = alloca %struct.aac_softc*, align 8
  %14 = alloca %struct.aac_fib*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.disk*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.aac_blockwrite*, align 8
  %22 = alloca %struct.aac_blockwrite64*, align 8
  store i8* %0, i8** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = bitcast i8* %23 to %struct.disk*
  store %struct.disk* %24, %struct.disk** %18, align 8
  %25 = load %struct.disk*, %struct.disk** %18, align 8
  %26 = getelementptr inbounds %struct.disk, %struct.disk* %25, i32 0, i32 0
  %27 = load %struct.aac_disk*, %struct.aac_disk** %26, align 8
  store %struct.aac_disk* %27, %struct.aac_disk** %12, align 8
  %28 = load %struct.aac_disk*, %struct.aac_disk** %12, align 8
  %29 = icmp eq %struct.aac_disk* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  store i32 %31, i32* %6, align 4
  br label %210

32:                                               ; preds = %5
  %33 = load %struct.aac_disk*, %struct.aac_disk** %12, align 8
  %34 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %33, i32 0, i32 1
  %35 = load %struct.aac_softc*, %struct.aac_softc** %34, align 8
  store %struct.aac_softc* %35, %struct.aac_softc** %13, align 8
  %36 = load i32, i32* @aac_disk_dump.first, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %32
  store i32 1, i32* @aac_disk_dump.first, align 4
  %39 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %40 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i64 @bus_dmamap_create(i32 %41, i32 0, i32* @aac_disk_dump.dump_datamap)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %38
  %45 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %46 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @device_printf(i32 %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  store i32 %49, i32* %6, align 4
  br label %210

50:                                               ; preds = %38
  br label %51

51:                                               ; preds = %50, %32
  %52 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %53 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %52, i32 0, i32 4
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  store %struct.aac_fib* %55, %struct.aac_fib** %14, align 8
  br label %56

56:                                               ; preds = %186, %51
  %57 = load i64, i64* %11, align 8
  %58 = icmp ugt i64 %57, 0
  br i1 %58, label %59, label %209

59:                                               ; preds = %56
  %60 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %61 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = shl i32 %62, 9
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %16, align 8
  %65 = load i64, i64* %11, align 8
  %66 = load i64, i64* %16, align 8
  %67 = icmp ugt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %59
  %69 = load i64, i64* %16, align 8
  br label %72

70:                                               ; preds = %59
  %71 = load i64, i64* %11, align 8
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i64 [ %69, %68 ], [ %71, %70 ]
  store i64 %73, i64* %15, align 8
  %74 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %75 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @AAC_FLAGS_SG_64BIT, align 4
  %78 = and i32 %76, %77
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %110

80:                                               ; preds = %72
  %81 = load %struct.aac_fib*, %struct.aac_fib** %14, align 8
  %82 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = bitcast i32* %84 to %struct.aac_blockwrite*
  store %struct.aac_blockwrite* %85, %struct.aac_blockwrite** %21, align 8
  %86 = load i32, i32* @VM_CtBlockWrite, align 4
  %87 = load %struct.aac_blockwrite*, %struct.aac_blockwrite** %21, align 8
  %88 = getelementptr inbounds %struct.aac_blockwrite, %struct.aac_blockwrite* %87, i32 0, i32 4
  store i32 %86, i32* %88, align 8
  %89 = load %struct.aac_disk*, %struct.aac_disk** %12, align 8
  %90 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %89, i32 0, i32 0
  %91 = load %struct.TYPE_7__*, %struct.TYPE_7__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.aac_blockwrite*, %struct.aac_blockwrite** %21, align 8
  %96 = getelementptr inbounds %struct.aac_blockwrite, %struct.aac_blockwrite* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 4
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @AAC_BLOCK_SIZE, align 8
  %99 = udiv i64 %97, %98
  %100 = load %struct.aac_blockwrite*, %struct.aac_blockwrite** %21, align 8
  %101 = getelementptr inbounds %struct.aac_blockwrite, %struct.aac_blockwrite* %100, i32 0, i32 0
  store i64 %99, i64* %101, align 8
  %102 = load i64, i64* %15, align 8
  %103 = load %struct.aac_blockwrite*, %struct.aac_blockwrite** %21, align 8
  %104 = getelementptr inbounds %struct.aac_blockwrite, %struct.aac_blockwrite* %103, i32 0, i32 1
  store i64 %102, i64* %104, align 8
  %105 = load i32, i32* @CUNSTABLE, align 4
  %106 = load %struct.aac_blockwrite*, %struct.aac_blockwrite** %21, align 8
  %107 = getelementptr inbounds %struct.aac_blockwrite, %struct.aac_blockwrite* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  %108 = load i32, i32* @ContainerCommand, align 4
  store i32 %108, i32* %20, align 4
  %109 = load i32*, i32** @aac_dump_map_sg, align 8
  store i32* %109, i32** %19, align 8
  store i32 32, i32* %17, align 4
  br label %143

110:                                              ; preds = %72
  %111 = load %struct.aac_fib*, %struct.aac_fib** %14, align 8
  %112 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = bitcast i32* %114 to %struct.aac_blockwrite64*
  store %struct.aac_blockwrite64* %115, %struct.aac_blockwrite64** %22, align 8
  %116 = load i32, i32* @VM_CtHostWrite64, align 4
  %117 = load %struct.aac_blockwrite64*, %struct.aac_blockwrite64** %22, align 8
  %118 = getelementptr inbounds %struct.aac_blockwrite64, %struct.aac_blockwrite64* %117, i32 0, i32 5
  store i32 %116, i32* %118, align 4
  %119 = load %struct.aac_disk*, %struct.aac_disk** %12, align 8
  %120 = getelementptr inbounds %struct.aac_disk, %struct.aac_disk* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.aac_blockwrite64*, %struct.aac_blockwrite64** %22, align 8
  %126 = getelementptr inbounds %struct.aac_blockwrite64, %struct.aac_blockwrite64* %125, i32 0, i32 4
  store i32 %124, i32* %126, align 8
  %127 = load i64, i64* %10, align 8
  %128 = load i64, i64* @AAC_BLOCK_SIZE, align 8
  %129 = udiv i64 %127, %128
  %130 = load %struct.aac_blockwrite64*, %struct.aac_blockwrite64** %22, align 8
  %131 = getelementptr inbounds %struct.aac_blockwrite64, %struct.aac_blockwrite64* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  %132 = load i64, i64* %15, align 8
  %133 = load i64, i64* @AAC_BLOCK_SIZE, align 8
  %134 = udiv i64 %132, %133
  %135 = load %struct.aac_blockwrite64*, %struct.aac_blockwrite64** %22, align 8
  %136 = getelementptr inbounds %struct.aac_blockwrite64, %struct.aac_blockwrite64* %135, i32 0, i32 1
  store i64 %134, i64* %136, align 8
  %137 = load %struct.aac_blockwrite64*, %struct.aac_blockwrite64** %22, align 8
  %138 = getelementptr inbounds %struct.aac_blockwrite64, %struct.aac_blockwrite64* %137, i32 0, i32 3
  store i64 0, i64* %138, align 8
  %139 = load %struct.aac_blockwrite64*, %struct.aac_blockwrite64** %22, align 8
  %140 = getelementptr inbounds %struct.aac_blockwrite64, %struct.aac_blockwrite64* %139, i32 0, i32 2
  store i64 0, i64* %140, align 8
  %141 = load i32, i32* @ContainerCommand64, align 4
  store i32 %141, i32* %20, align 4
  %142 = load i32*, i32** @aac_dump_map_sg64, align 8
  store i32* %142, i32** %19, align 8
  store i32 40, i32* %17, align 4
  br label %143

143:                                              ; preds = %110, %80
  %144 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %145 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @aac_disk_dump.dump_datamap, align 4
  %148 = load i8*, i8** %8, align 8
  %149 = load i64, i64* %15, align 8
  %150 = load i32*, i32** %19, align 8
  %151 = load %struct.aac_fib*, %struct.aac_fib** %14, align 8
  %152 = load i32, i32* @BUS_DMA_NOWAIT, align 4
  %153 = call i64 @bus_dmamap_load(i32 %146, i32 %147, i8* %148, i64 %149, i32* %150, %struct.aac_fib* %151, i32 %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %157

155:                                              ; preds = %143
  %156 = load i32, i32* @ENOMEM, align 4
  store i32 %156, i32* %6, align 4
  br label %210

157:                                              ; preds = %143
  %158 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %159 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @aac_disk_dump.dump_datamap, align 4
  %162 = load i32, i32* @BUS_DMASYNC_PREWRITE, align 4
  %163 = call i32 @bus_dmamap_sync(i32 %160, i32 %161, i32 %162)
  %164 = load %struct.aac_fib*, %struct.aac_fib** %14, align 8
  %165 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i32, i32* %17, align 4
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %169, %167
  %171 = trunc i64 %170 to i32
  store i32 %171, i32* %17, align 4
  %172 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %173 = load i32, i32* %20, align 4
  %174 = load %struct.aac_fib*, %struct.aac_fib** %14, align 8
  %175 = load i32, i32* %17, align 4
  %176 = call i64 @aac_sync_fib(%struct.aac_softc* %172, i32 %173, i32 0, %struct.aac_fib* %174, i32 %175)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %186

178:                                              ; preds = %157
  %179 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %180 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %179, i32 0, i32 3
  %181 = load i32, i32* %180, align 4
  %182 = load i64, i64* %9, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 (i32, i8*, ...) @device_printf(i32 %181, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %183)
  %185 = load i32, i32* @EIO, align 4
  store i32 %185, i32* %6, align 4
  br label %210

186:                                              ; preds = %157
  %187 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %188 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* @aac_disk_dump.dump_datamap, align 4
  %191 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %192 = call i32 @bus_dmamap_sync(i32 %189, i32 %190, i32 %191)
  %193 = load %struct.aac_softc*, %struct.aac_softc** %13, align 8
  %194 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %193, i32 0, i32 2
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* @aac_disk_dump.dump_datamap, align 4
  %197 = call i32 @bus_dmamap_unload(i32 %195, i32 %196)
  %198 = load i64, i64* %15, align 8
  %199 = load i64, i64* %11, align 8
  %200 = sub i64 %199, %198
  store i64 %200, i64* %11, align 8
  %201 = load i64, i64* %15, align 8
  %202 = load i64, i64* %10, align 8
  %203 = add i64 %202, %201
  store i64 %203, i64* %10, align 8
  %204 = load i8*, i8** %8, align 8
  %205 = bitcast i8* %204 to i32*
  %206 = load i64, i64* %15, align 8
  %207 = getelementptr inbounds i32, i32* %205, i64 %206
  %208 = bitcast i32* %207 to i8*
  store i8* %208, i8** %8, align 8
  br label %56

209:                                              ; preds = %56
  store i32 0, i32* %6, align 4
  br label %210

210:                                              ; preds = %209, %178, %155, %44, %30
  %211 = load i32, i32* %6, align 4
  ret i32 %211
}

declare dso_local i64 @bus_dmamap_create(i32, i32, i32*) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i64 @bus_dmamap_load(i32, i32, i8*, i64, i32*, %struct.aac_fib*, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i64 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
