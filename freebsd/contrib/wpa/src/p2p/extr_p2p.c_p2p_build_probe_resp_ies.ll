; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_probe_resp_ies.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_build_probe_resp_ies.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32, i32, i32, i32, i64*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@VENDOR_ELEM_PROBE_RESP_P2P = common dso_local global i64 0, align 8
@MAX_SVC_ADV_IE_LEN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to build WPS IE for Probe Response\00", align 1
@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.wpabuf* @p2p_build_probe_resp_ies(%struct.p2p_data* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 -1, i32* %10, align 4
  store i64 0, i64* %11, align 8
  %12 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %13 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %12, i32 0, i32 4
  %14 = load i64*, i64** %13, align 8
  %15 = icmp ne i64* %14, null
  br i1 %15, label %16, label %34

16:                                               ; preds = %3
  %17 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %18 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %17, i32 0, i32 4
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* @VENDOR_ELEM_PROBE_RESP_P2P, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 4
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @VENDOR_ELEM_PROBE_RESP_P2P, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i64 @wpabuf_len(i64 %30)
  %32 = load i64, i64* %11, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %11, align 8
  br label %34

34:                                               ; preds = %24, %16, %3
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i64, i64* @MAX_SVC_ADV_IE_LEN, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add i64 %39, %38
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i64, i64* %11, align 8
  %43 = add i64 1000, %42
  %44 = trunc i64 %43 to i32
  %45 = call %struct.wpabuf* @wpabuf_alloc(i32 %44)
  store %struct.wpabuf* %45, %struct.wpabuf** %8, align 8
  %46 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %47 = icmp eq %struct.wpabuf* %46, null
  br i1 %47, label %48, label %49

48:                                               ; preds = %41
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %138

49:                                               ; preds = %41
  %50 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %51 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %50, i32 0, i32 6
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = icmp ne %struct.TYPE_2__* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %56 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %55, i32 0, i32 6
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @p2p_wps_method_pw_id(i32 %59)
  store i32 %60, i32* %10, align 4
  br label %61

61:                                               ; preds = %54, %49
  %62 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %63 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i64 @p2p_build_wps_ie(%struct.p2p_data* %62, %struct.wpabuf* %63, i32 %64, i32 1)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %61
  %68 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %69 = call i32 @p2p_dbg(%struct.p2p_data* %68, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %70 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %71 = call i32 @wpabuf_free(%struct.wpabuf* %70)
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %138

72:                                               ; preds = %61
  %73 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %74 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %73, i32 0, i32 4
  %75 = load i64*, i64** %74, align 8
  %76 = icmp ne i64* %75, null
  br i1 %76, label %77, label %94

77:                                               ; preds = %72
  %78 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %79 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %78, i32 0, i32 4
  %80 = load i64*, i64** %79, align 8
  %81 = load i64, i64* @VENDOR_ELEM_PROBE_RESP_P2P, align 8
  %82 = getelementptr inbounds i64, i64* %80, i64 %81
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %77
  %86 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %87 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %88 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %87, i32 0, i32 4
  %89 = load i64*, i64** %88, align 8
  %90 = load i64, i64* @VENDOR_ELEM_PROBE_RESP_P2P, align 8
  %91 = getelementptr inbounds i64, i64* %89, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @wpabuf_put_buf(%struct.wpabuf* %86, i64 %92)
  br label %94

94:                                               ; preds = %85, %77, %72
  %95 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %96 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %95)
  store i32* %96, i32** %9, align 8
  %97 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %98 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %99 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %97, i32 %103, i32 0)
  %105 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %106 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %118

109:                                              ; preds = %94
  %110 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %111 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %112 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %111, i32 0, i32 3
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %115 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf* %110, i32 %113, i32 %116)
  br label %118

118:                                              ; preds = %109, %94
  %119 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %120 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %121 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %119, %struct.p2p_data* %120, i32* null)
  %122 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %122, i32* %123)
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %136

127:                                              ; preds = %118
  %128 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %129 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %130 = load i32, i32* %7, align 4
  %131 = load i32*, i32** %6, align 8
  %132 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %133 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @p2p_buf_add_service_instance(%struct.wpabuf* %128, %struct.p2p_data* %129, i32 %130, i32* %131, i32 %134)
  br label %136

136:                                              ; preds = %127, %118
  %137 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %137, %struct.wpabuf** %4, align 8
  br label %138

138:                                              ; preds = %136, %67, %48
  %139 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %139
}

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_wps_method_pw_id(i32) #1

declare dso_local i64 @p2p_build_wps_ie(%struct.p2p_data*, %struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_buf_add_service_instance(%struct.wpabuf*, %struct.p2p_data*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
