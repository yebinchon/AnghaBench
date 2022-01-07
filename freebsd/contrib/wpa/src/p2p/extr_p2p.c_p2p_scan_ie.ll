; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_scan_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_scan_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i64, i64, i64, i32, %struct.TYPE_2__*, i64*, i64 }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.wpabuf = type { i32 }

@VENDOR_ELEM_PROBE_REQ_P2P = common dso_local global i64 0, align 8
@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_SERVICE_DISCOVERY = common dso_local global i32 0, align 4
@BAND_60_GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p2p_scan_ie(%struct.p2p_data* %0, %struct.wpabuf* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %12 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %11, i32 0, i32 6
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %32

15:                                               ; preds = %4
  %16 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 6
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @VENDOR_ELEM_PROBE_REQ_P2P, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %15
  %24 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %25 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 6
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @VENDOR_ELEM_PROBE_REQ_P2P, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @wpabuf_put_buf(%struct.wpabuf* %24, i64 %30)
  br label %32

32:                                               ; preds = %23, %15, %4
  %33 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %34 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %33)
  store i32* %34, i32** %10, align 8
  %35 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %36 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  store i32 %40, i32* %9, align 4
  %41 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %42 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %32
  %46 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %47 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @P2P_DEV_CAPAB_SERVICE_DISCOVERY, align 4
  %52 = load i32, i32* %9, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %54

54:                                               ; preds = %50, %45, %32
  %55 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %55, i32 %56, i32 0)
  %58 = load i32*, i32** %7, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %54
  %61 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %62 = load i32*, i32** %7, align 8
  %63 = call i32 @p2p_buf_add_device_id(%struct.wpabuf* %61, i32* %62)
  br label %64

64:                                               ; preds = %60, %54
  %65 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 5
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %64
  %72 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %73 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %72, i32 0, i32 5
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %71
  %79 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %80 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %81 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %80, i32 0, i32 5
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %86 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %85, i32 0, i32 5
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %91 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %90, i32 0, i32 5
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = call i32 @p2p_buf_add_listen_channel(%struct.wpabuf* %79, i32 %84, i64 %89, i64 %94)
  br label %96

96:                                               ; preds = %78, %71, %64
  %97 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %98 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %110

101:                                              ; preds = %96
  %102 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %103 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %104 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %107 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %106, i32 0, i32 3
  %108 = load i64, i64* %107, align 8
  %109 = call i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf* %102, i32 %105, i64 %108)
  br label %110

110:                                              ; preds = %101, %96
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* @BAND_60_GHZ, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %117 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %118 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %116, %struct.p2p_data* %117, i32* null)
  br label %119

119:                                              ; preds = %115, %110
  %120 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %121 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %133

124:                                              ; preds = %119
  %125 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %126 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %124
  %130 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %131 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %132 = call i32 @p2p_buf_add_service_hash(%struct.wpabuf* %130, %struct.p2p_data* %131)
  br label %133

133:                                              ; preds = %129, %124, %119
  %134 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %134, i32* %135)
  ret void
}

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_device_id(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_buf_add_listen_channel(%struct.wpabuf*, i32, i64, i64) #1

declare dso_local i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf*, i32, i64) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, i32*) #1

declare dso_local i32 @p2p_buf_add_service_hash(%struct.wpabuf*, %struct.p2p_data*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
