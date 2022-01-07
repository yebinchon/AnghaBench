; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_build_go_neg_resp.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_go_neg.c_p2p_build_go_neg_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i32, i32, i64*, i64, i32, i32, %struct.TYPE_2__*, %struct.p2p_channels, i32, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32, i32, i64 }
%struct.p2p_channels = type { i32 }
%struct.p2p_device = type { i64, i32, i64, i32, i32 }

@.str = private unnamed_addr constant [33 x i8] c"Building GO Negotiation Response\00", align 1
@VENDOR_ELEM_P2P_GO_NEG_RESP = common dso_local global i64 0, align 8
@P2P_GO_NEG_RESP = common dso_local global i32 0, align 4
@LOCAL_GO = common dso_local global i64 0, align 8
@P2P_DEV_PREFER_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_GROUP = common dso_local global i32 0, align 4
@P2P_DEV_PREFER_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_PERSISTENT_RECONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_CROSS_CONN = common dso_local global i32 0, align 4
@P2P_GROUP_CAPAB_INTRA_BSS_DIST = common dso_local global i32 0, align 4
@P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Override operating channel preference\00", align 1
@REMOTE_GO = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [33 x i8] c"Omit Operating Channel attribute\00", align 1
@WPS_NOT_READY = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [51 x i8] c"Failed to build WPS IE for GO Negotiation Response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*, i32, i32, i32)* @p2p_build_go_neg_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_go_neg_resp(%struct.p2p_data* %0, %struct.p2p_device* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.wpabuf*, align 8
  %7 = alloca %struct.p2p_data*, align 8
  %8 = alloca %struct.p2p_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.wpabuf*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.p2p_channels, align 4
  store %struct.p2p_data* %0, %struct.p2p_data** %7, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i64 0, i64* %15, align 8
  %18 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %19 = call i32 @p2p_dbg(%struct.p2p_data* %18, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %21 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %42

24:                                               ; preds = %5
  %25 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %26 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %25, i32 0, i32 2
  %27 = load i64*, i64** %26, align 8
  %28 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_RESP, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %34 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %33, i32 0, i32 2
  %35 = load i64*, i64** %34, align 8
  %36 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_RESP, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @wpabuf_len(i64 %38)
  %40 = load i64, i64* %15, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %15, align 8
  br label %42

42:                                               ; preds = %32, %24, %5
  %43 = load i64, i64* %15, align 8
  %44 = add i64 1000, %43
  %45 = trunc i64 %44 to i32
  %46 = call %struct.wpabuf* @wpabuf_alloc(i32 %45)
  store %struct.wpabuf* %46, %struct.wpabuf** %12, align 8
  %47 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %48 = icmp eq %struct.wpabuf* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %42
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %328

50:                                               ; preds = %42
  %51 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %52 = load i32, i32* @P2P_GO_NEG_RESP, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %51, i32 %52, i32 %53)
  %55 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %56 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %55)
  store i32* %56, i32** %13, align 8
  %57 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @p2p_buf_add_status(%struct.wpabuf* %57, i32 %58)
  store i32 0, i32* %14, align 4
  %60 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %61 = icmp ne %struct.p2p_device* %60, null
  br i1 %61, label %62, label %111

62:                                               ; preds = %50
  %63 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %64 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @LOCAL_GO, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %111

68:                                               ; preds = %62
  %69 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %70 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_GROUP, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %90

75:                                               ; preds = %68
  %76 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_GROUP, align 4
  %77 = load i32, i32* %14, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %14, align 4
  %79 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %80 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @P2P_DEV_PREFER_PERSISTENT_RECONN, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %75
  %86 = load i32, i32* @P2P_GROUP_CAPAB_PERSISTENT_RECONN, align 4
  %87 = load i32, i32* %14, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %14, align 4
  br label %89

89:                                               ; preds = %85, %75
  br label %90

90:                                               ; preds = %89, %68
  %91 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %92 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %91, i32 0, i32 16
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %90
  %96 = load i32, i32* @P2P_GROUP_CAPAB_CROSS_CONN, align 4
  %97 = load i32, i32* %14, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %14, align 4
  br label %99

99:                                               ; preds = %95, %90
  %100 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %101 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %100, i32 0, i32 6
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %99
  %107 = load i32, i32* @P2P_GROUP_CAPAB_INTRA_BSS_DIST, align 4
  %108 = load i32, i32* %14, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %14, align 4
  br label %110

110:                                              ; preds = %106, %99
  br label %111

