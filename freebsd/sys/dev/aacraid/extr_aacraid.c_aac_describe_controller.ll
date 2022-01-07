; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_describe_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aacraid/extr_aacraid.c_aac_describe_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.aac_fib = type { i64* }
%struct.aac_adapter_info = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { i32, i32, i64 }

@.str = private unnamed_addr constant [24 x i8] c"Adaptec RAID controller\00", align 1
@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO = common dso_local global i32 0, align 4
@RequestSupplementAdapterInfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"RequestSupplementAdapterInfo failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"%s, aacraid driver %d.%d.%d-%d\0A\00", align 1
@AAC_DRIVER_MAJOR_VERSION = common dso_local global i32 0, align 4
@AAC_DRIVER_MINOR_VERSION = common dso_local global i32 0, align 4
@AAC_DRIVER_BUGFIX_LEVEL = common dso_local global i32 0, align 4
@AAC_DRIVER_BUILD = common dso_local global i32 0, align 4
@RequestAdapterInfo = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [27 x i8] c"RequestAdapterInfo failed\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [56 x i8] c"%s %dMHz, %dMB memory (%dMB cache, %dMB execution), %s\0A\00", align 1
@aac_cpu_variant = common dso_local global i32 0, align 4
@aac_battery_platform = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [36 x i8] c"Kernel %d.%d-%d, Build %d, S/N %6X\0A\00", align 1
@.str.7 = private unnamed_addr constant [22 x i8] c"Supported Options=%b\0A\00", align 1
@.str.8 = private unnamed_addr constant [164 x i8] c"\10\01SNAPSHOT\02CLUSTERS\03WCACHE\04DATA64\05HOSTTIME\06RAID50\07WINDOW4GB\08SCSIUPGD\09SOFTERR\0ANORECOND\0BSGMAP64\0CALARM\0DNONDASD\0ESCSIMGT\0FRAIDSCSI\11ADPTINFO\12NEWCOMM\13ARRAY64BIT\14HEATSENSOR\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_describe_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_describe_controller(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_fib*, align 8
  %4 = alloca %struct.aac_adapter_info*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.aac_supplement_adapter_info*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %7 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %8 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %9 = call i32 @fwprintf(%struct.aac_softc* %7, i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %10 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %11 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %10, i32 0, i32 1
  %12 = call i32 @mtx_lock(i32* %11)
  %13 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %14 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %13, %struct.aac_fib** %3)
  %15 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %16 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %57

