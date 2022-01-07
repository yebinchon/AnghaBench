; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_describe_controller.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/aac/extr_aac.c_aac_describe_controller.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_softc = type { i32, i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8*, i32, i32 }
%struct.aac_fib = type { i64* }
%struct.aac_adapter_info = type { i32, i32, i32, i32, %struct.TYPE_6__, i32, i32, i32 }
%struct.aac_supplement_adapter_info = type { i8* }

@.str = private unnamed_addr constant [24 x i8] c"Adaptec RAID controller\00", align 1
@HBA_FLAGS_DBG_FUNCTION_ENTRY_B = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@RequestAdapterInfo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"RequestAdapterInfo failed\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [56 x i8] c"%s %dMHz, %dMB memory (%dMB cache, %dMB execution), %s\0A\00", align 1
@aac_cpu_variant = common dso_local global i32 0, align 4
@aac_battery_platform = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [36 x i8] c"Kernel %d.%d-%d, Build %d, S/N %6X\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Supported Options=%b\0A\00", align 1
@.str.6 = private unnamed_addr constant [164 x i8] c"\10\01SNAPSHOT\02CLUSTERS\03WCACHE\04DATA64\05HOSTTIME\06RAID50\07WINDOW4GB\08SCSIUPGD\09SOFTERR\0ANORECOND\0BSGMAP64\0CALARM\0DNONDASD\0ESCSIMGT\0FRAIDSCSI\11ADPTINFO\12NEWCOMM\13ARRAY64BIT\14HEATSENSOR\00", align 1
@AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO = common dso_local global i32 0, align 4
@RequestSupplementAdapterInfo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [37 x i8] c"RequestSupplementAdapterInfo failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"%s, aac driver %d.%d.%d-%d\0A\00", align 1
@AAC_DRIVER_MAJOR_VERSION = common dso_local global i32 0, align 4
@AAC_DRIVER_MINOR_VERSION = common dso_local global i32 0, align 4
@AAC_DRIVER_BUGFIX_LEVEL = common dso_local global i32 0, align 4
@AAC_DRIVER_BUILD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_softc*)* @aac_describe_controller to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aac_describe_controller(%struct.aac_softc* %0) #0 {
  %2 = alloca %struct.aac_softc*, align 8
  %3 = alloca %struct.aac_fib*, align 8
  %4 = alloca %struct.aac_adapter_info*, align 8
  %5 = alloca i8*, align 8
  store %struct.aac_softc* %0, %struct.aac_softc** %2, align 8
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8** %5, align 8
  %6 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %7 = load i8*, i8** @HBA_FLAGS_DBG_FUNCTION_ENTRY_B, align 8
  %8 = call i32 @fwprintf(%struct.aac_softc* %6, i8* %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %9 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %10 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %9, i32 0, i32 1
  %11 = call i32 @mtx_lock(i32* %10)
  %12 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %13 = call i32 @aac_alloc_sync_fib(%struct.aac_softc* %12, %struct.aac_fib** %3)
  %14 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %15 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 0
  store i64 0, i64* %17, align 8
  %18 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %19 = load i32, i32* @RequestAdapterInfo, align 4
  %20 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %21 = call i64 @aac_sync_fib(%struct.aac_softc* %18, i32 %19, i32 0, %struct.aac_fib* %20, i32 1)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %1
  %24 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %25 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i32 (i32, i8*, ...) @device_printf(i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %28 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %29 = call i32 @aac_release_sync_fib(%struct.aac_softc* %28)
  %30 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %31 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %30, i32 0, i32 1
  %32 = call i32 @mtx_unlock(i32* %31)
  br label %160

33:                                               ; preds = %1
  %34 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %35 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  %38 = bitcast i64* %37 to %struct.aac_adapter_info*
  store %struct.aac_adapter_info* %38, %struct.aac_adapter_info** %4, align 8
  %39 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %40 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %39, i32 0, i32 3
  %41 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %42 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %41, i32 0, i32 4
  %43 = bitcast %struct.TYPE_6__* %40 to i8*
  %44 = bitcast %struct.TYPE_6__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 24, i1 false)
  %45 = load i64, i64* @bootverbose, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %114

47:                                               ; preds = %33
  %48 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %49 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @aac_cpu_variant, align 4
  %52 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %53 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @aac_describe_code(i32 %51, i32 %54)
  %56 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %57 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %56, i32 0, i32 6
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %60 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sdiv i32 %61, 1048576
  %63 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %64 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sdiv i32 %65, 1048576
  %67 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %68 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %69, 1048576
  %71 = load i32, i32* @aac_battery_platform, align 4
  %72 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %73 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @aac_describe_code(i32 %71, i32 %74)
  %76 = call i32 (i32, i8*, ...) @device_printf(i32 %50, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32 %58, i32 %62, i32 %66, i32 %70, i32 %75)
  %77 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %78 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %81 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %87 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %93 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %92, i32 0, i32 4
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %99 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.aac_adapter_info*, %struct.aac_adapter_info** %4, align 8
  %103 = getelementptr inbounds %struct.aac_adapter_info, %struct.aac_adapter_info* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = and i32 %104, 16777215
  %106 = call i32 (i32, i8*, ...) @device_printf(i32 %79, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %85, i32 %91, i32 %97, i32 %101, i32 %105)
  %107 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %108 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %111 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 (i32, i8*, ...) @device_printf(i32 %109, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %112, i8* getelementptr inbounds ([164 x i8], [164 x i8]* @.str.6, i64 0, i64 0))
  br label %114

114:                                              ; preds = %47, %33
  %115 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %116 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @AAC_SUPPORTED_SUPPLEMENT_ADAPTER_INFO, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %145

121:                                              ; preds = %114
  %122 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %123 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %122, i32 0, i32 0
  %124 = load i64*, i64** %123, align 8
  %125 = getelementptr inbounds i64, i64* %124, i64 0
  store i64 0, i64* %125, align 8
  %126 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %127 = load i32, i32* @RequestSupplementAdapterInfo, align 4
  %128 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %129 = call i64 @aac_sync_fib(%struct.aac_softc* %126, i32 %127, i32 0, %struct.aac_fib* %128, i32 1)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %136

131:                                              ; preds = %121
  %132 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %133 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = call i32 (i32, i8*, ...) @device_printf(i32 %134, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.7, i64 0, i64 0))
  br label %144