111:                                              ; preds = %110, %62, %50
  %112 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %113 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %114 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @P2P_DEV_CAPAB_CLIENT_DISCOVERABILITY, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @p2p_buf_add_capability(%struct.wpabuf* %112, i32 %118, i32 %119)
  %121 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %122 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %123 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %124, 1
  %126 = load i32, i32* %11, align 4
  %127 = or i32 %125, %126
  %128 = call i32 @p2p_buf_add_go_intent(%struct.wpabuf* %121, i32 %127)
  %129 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %130 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %131 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %130, i32 0, i32 15
  %132 = load i32, i32* %131, align 8
  %133 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %134 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %133, i32 0, i32 14
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @p2p_buf_add_config_timeout(%struct.wpabuf* %129, i32 %132, i32 %135)
  %137 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %138 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %137, i32 0, i32 13
  %139 = load i32, i32* %138, align 8
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %157

141:                                              ; preds = %111
  %142 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %143 = call i32 @p2p_dbg(%struct.p2p_data* %142, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %144 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %145 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %146 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %145, i32 0, i32 6
  %147 = load %struct.TYPE_2__*, %struct.TYPE_2__** %146, align 8
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %151 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %150, i32 0, i32 13
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %154 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %153, i32 0, i32 12
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %144, i32 %149, i32 %152, i32 %155)
  br label %189

157:                                              ; preds = %111
  %158 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %159 = icmp ne %struct.p2p_device* %158, null
  br i1 %159, label %160, label %174

160:                                              ; preds = %157
  %161 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %162 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* @REMOTE_GO, align 8
  %165 = icmp eq i64 %163, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %160
  %167 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %168 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %167, i32 0, i32 11
  %169 = load i32, i32* %168, align 8
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %166
  %172 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %173 = call i32 @p2p_dbg(%struct.p2p_data* %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %188

174:                                              ; preds = %166, %160, %157
  %175 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %176 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %177 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %176, i32 0, i32 6
  %178 = load %struct.TYPE_2__*, %struct.TYPE_2__** %177, align 8
  %179 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %182 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %181, i32 0, i32 10
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %185 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %184, i32 0, i32 9
  %186 = load i32, i32* %185, align 8
  %187 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %175, i32 %180, i32 %183, i32 %186)
  br label %188

188:                                              ; preds = %174, %171
  br label %189

189:                                              ; preds = %188, %141
  %190 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %191 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %192 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %191, i32 0, i32 8
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @p2p_buf_add_intended_addr(%struct.wpabuf* %190, i32 %193)
  %195 = load i32, i32* %10, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %189
  %198 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %199 = icmp eq %struct.p2p_device* %198, null
  br i1 %199, label %200, label %210

200:                                              ; preds = %197, %189
  %201 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %202 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %203 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %202, i32 0, i32 6
  %204 = load %struct.TYPE_2__*, %struct.TYPE_2__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %208 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %207, i32 0, i32 7
  %209 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %201, i32 %206, %struct.p2p_channels* %208)
  br label %240

210:                                              ; preds = %197
  %211 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %212 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = load i64, i64* @REMOTE_GO, align 8
  %215 = icmp eq i64 %213, %214
  br i1 %215, label %216, label %226

216:                                              ; preds = %210
  %217 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %218 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %219 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %218, i32 0, i32 6
  %220 = load %struct.TYPE_2__*, %struct.TYPE_2__** %219, align 8
  %221 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %224 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %223, i32 0, i32 7
  %225 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %217, i32 %222, %struct.p2p_channels* %224)
  br label %239

226:                                              ; preds = %210
  %227 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %228 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %227, i32 0, i32 7
  %229 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %230 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %229, i32 0, i32 4
  %231 = call i32 @p2p_channels_intersect(%struct.p2p_channels* %228, i32* %230, %struct.p2p_channels* %17)
  %232 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %233 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %234 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %233, i32 0, i32 6
  %235 = load %struct.TYPE_2__*, %struct.TYPE_2__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %235, i32 0, i32 1
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %232, i32 %237, %struct.p2p_channels* %17)
  br label %239

239:                                              ; preds = %226, %216
  br label %240

240:                                              ; preds = %239, %200
  %241 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %242 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %243 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %244 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %241, %struct.p2p_data* %242, %struct.p2p_device* %243)
  %245 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %246 = icmp ne %struct.p2p_device* %245, null
  br i1 %246, label %247, label %267

247:                                              ; preds = %240
  %248 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %249 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %248, i32 0, i32 0
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @LOCAL_GO, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %267

