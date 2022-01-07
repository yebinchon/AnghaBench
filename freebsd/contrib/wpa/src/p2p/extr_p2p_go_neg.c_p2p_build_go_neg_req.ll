; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_build_go_neg_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_build_go_neg_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32, i32, i64*, i64, i32, i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }
%struct.p2p_device = type { i32, i32, i64, i32, i32 }

@VENDOR_ELEM_P2P_GO_NEG_REQ = common dso_local global i64 0, align 8
@P2P_GO_NEG_REQ = common dso_local global i32 0, align 4
@P2P_DEV_PREFER_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_DEV_PREFER_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_CROSS_CONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_INTRA_BSS_DIST = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Failed to build WPS IE for GO Negotiation Request\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*)* @p2p_build_go_neg_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_go_neg_req(%struct.p2p_data* %0, %struct.p2p_device* %1) #0 {
  %3 = alloca %struct.wpabuf*, align 8
  %4 = alloca %struct.p2p_data*, align 8
  %5 = alloca %struct.p2p_device*, align 8
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %4, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %5, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %12 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %11, i32 0, i32 2
  %13 = load i64*, i64** %12, align 8
  %14 = icmp ne i64* %13, null
  br i1 %14, label %15, label %33

15:                                               ; preds = %2
  %16 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %17 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %16, i32 0, i32 2
  %18 = load i64*, i64** %17, align 8
  %19 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_REQ, align 8
  %20 = getelementptr inbounds i64, i64* %18, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %15
  %24 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %25 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %24, i32 0, i32 2
  %26 = load i64*, i64** %25, align 8
  %27 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_REQ, align 8
  %28 = getelementptr inbounds i64, i64* %26, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i64 @wpabuf_len(i64 %29)
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, %30
  store i64 %32, i64* %9, align 8
  br label %33

33:                                               ; preds = %23, %15, %2
  %34 = load i64, i64* %9, align 8
  %35 = add i64 1000, %34
  %36 = trunc i64 %35 to i32
  %37 = call %struct.wpabuf* @wpabuf_alloc(i32 %36)
  store %struct.wpabuf* %37, %struct.wpabuf** %6, align 8
  %38 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %39 = icmp eq %struct.wpabuf* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %239

41:                                               ; preds = %33
  %42 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %43 = load i32, i32* @P2P_GO_NEG_REQ, align 4
  %44 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %45 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %42, i32 %43, i32 %46)
  %48 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %49 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %48)
  store i32* %49, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %50 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %51 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_GROUP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %41
  %57 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_GROUP, align 4
  %58 = load i32, i32* %8, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %8, align 4
  %60 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %61 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_RECONN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %56
  %67 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_RECONN, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  br label %70

70:                                               ; preds = %66, %56
  br label %71

71:                                               ; preds = %70, %41
  %72 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %73 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %72, i32 0, i32 15
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %71
  %77 = load i32, i32* @P2P_GROUP_CAPAB_CROSS_CONN, align 4
  %78 = load i32, i32* %8, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %8, align 4
  br label %80

80:                                               ; preds = %76, %71
  %81 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %82 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %81, i32 0, i32 8
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %80
  %88 = load i32, i32* @P2P_GROUP_CAPAB_INTRA_BSS_DIST, align 4
  %89 = load i32, i32* %8, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %87, %80
  %92 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %93 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %94 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %97 = xor i32 %96, -1
  %98 = and i32 %95, %97
  %99 = load i32, i32* %8, align 4
  %100 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %92, i32 %98, i32 %99)
  %101 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %102 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %103 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 1
  %106 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %107 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %105, %108
  %110 = call i32 @p2p_buf_add_go_intent(%struct.wpabuf* %101, i32 %109)
  %111 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %112 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %113 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %112, i32 0, i32 14
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %116 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %115, i32 0, i32 13
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @p2p_buf_add_config_timeout(%struct.wpabuf* %111, i32 %114, i32 %117)
  %119 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %120 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %121 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %120, i32 0, i32 8
  %122 = load %struct.TYPE_2__*, %struct.TYPE_2__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %126 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %125, i32 0, i32 8
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %131 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %130, i32 0, i32 8
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @p2p_buf_add_listen_channel(%struct.wpabuf* %119, i32 %124, i32 %129, i32 %134)
  %136 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %137 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %136, i32 0, i32 11
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %149

