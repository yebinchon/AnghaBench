; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_join_scan_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_join_scan_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { i64, i32, i64, i32 (%struct.wpa_supplicant*, i32*)*, i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.wpa_driver_scan_params = type { i32, i32*, i32, i32, i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32* }
%struct.wpabuf = type { i32 }

@P2P_WILDCARD_SSID = common dso_local global i64 0, align 8
@P2P_WILDCARD_SSID_LEN = common dso_local global i64 0, align 8
@DEV_PW_DEFAULT = common dso_local global i32 0, align 4
@WPS_REQ_ENROLLEE = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Request driver to clear scan cache due to local BSS flush\00", align 1
@.str.1 = private unnamed_addr constant [53 x i8] c"P2P: Failed to start scan for join - try again later\00", align 1
@wpas_p2p_join_scan = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32, i32*, i64)* @wpas_p2p_join_scan_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_join_scan_req(%struct.wpa_supplicant* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_driver_scan_params, align 8
  %11 = alloca %struct.wpabuf*, align 8
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i64, align 8
  %14 = alloca [2 x i32], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %17 = bitcast [2 x i32]* %14 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %17, i8 0, i64 8, i1 false)
  %18 = call i32 @os_memset(%struct.wpa_driver_scan_params* %10, i32 0, i32 48)
  %19 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %45

22:                                               ; preds = %4
  %23 = load i64, i64* %8, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load i32*, i32** %7, align 8
  %27 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 6
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i32* %26, i32** %30, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  store i64 %31, i64* %35, align 8
  %36 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %37 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 8
  %39 = load i32*, i32** %7, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 @os_memcpy(i32 %38, i32* %39, i64 %40)
  %42 = load i64, i64* %8, align 8
  %43 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %44 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  br label %59

45:                                               ; preds = %22, %4
  %46 = load i64, i64* @P2P_WILDCARD_SSID, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 6
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i64 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  store i32* %47, i32** %51, align 8
  %52 = load i64, i64* @P2P_WILDCARD_SSID_LEN, align 8
  %53 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 6
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  store i64 %52, i64* %56, align 8
  %57 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %58 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %57, i32 0, i32 0
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %45, %25
  %60 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %61 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %60, i32 0, i32 7
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  store i32 1, i32* %64, align 4
  %65 = load i32, i32* @DEV_PW_DEFAULT, align 4
  %66 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %66, i32 0, i32 7
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %71 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %70, i32 0, i32 7
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @WPS_REQ_ENROLLEE, align 4
  %76 = call %struct.wpabuf* @wps_build_probe_req_ie(i32 %65, %struct.TYPE_8__* %69, i32 %74, i32 %75, i32 0, i32* null)
  store %struct.wpabuf* %76, %struct.wpabuf** %11, align 8
  %77 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %78 = icmp eq %struct.wpabuf* %77, null
  br i1 %78, label %79, label %82

79:                                               ; preds = %59
  %80 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %81 = call i32 @wpas_p2p_scan_res_join(%struct.wpa_supplicant* %80, i32* null)
  br label %190

82:                                               ; preds = %59
  %83 = load i32, i32* %6, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %100, label %85

85:                                               ; preds = %82
  %86 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %87 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %86, i32 0, i32 5
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %92 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %91, i32 0, i32 6
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @p2p_get_oper_freq(i32 %90, i32 %93)
  store i32 %94, i32* %16, align 4
  %95 = load i32, i32* %16, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %85
  %98 = load i32, i32* %16, align 4
  store i32 %98, i32* %6, align 4
  br label %99

99:                                               ; preds = %97, %85
  br label %100

100:                                              ; preds = %99, %82
  %101 = load i32, i32* %6, align 4
  %102 = icmp sgt i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %100
  %104 = load i32, i32* %6, align 4
  %105 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  store i32 %104, i32* %105, align 4
  %106 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %107 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 1
  store i32* %106, i32** %107, align 8
  br label %108

108:                                              ; preds = %103, %100
  %109 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %110 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %109, i32 0, i32 5
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i64 @p2p_scan_ie_buf_len(i32 %113)
  store i64 %114, i64* %13, align 8
  %115 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %116 = call i64 @wpabuf_len(%struct.wpabuf* %115)
  %117 = load i64, i64* %13, align 8
  %118 = add i64 %116, %117
  %119 = call %struct.wpabuf* @wpabuf_alloc(i64 %118)
  store %struct.wpabuf* %119, %struct.wpabuf** %12, align 8
  %120 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %121 = icmp eq %struct.wpabuf* %120, null
  br i1 %121, label %122, label %127

122:                                              ; preds = %108
  %123 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %124 = call i32 @wpabuf_free(%struct.wpabuf* %123)
  %125 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %126 = call i32 @wpas_p2p_scan_res_join(%struct.wpa_supplicant* %125, i32* null)
  br label %190