253:                                              ; preds = %247
  %254 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %255 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %256 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %255, i32 0, i32 6
  %257 = load %struct.TYPE_2__*, %struct.TYPE_2__** %256, align 8
  %258 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 8
  %260 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %261 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %260, i32 0, i32 5
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %264 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = call i32 @p2p_buf_add_group_id(%struct.wpabuf* %254, i32 %259, i32 %262, i32 %265)
  br label %267

267:                                              ; preds = %253, %247, %240
  %268 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %269 = load i32*, i32** %13, align 8
  %270 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %268, i32* %269)
  %271 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %272 = icmp ne %struct.p2p_device* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %267
  %274 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %275 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %274, i32 0, i32 3
  %276 = load i32, i32* %275, align 8
  br label %279

277:                                              ; preds = %267
  %278 = load i32, i32* @WPS_NOT_READY, align 4
  br label %279

279:                                              ; preds = %277, %273
  %280 = phi i32 [ %276, %273 ], [ %278, %277 ]
  %281 = call i64 @p2p_wps_method_pw_id(i32 %280)
  store i64 %281, i64* %16, align 8
  %282 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %283 = icmp ne %struct.p2p_device* %282, null
  br i1 %283, label %284, label %293

284:                                              ; preds = %279
  %285 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %286 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %285, i32 0, i32 2
  %287 = load i64, i64* %286, align 8
  %288 = icmp ne i64 %287, 0
  br i1 %288, label %289, label %293

289:                                              ; preds = %284
  %290 = load %struct.p2p_device*, %struct.p2p_device** %8, align 8
  %291 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %290, i32 0, i32 2
  %292 = load i64, i64* %291, align 8
  store i64 %292, i64* %16, align 8
  br label %293

293:                                              ; preds = %289, %284, %279
  %294 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %295 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %296 = load i64, i64* %16, align 8
  %297 = call i64 @p2p_build_wps_ie(%struct.p2p_data* %294, %struct.wpabuf* %295, i64 %296, i32 0)
  %298 = icmp slt i64 %297, 0
  br i1 %298, label %299, label %304

299:                                              ; preds = %293
  %300 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %301 = call i32 @p2p_dbg(%struct.p2p_data* %300, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.3, i64 0, i64 0))
  %302 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %303 = call i32 @wpabuf_free(%struct.wpabuf* %302)
  store %struct.wpabuf* null, %struct.wpabuf** %6, align 8
  br label %328

304:                                              ; preds = %293
  %305 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %306 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %305, i32 0, i32 2
  %307 = load i64*, i64** %306, align 8
  %308 = icmp ne i64* %307, null
  br i1 %308, label %309, label %326

309:                                              ; preds = %304
  %310 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %311 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %310, i32 0, i32 2
  %312 = load i64*, i64** %311, align 8
  %313 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_RESP, align 8
  %314 = getelementptr inbounds i64, i64* %312, i64 %313
  %315 = load i64, i64* %314, align 8
  %316 = icmp ne i64 %315, 0
  br i1 %316, label %317, label %326

317:                                              ; preds = %309
  %318 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  %319 = load %struct.p2p_data*, %struct.p2p_data** %7, align 8
  %320 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %319, i32 0, i32 2
  %321 = load i64*, i64** %320, align 8
  %322 = load i64, i64* @VENDOR_ELEM_P2P_GO_NEG_RESP, align 8
  %323 = getelementptr inbounds i64, i64* %321, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = call i32 @wpabuf_put_buf(%struct.wpabuf* %318, i64 %324)
  br label %326

326:                                              ; preds = %317, %309, %304
  %327 = load %struct.wpabuf*, %struct.wpabuf** %12, align 8
  store %struct.wpabuf* %327, %struct.wpabuf** %6, align 8
  br label %328

328:                                              ; preds = %326, %299, %49
  %329 = load %struct.wpabuf*, %struct.wpabuf** %6, align 8
  ret %struct.wpabuf* %329
}

declare dso_local i32 @p2p_dbg(%struct.p2p_data*, i8*) #1

declare dso_local i64 @wpabuf_len(i64) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_status(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_capability(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_go_intent(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_config_timeout(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_operating_channel(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_add_intended_addr(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_channel_list(%struct.wpabuf*, i32, %struct.p2p_channels*) #1

declare dso_local i32 @p2p_channels_intersect(%struct.p2p_channels*, i32*, %struct.p2p_channels*) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, %struct.p2p_device*) #1

declare dso_local i32 @p2p_buf_add_group_id(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i64 @p2p_wps_method_pw_id(i32) #1

declare dso_local i64 @p2p_build_wps_ie(%struct.p2p_data*, %struct.wpabuf*, i64, i32) #1

declare dso_local i32 @wpabuf_free(%struct.wpabuf*) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