140:                                              ; preds = %91
  %141 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %142 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %143 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %142, i32 0, i32 12
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %146 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %145, i32 0, i32 11
  %147 = load i32, i32* %146, align 8
  %148 = call i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf* %141, i32 %144, i32 %147)
  br label %149

149:                                              ; preds = %140, %91
  %150 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %151 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %152 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %151, i32 0, i32 10
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @p2p_buf_add_intended_addr(%struct.wpabuf* %150, i32 %153)
  %155 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %156 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %157 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %156, i32 0, i32 8
  %158 = load %struct.TYPE_2__*, %struct.TYPE_2__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %162 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %161, i32 0, i32 9
  %163 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %155, i32 %160, i32* %162)
  %164 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %165 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %166 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %167 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %164, %struct.p2p_data* %165, %struct.p2p_device* %166)
  %168 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %169 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %170 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %169, i32 0, i32 8
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %175 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %174, i32 0, i32 7
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %178 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %177, i32 0, i32 6
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %168, i32 %173, i32 %176, i32 %179)
  %181 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %182 = load i32*, i32** %7, align 8
  %183 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %181, i32* %182)
  %184 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %185 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %186 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %185, i32 0, i32 5
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %189 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %188, i32 0, i32 4
  %190 = load i32, i32* %189, align 8
  %191 = call i32 @p2p_buf_add_pref_channel_list(%struct.wpabuf* %184, i32 %187, i32 %190)
  %192 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %193 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  %195 = call i64 @p2p_wps_method_pw_id(i32 %194)
  store i64 %195, i64* %10, align 8
  %196 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %197 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %196, i32 0, i32 2
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %204

200:                                              ; preds = %149
  %201 = load %struct.p2p_device*, %struct.p2p_device** %5, align 8
  %202 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  store i64 %203, i64* %10, align 8
  br label %204

204:                                              ; preds = %200, %149
  %205 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %206 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %207 = load i64, i64* %10, align 8
  %208 = call i64 @p2p_build_wps_ie(%struct.p2p_data* %205, %struct.wpabuf* %206, i64 %207, i32 0)
  %209 = icmp slt i64 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %204
  %211 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %212 = call i32 @p2p_dbg(%struct.p2p_data* %211, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %213 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %214 = call i32 @wpabuf_free(%struct.wpabuf* %213)
  store %struct.wpabuf* null, %struct.wpabuf** %3, align 8
  br label %239

215:                                              ; preds = %204
  %216 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %217 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %216, i32 0, i32 2
  %218 = load i64*, i64** %217, align 8
  %219 = icmp ne i64* %218, null
  br i1 %219, label %220, label %237

220:                                              ; preds = %215
  %221 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %222 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %221, i32 0, i32 2
  %223 = load i64*, i64** %222, align 8
  %224 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_REQ, align 8
  %225 = getelementptr inbounds i64, i64* %223, i64 %224
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %220
  %229 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  %230 = load %struct.p2p_data*, %struct.p2p_data** %4, align 8
  %231 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %230, i32 0, i32 2
  %232 = load i64*, i64** %231, align 8
  %233 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_REQ, align 8
  %234 = getelementptr inbounds i64, i64* %232, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @wpabuf_put_buf(%struct.wpabuf* %229, i64 %235)
  br label %237

237:                                              ; preds = %228, %220, %215
  %238 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  store %struct.wpabuf* %238, %struct.wpabuf** %3, align 8
  br label %239

239:                                              ; preds = %237, %210, %40
  %240 = load %struct.wpabuf*, %struct.wpabuf** %3, align 8
  ret %struct.wpabuf* %240
}

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_go_intent(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_config_timeout(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_listen_channel(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_add_ext_listen_timing(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_intended_addr(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_channel_list(%struct.wpabuf*, i32, i32*) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, %struct.p2p_device*) #1

declare dso_local i32 @p2p_buf_add_operating_channel(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_buf_add_pref_channel_list(%struct.wpabuf*, i32, i32) #1

declare dso_local i64 @p2p_wps_method_pw_id(i32) #1

declare dso_local i64 @p2p_build_wps_ie(%struct.p2p_data*, %struct.wpabuf*, i64, i32) #1

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