127:                                              ; preds = %108
  %128 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %129 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %130 = call i32 @wpabuf_put_buf(%struct.wpabuf* %128, %struct.wpabuf* %129)
  %131 = load %struct.wpabuf*, %struct.wpabuf** %11, align 8
  %132 = call i32 @wpabuf_free(%struct.wpabuf* %131)
  %133 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %134 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %135 = call i32 @wpas_get_bands(%struct.wpa_supplicant* %133, i32* %134)
  store i32 %135, i32* %15, align 4
  %136 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %137 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %136, i32 0, i32 5
  %138 = load %struct.TYPE_7__*, %struct.TYPE_7__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %142 = load i32, i32* %15, align 4
  %143 = call i32 @p2p_scan_ie(i32 %140, %struct.wpabuf* %141, i32* null, i32 %142)
  %144 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 2
  store i32 1, i32* %144, align 8
  %145 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %146 = call i32 @wpabuf_head(%struct.wpabuf* %145)
  %147 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 5
  store i32 %146, i32* %147, align 8
  %148 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %149 = call i64 @wpabuf_len(%struct.wpabuf* %148)
  %150 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 4
  store i64 %149, i64* %150, align 8
  %151 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %152 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %127
  %156 = load i32, i32* @MSG_DEBUG, align 4
  %157 = call i32 @wpa_printf(i32 %156, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  %158 = getelementptr inbounds %struct.wpa_driver_scan_params, %struct.wpa_driver_scan_params* %10, i32 0, i32 3
  store i32 1, i32* %158, align 4
  br label %159

159:                                              ; preds = %155, %127
  %160 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %161 = call i32 @wpa_drv_scan(%struct.wpa_supplicant* %160, %struct.wpa_driver_scan_params* %10)
  store i32 %161, i32* %9, align 4
  %162 = load i32, i32* %9, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %174, label %164

164:                                              ; preds = %159
  %165 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %166 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %165, i32 0, i32 4
  %167 = call i32 @os_get_reltime(i32* %166)
  %168 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %169 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %168, i32 0, i32 3
  store i32 (%struct.wpa_supplicant*, i32*)* @wpas_p2p_scan_res_join, i32 (%struct.wpa_supplicant*, i32*)** %169, align 8
  %170 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %171 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %170, i32 0, i32 1
  store i32 1, i32* %171, align 8
  %172 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %173 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %172, i32 0, i32 2
  store i64 0, i64* %173, align 8
  br label %174

174:                                              ; preds = %164, %159
  %175 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %176 = call i32 @wpabuf_free(%struct.wpabuf* %175)
  %177 = load i32, i32* %9, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %190

179:                                              ; preds = %174
  %180 = load i32, i32* @MSG_DEBUG, align 4
  %181 = call i32 @wpa_printf(i32 %180, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0))
  %182 = load i32, i32* @wpas_p2p_join_scan, align 4
  %183 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %184 = call i32 @eloop_cancel_timeout(i32 %182, %struct.wpa_supplicant* %183, i32* null)
  %185 = load i32, i32* @wpas_p2p_join_scan, align 4
  %186 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %187 = call i32 @eloop_register_timeout(i32 1, i32 0, i32 %185, %struct.wpa_supplicant* %186, i32* null)
  %188 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %189 = call i32 @wpas_p2p_check_join_scan_limit(%struct.wpa_supplicant* %188)
  br label %190

190:                                              ; preds = %79, %122, %179, %174
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @os_memset(%struct.wpa_driver_scan_params*, i32, i32) #2

declare dso_local i32 @os_memcpy(i32, i32*, i64) #2

declare dso_local %struct.wpabuf* @wps_build_probe_req_ie(i32, %struct.TYPE_8__*, i32, i32, i32, i32*) #2

declare dso_local i32 @wpas_p2p_scan_res_join(%struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @p2p_get_oper_freq(i32, i32) #2

declare dso_local i64 @p2p_scan_ie_buf_len(i32) #2

declare dso_local %struct.wpabuf* @wpabuf_alloc(i64) #2

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #2

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #2

declare dso_local i32 @wpas_get_bands(%struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @p2p_scan_ie(i32, %struct.wpabuf*, i32*, i32) #2

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #2

declare dso_local i32 @wpa_printf(i32, i8*) #2

declare dso_local i32 @wpa_drv_scan(%struct.wpa_supplicant*, %struct.wpa_driver_scan_params*) #2

declare dso_local i32 @os_get_reltime(i32*) #2

declare dso_local i32 @eloop_cancel_timeout(i32, %struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @eloop_register_timeout(i32, i32, i32, %struct.wpa_supplicant*, i32*) #2

declare dso_local i32 @wpas_p2p_check_join_scan_limit(%struct.wpa_supplicant*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
