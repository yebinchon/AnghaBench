; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_assoc_req_ie.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p.c_p2p_assoc_req_ie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.p2p_data = type { i32, i32, i32, %struct.wpabuf**, %struct.wpabuf* }
%struct.wpabuf = type { i32 }
%struct.p2p_device = type { i32 }

@VENDOR_ELEM_P2P_ASSOC_REQ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @p2p_assoc_req_ie(%struct.p2p_data* %0, i32* %1, i32* %2, i64 %3, i32 %4, %struct.wpabuf* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.p2p_data*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.wpabuf*, align 8
  %14 = alloca %struct.wpabuf*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.p2p_device*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store %struct.wpabuf* %5, %struct.wpabuf** %13, align 8
  store i64 0, i64* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %29, label %22

22:                                               ; preds = %6
  %23 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load %struct.wpabuf*, %struct.wpabuf** %13, align 8
  %28 = call i32 @p2p_assoc_req_ie_wlan_ap(%struct.p2p_data* %23, i32* %24, i32* %25, i64 %26, %struct.wpabuf* %27)
  store i32 %28, i32* %7, align 4
  br label %138

29:                                               ; preds = %6
  %30 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %31 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %30, i32 0, i32 3
  %32 = load %struct.wpabuf**, %struct.wpabuf*** %31, align 8
  %33 = icmp ne %struct.wpabuf** %32, null
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %36 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %35, i32 0, i32 3
  %37 = load %struct.wpabuf**, %struct.wpabuf*** %36, align 8
  %38 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_REQ, align 8
  %39 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %37, i64 %38
  %40 = load %struct.wpabuf*, %struct.wpabuf** %39, align 8
  %41 = icmp ne %struct.wpabuf* %40, null
  br i1 %41, label %42, label %52

42:                                               ; preds = %34
  %43 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %44 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %43, i32 0, i32 3
  %45 = load %struct.wpabuf**, %struct.wpabuf*** %44, align 8
  %46 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_REQ, align 8
  %47 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %45, i64 %46
  %48 = load %struct.wpabuf*, %struct.wpabuf** %47, align 8
  %49 = call i64 @wpabuf_len(%struct.wpabuf* %48)
  %50 = load i64, i64* %19, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %19, align 8
  br label %52

52:                                               ; preds = %42, %34, %29
  %53 = load i64, i64* %19, align 8
  %54 = add i64 200, %53
  %55 = trunc i64 %54 to i32
  %56 = call %struct.wpabuf* @wpabuf_alloc(i32 %55)
  store %struct.wpabuf* %56, %struct.wpabuf** %14, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %58 = icmp eq %struct.wpabuf* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %52
  store i32 -1, i32* %7, align 4
  br label %138

60:                                               ; preds = %52
  %61 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %62 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %61, i32 0, i32 3
  %63 = load %struct.wpabuf**, %struct.wpabuf*** %62, align 8
  %64 = icmp ne %struct.wpabuf** %63, null
  br i1 %64, label %65, label %82

65:                                               ; preds = %60
  %66 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %67 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %66, i32 0, i32 3
  %68 = load %struct.wpabuf**, %struct.wpabuf*** %67, align 8
  %69 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_REQ, align 8
  %70 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %68, i64 %69
  %71 = load %struct.wpabuf*, %struct.wpabuf** %70, align 8
  %72 = icmp ne %struct.wpabuf* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %65
  %74 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %75 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %76 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %75, i32 0, i32 3
  %77 = load %struct.wpabuf**, %struct.wpabuf*** %76, align 8
  %78 = load i64, i64* @VENDOR_ELEM_P2P_ASSOC_REQ, align 8
  %79 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %77, i64 %78
  %80 = load %struct.wpabuf*, %struct.wpabuf** %79, align 8
  %81 = call i32 @wpabuf_put_buf(%struct.wpabuf* %74, %struct.wpabuf* %80)
  br label %82

82:                                               ; preds = %73, %65, %60
  %83 = load i32*, i32** %9, align 8
  %84 = icmp ne i32* %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %82
  %86 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = call %struct.p2p_device* @p2p_get_device(%struct.p2p_data* %86, i32* %87)
  br label %90

89:                                               ; preds = %82
  br label %90

90:                                               ; preds = %89, %85
  %91 = phi %struct.p2p_device* [ %88, %85 ], [ null, %89 ]
  store %struct.p2p_device* %91, %struct.p2p_device** %16, align 8
  %92 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %93 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %92)
  store i32* %93, i32** %15, align 8
  %94 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %95 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %96 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %94, i32 %97, i32 0)
  %99 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %100 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %112

103:                                              ; preds = %90
  %104 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %105 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %106 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %109 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf* %104, i32 %107, i32 %110)
  br label %112

112:                                              ; preds = %103, %90
  %113 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %114 = load %struct.p2p_data*, %struct.p2p_data** %8, align 8
  %115 = load %struct.p2p_device*, %struct.p2p_device** %16, align 8
  %116 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %113, %struct.p2p_data* %114, %struct.p2p_device* %115)
  %117 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %118 = load i32*, i32** %15, align 8
  %119 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %117, i32* %118)
  %120 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %121 = call i64 @wpabuf_len(%struct.wpabuf* %120)
  store i64 %121, i64* %17, align 8
  %122 = load i64, i64* %17, align 8
  %123 = load i64, i64* %11, align 8
  %124 = icmp ugt i64 %122, %123
  br i1 %124, label %125, label %126

125:                                              ; preds = %112
  store i32 -1, i32* %18, align 4
  br label %134

126:                                              ; preds = %112
  %127 = load i32*, i32** %10, align 8
  %128 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %129 = call i32 @wpabuf_head(%struct.wpabuf* %128)
  %130 = load i64, i64* %17, align 8
  %131 = call i32 @os_memcpy(i32* %127, i32 %129, i64 %130)
  %132 = load i64, i64* %17, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %126, %125
  %135 = load %struct.wpabuf*, %struct.wpabuf** %14, align 8
  %136 = call i32 @wpabuf_free(%struct.wpabuf* %135)
  %137 = load i32, i32* %18, align 4
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %134, %59, %22
  %139 = load i32, i32* %7, align 4
  ret i32 %139
}

declare dso_local i32 @p2p_assoc_req_ie_wlan_ap(%struct.p2p_data*, i32*, i32*, i64, %struct.wpabuf*) #1

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local %struct.p2p_device* @p2p_get_device(%struct.p2p_data*, i32*) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, %struct.p2p_device*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @os_memcpy(i32*, i32, i64) #1

declare dso_local i32 @wpabuf_head(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
