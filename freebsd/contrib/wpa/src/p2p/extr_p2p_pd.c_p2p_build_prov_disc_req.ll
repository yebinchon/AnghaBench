; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2p_build_prov_disc_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_pd.c_p2p_build_prov_disc_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32, i64*, i64, %struct.TYPE_5__*, %struct.TYPE_4__*, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.p2p_device = type { i32, i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@VENDOR_ELEM_P2P_PD_REQ = common dso_local global i64 0, align 8
@P2P_PROV_DISC_REQ = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_CROSS_CONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_INTRA_BSS_DIST = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*, i32)* @p2p_build_prov_disc_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_prov_disc_req(%struct.p2p_data* %0, %struct.p2p_device* %1, i32 %2) #0 {
  %4 = alloca %struct.wpabuf*, align 8
  %5 = alloca %struct.p2p_data*, align 8
  %6 = alloca %struct.p2p_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.wpabuf*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.p2p_device*, align 8
  %14 = alloca i32, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %5, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %15 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %16 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %19 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  br label %26

25:                                               ; preds = %3
  br label %26

26:                                               ; preds = %25, %23
  %27 = phi %struct.p2p_device* [ %24, %23 ], [ null, %25 ]
  store %struct.p2p_device* %27, %struct.p2p_device** %13, align 8
  %28 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %29 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %28, i32 0, i32 1
  %30 = load i64*, i64** %29, align 8
  %31 = icmp ne i64* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %26
  %33 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @VENDOR_ELEM_P2P_PD_REQ, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %32
  %41 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %42 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %41, i32 0, i32 1
  %43 = load i64*, i64** %42, align 8
  %44 = load i64, i64* @VENDOR_ELEM_P2P_PD_REQ, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i64 @wpabuf_len(i64 %46)
  %48 = load i64, i64* %10, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %10, align 8
  br label %50

50:                                               ; preds = %40, %32, %26
  %51 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %52 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %51, i32 0, i32 3
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %57 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %56, i32 0, i32 3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @os_strlen(i32 %60)
  %62 = add nsw i64 %61, 1
  %63 = add i64 %62, 4
  %64 = load i64, i64* %10, align 8
  %65 = add i64 %64, %63
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %55, %50
  %67 = load i64, i64* %10, align 8
  %68 = add i64 1000, %67
  %69 = trunc i64 %68 to i32
  %70 = call %struct.wpabuf* @wpabuf_alloc(i32 %69)
  store %struct.wpabuf* %70, %struct.wpabuf** %8, align 8
  %71 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %72 = icmp eq %struct.wpabuf* %71, null
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  store %struct.wpabuf* null, %struct.wpabuf** %4, align 8
  br label %182

74:                                               ; preds = %66
  %75 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %76 = load i32, i32* @P2P_PROV_DISC_REQ, align 4
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %75, i32 %76, i32 %77)
  %79 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %80 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %79)
  store i32* %80, i32** %9, align 8
  store i32 0, i32* %14, align 4
  %81 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %82 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %81, i32 0, i32 3
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = icmp ne %struct.TYPE_5__* %83, null
  br i1 %84, label %85, label %112

85:                                               ; preds = %74
  %86 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_GROUP, align 4
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_RECONN, align 4
  %90 = load i32, i32* %14, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %14, align 4
  %92 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %93 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %85
  %97 = load i32, i32* @P2P_GROUP_CAPAB_CROSS_CONN, align 4
  %98 = load i32, i32* %14, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %14, align 4
  br label %100

100:                                              ; preds = %96, %85
  %101 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %102 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %111

107:                                              ; preds = %100
  %108 = load i32, i32* @P2P_GROUP_CAPAB_INTRA_BSS_DIST, align 4
  %109 = load i32, i32* %14, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %14, align 4
  br label %111

111:                                              ; preds = %107, %100
  br label %112

112:                                              ; preds = %111, %74
  %113 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %114 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %115 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %118 = xor i32 %117, -1
  %119 = and i32 %116, %118
  %120 = load i32, i32* %14, align 4
  %121 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %113, i32 %119, i32 %120)
  %122 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %123 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %124 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %122, %struct.p2p_data* %123, i32* null)
  %125 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %126 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = icmp ne %struct.TYPE_5__* %127, null
  br i1 %128, label %129, label %135

129:                                              ; preds = %112
  %130 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %131 = load %struct.p2p_device*, %struct.p2p_device** %6, align 8
  %132 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %133 = load i32, i32* %12, align 4
  %134 = call i32 @p2ps_add_pd_req_attrs(%struct.p2p_data* %130, %struct.p2p_device* %131, %struct.wpabuf* %132, i32 %133)
  br label %152

135:                                              ; preds = %112
  %136 = load %struct.p2p_device*, %struct.p2p_device** %13, align 8
  %137 = icmp ne %struct.p2p_device* %136, null
  br i1 %137, label %138, label %151

138:                                              ; preds = %135
  %139 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %140 = load %struct.p2p_device*, %struct.p2p_device** %13, align 8
  %141 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.p2p_device*, %struct.p2p_device** %13, align 8
  %145 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.p2p_device*, %struct.p2p_device** %13, align 8
  %148 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @p2p_buf_add_group_id(%struct.wpabuf* %139, i32 %143, i32 %146, i32 %149)
  br label %151

151:                                              ; preds = %138, %135
  br label %152

152:                                              ; preds = %151, %129
  %153 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %153, i32* %154)
  %156 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %157 = load i32, i32* %12, align 4
  %158 = call i32 @p2p_build_wps_ie_config_methods(%struct.wpabuf* %156, i32 %157)
  %159 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %160 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = icmp ne i64* %161, null
  br i1 %162, label %163, label %180

163:                                              ; preds = %152
  %164 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %165 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %164, i32 0, i32 1
  %166 = load i64*, i64** %165, align 8
  %167 = load i64, i64* @VENDOR_ELEM_P2P_PD_REQ, align 8
  %168 = getelementptr inbounds i64, i64* %166, i64 %167
  %169 = load i64, i64* %168, align 8
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %163
  %172 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  %173 = load %struct.p2p_data*, %struct.p2p_data** %5, align 8
  %174 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* @VENDOR_ELEM_P2P_PD_REQ, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = call i32 @wpabuf_put_buf(%struct.wpabuf* %172, i64 %178)
  br label %180

180:                                              ; preds = %171, %163, %152
  %181 = load %struct.wpabuf*, %struct.wpabuf** %8, align 8
  store %struct.wpabuf* %181, %struct.wpabuf** %4, align 8
  br label %182

182:                                              ; preds = %180, %73
  %183 = load %struct.wpabuf*, %struct.wpabuf** %4, align 8
  ret %struct.wpabuf* %183
}

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local i64 @os_strlen(i32) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, i32*) #1

declare dso_local i32 @p2ps_add_pd_req_attrs(%struct.p2p_data*, %struct.p2p_device*, %struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_group_id(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_build_wps_ie_config_methods(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
