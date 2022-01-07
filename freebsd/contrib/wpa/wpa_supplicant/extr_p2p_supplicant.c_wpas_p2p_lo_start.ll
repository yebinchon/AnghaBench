; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_lo_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_lo_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.p2p_data* }
%struct.p2p_data = type { i32 }
%struct.wpabuf = type { i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"P2P Listen offload is already started\00", align 1
@WPA_DRIVER_FLAGS_P2P_LISTEN_OFFLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"P2P: Listen offload not supported\00", align 1
@MSG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"P2P: Input channel not supported: %u\00", align 1
@WPS_DEV_TYPE_LEN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [40 x i8] c"P2P: Failed to start P2P listen offload\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wpas_p2p_lo_start(%struct.wpa_supplicant* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.wpa_supplicant*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.p2p_data*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.wpabuf*, align 8
  %16 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 3
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.p2p_data*, %struct.p2p_data** %20, align 8
  store %struct.p2p_data* %21, %struct.p2p_data** %12, align 8
  %22 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %23 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %28 = load i32, i32* @MSG_DEBUG, align 4
  %29 = call i32 @wpa_dbg(%struct.wpa_supplicant* %27, i32 %28, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %142

30:                                               ; preds = %5
  %31 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %32 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %31, i32 0, i32 3
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.p2p_data*, %struct.p2p_data** %34, align 8
  %36 = icmp eq %struct.p2p_data* %35, null
  br i1 %36, label %44, label %37

37:                                               ; preds = %30
  %38 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %39 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @WPA_DRIVER_FLAGS_P2P_LISTEN_OFFLOAD, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %37, %30
  %45 = load i32, i32* @MSG_DEBUG, align 4
  %46 = call i32 (i32, i8*, ...) @wpa_printf(i32 %45, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %6, align 4
  br label %142

47:                                               ; preds = %37
  %48 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %49 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %48, i32 0, i32 3
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load %struct.p2p_data*, %struct.p2p_data** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @p2p_supported_freq(%struct.p2p_data* %52, i32 %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %47
  %57 = load i32, i32* @MSG_ERROR, align 4
  %58 = load i32, i32* %8, align 4
  %59 = call i32 (i32, i8*, ...) @wpa_printf(i32 %57, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32 %58)
  store i32 -1, i32* %6, align 4
  br label %142

60:                                               ; preds = %47
  %61 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %62 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %61, i32 0, i32 2
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  %67 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %68 = mul nsw i32 %66, %67
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %14, align 8
  %70 = load i64, i64* %14, align 8
  %71 = call i32* @os_malloc(i64 %70)
  store i32* %71, i32** %13, align 8
  %72 = load i32*, i32** %13, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %75, label %74

74:                                               ; preds = %60
  store i32 -1, i32* %6, align 4
  br label %142

75:                                               ; preds = %60
  %76 = load i32*, i32** %13, align 8
  %77 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %78 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %83 = call i32 @os_memcpy(i32* %76, i32 %81, i32 %82)
  %84 = load i32*, i32** %13, align 8
  %85 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %89 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %88, i32 0, i32 2
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %94 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @WPS_DEV_TYPE_LEN, align 4
  %99 = mul nsw i32 %97, %98
  %100 = call i32 @os_memcpy(i32* %87, i32 %92, i32 %99)
  %101 = load %struct.p2p_data*, %struct.p2p_data** %12, align 8
  %102 = load i32, i32* %8, align 4
  %103 = call %struct.wpabuf* @p2p_build_probe_resp_template(%struct.p2p_data* %101, i32 %102)
  store %struct.wpabuf* %103, %struct.wpabuf** %15, align 8
  %104 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %105 = icmp ne %struct.wpabuf* %104, null
  br i1 %105, label %109, label %106

106:                                              ; preds = %75
  %107 = load i32*, i32** %13, align 8
  %108 = call i32 @os_free(i32* %107)
  store i32 -1, i32* %6, align 4
  br label %142

109:                                              ; preds = %75
  %110 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %9, align 4
  %113 = load i32, i32* %10, align 4
  %114 = load i32, i32* %11, align 4
  %115 = load i32*, i32** %13, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %118 = call i32 @wpabuf_mhead_u8(%struct.wpabuf* %117)
  %119 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %120 = call i32 @wpabuf_len(%struct.wpabuf* %119)
  %121 = call i32 @wpa_drv_p2p_lo_start(%struct.wpa_supplicant* %110, i32 %111, i32 %112, i32 %113, i32 %114, i32* %115, i64 %116, i32 %118, i32 %120)
  store i32 %121, i32* %16, align 4
  %122 = load i32, i32* %16, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %109
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %126 = load i32, i32* @MSG_DEBUG, align 4
  %127 = call i32 @wpa_dbg(%struct.wpa_supplicant* %125, i32 %126, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %128

128:                                              ; preds = %124, %109
  %129 = load i32*, i32** %13, align 8
  %130 = call i32 @os_free(i32* %129)
  %131 = load %struct.wpabuf*, %struct.wpabuf** %15, align 8
  %132 = call i32 @wpabuf_free(%struct.wpabuf* %131)
  %133 = load i32, i32* %16, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %128
  %136 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %137 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %136, i32 0, i32 0
  store i32 1, i32* %137, align 8
  %138 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %7, align 8
  %139 = call i32 @wpas_stop_listen(%struct.wpa_supplicant* %138)
  br label %140

140:                                              ; preds = %135, %128
  %141 = load i32, i32* %16, align 4
  store i32 %141, i32* %6, align 4
  br label %142

142:                                              ; preds = %140, %106, %74, %56, %44, %26
  %143 = load i32, i32* %6, align 4
  ret i32 %143
}

declare dso_local i32 @wpa_dbg(%struct.wpa_supplicant*, i32, i8*) #1

declare dso_local i32 @wpa_printf(i32, i8*, ...) #1

declare dso_local i32 @p2p_supported_freq(%struct.p2p_data*, i32) #1

declare dso_local i32* @os_malloc(i64) #1

declare dso_local i32 @os_memcpy(i32*, i32, i32) #1

declare dso_local %struct.wpabuf* @p2p_build_probe_resp_template(%struct.p2p_data*, i32) #1

declare dso_local i32 @os_free(i32*) #1

declare dso_local i32 @wpa_drv_p2p_lo_start(%struct.wpa_supplicant*, i32, i32, i32, i32, i32*, i64, i32, i32) #1

declare dso_local i32 @wpabuf_mhead_u8(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpas_stop_listen(%struct.wpa_supplicant*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