21:                                               ; preds = %1
  %22 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %23 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = getelementptr inbounds i64, i64* %24, i64 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %27 = load i32, i32* @RequestSupplementAdapterInfo, align 4
  %28 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %29 = call i64 @aac_sync_fib(%struct.aac_softc* %26, i32 %27, i32 0, %struct.aac_fib* %28, i32 1)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %21
  %32 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %33 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 (i32, i8*, ...) @device_printf(i32 %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %56

36:                                               ; preds = %21
  %37 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %38 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  %41 = bitcast i64* %40 to %struct.aac_supplement_adapter_info*
  store %struct.aac_supplement_adapter_info* %41, %struct.aac_supplement_adapter_info** %6, align 8
  %42 = load %struct.aac_supplement_adapter_info*, %struct.aac_supplement_adapter_info** %6, align 8
  %43 = getelementptr inbounds %struct.aac_supplement_adapter_info, %struct.aac_supplement_adapter_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i8*
  store i8* %45, i8** %5, align 8
  %46 = load %struct.aac_supplement_adapter_info*, %struct.aac_supplement_adapter_info** %6, align 8
  %47 = getelementptr inbounds %struct.aac_supplement_adapter_info, %struct.aac_supplement_adapter_info* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %50 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  %51 = load %struct.aac_supplement_adapter_info*, %struct.aac_supplement_adapter_info** %6, align 8
  %52 = getelementptr inbounds %struct.aac_supplement_adapter_info, %struct.aac_supplement_adapter_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %55 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %54, i32 0, i32 4
  store i32 %53, i32* %55, align 4
  br label %56

56:                                               ; preds = %36, %31
  br label %57

57:                                               ; preds = %56, %1
  %58 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %59 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i8*, i8** %5, align 8
  %62 = load i32, i32* @AAC_DRIVER_MAJOR_VERSION, align 4
  %63 = load i32, i32* @AAC_DRIVER_MINOR_VERSION, align 4
  %64 = load i32, i32* @AAC_DRIVER_BUGFIX_LEVEL, align 4
  %65 = load i32, i32* @AAC_DRIVER_BUILD, align 4
  %66 = call i32 (i32, i8*, ...) @device_printf(i32 %60, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i8* %61, i32 %62, i32 %63, i32 %64, i32 %65)
  %67 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %68 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  store i64 0, i64* %70, align 8
  %71 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %72 = load i32, i32* @RequestAdapterInfo, align 4
  %73 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %74 = call i64 @aac_sync_fib(%struct.aac_softc* %71, i32 %72, i32 0, %struct.aac_fib* %73, i32 1)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %86

76:                                               ; preds = %57
  %77 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %78 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %82 = call i32 @aac_release_sync_fib(%struct.aac_softc* %81)
  %83 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %84 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %83, i32 0, i32 1
  %85 = call i32 @mtx_unlock(i32* %84)
  br label %173

86:                                               ; preds = %57
  %87 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %88 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %87, i32 0, i32 0
  %89 = load i64*, i64** %88, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 0
  %91 = bitcast i64* %90 to %struct.aac_adapter_info*
  store %struct.aac_adapter_info* %91, %struct.aac_adapter_info** %4, align 8
  %92 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %93 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %92, i32 0, i32 3
  %94 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %95 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %94, i32 0, i32 4
  %96 = bitcast %struct.TYPE_6__* %93 to i8*
  %97 = bitcast %struct.TYPE_6__* %95 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %96, i8* align 4 %97, i64 16, i1 false)
  %98 = load i64, i64* @bootverbose, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %167

100:                                              ; preds = %86
  %101 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %102 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* @aac_cpu_variant, align 4
  %105 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %106 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %105, i32 0, i32 7
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @aac_describe_code(i32 %104, i32 %107)
  %109 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %110 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %113 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = sdiv i32 %114, 1048576
  %116 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %117 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = sdiv i32 %118, 1048576
  %120 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %121 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = sdiv i32 %122, 1048576
  %124 = load i32, i32* @aac_battery_platform, align 4
  %125 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %126 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @aac_describe_code(i32 %124, i32 %127)
  %129 = call i32 (i32, i8*, ...) @device_printf(i32 %103, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %111, i32 %115, i32 %119, i32 %123, i32 %128)
  %130 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %131 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %134 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %133, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %140 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %146 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %152 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %151, i32 0, i32 4
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %156 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 16777215
  %159 = call i32 (i32, i8*, ...) @device_printf(i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %138, i32 %144, i32 %150, i32 %154, i32 %158)
  %160 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %161 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %160, i32 0, i32 2
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %164 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 (i32, i8*, ...) @device_printf(i32 %162, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.7, i64 0, i64 0), i32 %165, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.8, i64 0, i64 0))
  br label %167

167:                                              ; preds = %100, %86
  %168 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %169 = call i32 @aac_release_sync_fib(%struct.aac_softc* %168)
  %170 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %171 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %170, i32 0, i32 1
  %172 = call i32 @mtx_unlock(i32* %171)
  br label %173

173:                                              ; preds = %167, %76
  ret void
}

declare dso_local i32 @fwprintf(%struct.aac_softc*, i8*, i8*) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @aac_alloc_sync_fib(%struct.aac_softc*, %struct.aac_fib**) #1

declare dso_local i64 @aac_sync_fib(%struct.aac_softc*, i32, i32, %struct.aac_fib*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, ...) #1

declare dso_local i32 @aac_release_sync_fib(%struct.aac_softc*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @aac_describe_code(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