136:                                              ; preds = %121
  %137 = load %struct.aac_fib*, %struct.aac_fib** %3, align 8
  %138 = getelementptr inbounds %struct.aac_fib, %struct.aac_fib* %137, i32 0, i32 0
  %139 = load i64*, i64** %138, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 0
  %141 = bitcast i64* %140 to %struct.aac_supplement_adapter_info*
  %142 = getelementptr inbounds %struct.aac_supplement_adapter_info, %struct.aac_supplement_adapter_info* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  store i8* %143, i8** %5, align 8
  br label %144

144:                                              ; preds = %136, %131
  br label %145

145:                                              ; preds = %144, %114
  %146 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %147 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i8*, i8** %5, align 8
  %150 = load i32, i32* @AAC_DRIVER_MAJOR_VERSION, align 4
  %151 = load i32, i32* @AAC_DRIVER_MINOR_VERSION, align 4
  %152 = load i32, i32* @AAC_DRIVER_BUGFIX_LEVEL, align 4
  %153 = load i32, i32* @AAC_DRIVER_BUILD, align 4
  %154 = call i32 (i32, i8*, ...) @device_printf(i32 %148, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8* %149, i32 %150, i32 %151, i32 %152, i32 %153)
  %155 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %156 = call i32 @aac_release_sync_fib(%struct.aac_softc* %155)
  %157 = load %struct.aac_softc*, %struct.aac_softc** %2, align 8
  %158 = getelementptr inbounds %struct.aac_softc, %struct.aac_softc* %157, i32 0, i32 1
  %159 = call i32 @mtx_unlock(i32* %158)
  br label %160

160:                                              ; preds = %145, %23
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
