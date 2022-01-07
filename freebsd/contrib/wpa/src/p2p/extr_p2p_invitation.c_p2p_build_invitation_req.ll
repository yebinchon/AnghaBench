; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_invitation.c_p2p_build_invitation_req.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/p2p/extr_p2p_invitation.c_p2p_build_invitation_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpabuf = type { i32 }
%struct.p2p_data = type { i64, i64, %struct.wpabuf**, i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32, i64, i32, i32, i64, i32, i32, %struct.p2p_group**, %struct.wpabuf* }
%struct.TYPE_4__ = type { i32*, i32 }
%struct.p2p_group = type { i32 }
%struct.p2p_device = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@VENDOR_ELEM_P2P_INV_REQ = common dso_local global i64 0, align 8
@P2P_INVITATION_REQ = common dso_local global i32 0, align 4
@P2P_INVITE_ROLE_ACTIVE_GO = common dso_local global i64 0, align 8
@P2P_INVITATION_FLAGS_TYPE = common dso_local global i32 0, align 4
@P2P_INVITE_ROLE_CLIENT = common dso_local global i64 0, align 8
@P2P_DEV_NO_PREF_CHAN = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.wpabuf* (%struct.p2p_data*, %struct.p2p_device*, i32*, i32)* @p2p_build_invitation_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.wpabuf* @p2p_build_invitation_req(%struct.p2p_data* %0, %struct.p2p_device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.wpabuf*, align 8
  %6 = alloca %struct.p2p_data*, align 8
  %7 = alloca %struct.p2p_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpabuf*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.p2p_data* %0, %struct.p2p_data** %6, align 8
  store %struct.p2p_device* %1, %struct.p2p_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 0, i64* %13, align 8
  %14 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %15 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %14, i32 0, i32 2
  %16 = load %struct.wpabuf**, %struct.wpabuf*** %15, align 8
  %17 = icmp ne %struct.wpabuf** %16, null
  br i1 %17, label %18, label %36

18:                                               ; preds = %4
  %19 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %20 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %19, i32 0, i32 2
  %21 = load %struct.wpabuf**, %struct.wpabuf*** %20, align 8
  %22 = load i64, i64* @VENDOR_ELEM_P2P_INV_REQ, align 8
  %23 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %21, i64 %22
  %24 = load %struct.wpabuf*, %struct.wpabuf** %23, align 8
  %25 = icmp ne %struct.wpabuf* %24, null
  br i1 %25, label %26, label %36

26:                                               ; preds = %18
  %27 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %28 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %27, i32 0, i32 2
  %29 = load %struct.wpabuf**, %struct.wpabuf*** %28, align 8
  %30 = load i64, i64* @VENDOR_ELEM_P2P_INV_REQ, align 8
  %31 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %29, i64 %30
  %32 = load %struct.wpabuf*, %struct.wpabuf** %31, align 8
  %33 = call i64 @wpabuf_len(%struct.wpabuf* %32)
  %34 = load i64, i64* %13, align 8
  %35 = add i64 %34, %33
  store i64 %35, i64* %13, align 8
  br label %36

36:                                               ; preds = %26, %18, %4
  %37 = load i64, i64* %13, align 8
  %38 = add i64 1000, %37
  %39 = trunc i64 %38 to i32
  %40 = call %struct.wpabuf* @wpabuf_alloc(i32 %39)
  store %struct.wpabuf* %40, %struct.wpabuf** %10, align 8
  %41 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %42 = icmp eq %struct.wpabuf* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store %struct.wpabuf* null, %struct.wpabuf** %5, align 8
  br label %224

44:                                               ; preds = %36
  %45 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %46 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 8
  %49 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %50 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %55 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %56

56:                                               ; preds = %53, %44
  %57 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %58 = load i32, i32* @P2P_INVITATION_REQ, align 4
  %59 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %60 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf* %57, i32 %58, i32 %61)
  %63 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %64 = call i32* @p2p_buf_add_ie_hdr(%struct.wpabuf* %63)
  store i32* %64, i32** %11, align 8
  %65 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %66 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @P2P_INVITE_ROLE_ACTIVE_GO, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %75, label %70

70:                                               ; preds = %56
  %71 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %72 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %71, i32 0, i32 13
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70, %56
  %76 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %77 = call i32 @p2p_buf_add_config_timeout(%struct.wpabuf* %76, i32 0, i32 0)
  br label %87

78:                                               ; preds = %70
  %79 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %80 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %81 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %84 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %83, i32 0, i32 14
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @p2p_buf_add_config_timeout(%struct.wpabuf* %79, i32 %82, i32 %85)
  br label %87

87:                                               ; preds = %78, %75
  %88 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %89 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %90 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %89, i32 0, i32 13
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %87
  %94 = load i32, i32* @P2P_INVITATION_FLAGS_TYPE, align 4
  br label %96

95:                                               ; preds = %87
  br label %96

96:                                               ; preds = %95, %93
  %97 = phi i32 [ %94, %93 ], [ 0, %95 ]
  %98 = call i32 @p2p_buf_add_invitation_flags(%struct.wpabuf* %88, i32 %97)
  %99 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %100 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @P2P_INVITE_ROLE_CLIENT, align 8
  %103 = icmp ne i64 %101, %102
  br i1 %103, label %111, label %104

104:                                              ; preds = %96
  %105 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %106 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @P2P_DEV_NO_PREF_CHAN, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %125, label %111

111:                                              ; preds = %104, %96
  %112 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %113 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %114 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %113, i32 0, i32 7
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %119 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %118, i32 0, i32 12
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %122 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %121, i32 0, i32 11
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @p2p_buf_add_operating_channel(%struct.wpabuf* %112, i32 %117, i32 %120, i32 %123)
  br label %125

125:                                              ; preds = %111, %104
  %126 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %127 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %126, i32 0, i32 10
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %136

130:                                              ; preds = %125
  %131 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %132 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %133 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %132, i32 0, i32 9
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @p2p_buf_add_group_bssid(%struct.wpabuf* %131, i32 %134)
  br label %136

136:                                              ; preds = %130, %125
  %137 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %138 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %139 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %138, i32 0, i32 7
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %144 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %143, i32 0, i32 8
  %145 = call i32 @p2p_buf_add_channel_list(%struct.wpabuf* %137, i32 %142, i32* %144)
  %146 = load i32*, i32** %8, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %150

148:                                              ; preds = %136
  %149 = load i32*, i32** %8, align 8
  store i32* %149, i32** %12, align 8
  br label %168

150:                                              ; preds = %136
  %151 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %152 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @P2P_INVITE_ROLE_CLIENT, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150
  %157 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %158 = getelementptr inbounds %struct.p2p_device, %struct.p2p_device* %157, i32 0, i32 2
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 0
  %160 = load i32*, i32** %159, align 8
  store i32* %160, i32** %12, align 8
  br label %167

161:                                              ; preds = %150
  %162 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %163 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %162, i32 0, i32 7
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  store i32* %166, i32** %12, align 8
  br label %167

167:                                              ; preds = %161, %156
  br label %168

168:                                              ; preds = %167, %148
  %169 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %170 = load i32*, i32** %12, align 8
  %171 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %172 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %171, i32 0, i32 6
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %175 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %174, i32 0, i32 5
  %176 = load i32, i32* %175, align 8
  %177 = call i32 @p2p_buf_add_group_id(%struct.wpabuf* %169, i32* %170, i32 %173, i32 %176)
  %178 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %179 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %180 = load %struct.p2p_device*, %struct.p2p_device** %7, align 8
  %181 = call i32 @p2p_buf_add_device_info(%struct.wpabuf* %178, %struct.p2p_data* %179, %struct.p2p_device* %180)
  %182 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = call i32 @p2p_buf_update_ie_hdr(%struct.wpabuf* %182, i32* %183)
  %185 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %186 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %187 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %186, i32 0, i32 4
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %190 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %189, i32 0, i32 3
  %191 = load i32, i32* %190, align 8
  %192 = call i32 @p2p_buf_add_pref_channel_list(%struct.wpabuf* %185, i32 %188, i32 %191)
  %193 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %194 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %193, i32 0, i32 2
  %195 = load %struct.wpabuf**, %struct.wpabuf*** %194, align 8
  %196 = icmp ne %struct.wpabuf** %195, null
  br i1 %196, label %197, label %214

197:                                              ; preds = %168
  %198 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %199 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %198, i32 0, i32 2
  %200 = load %struct.wpabuf**, %struct.wpabuf*** %199, align 8
  %201 = load i64, i64* @VENDOR_ELEM_P2P_INV_REQ, align 8
  %202 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %200, i64 %201
  %203 = load %struct.wpabuf*, %struct.wpabuf** %202, align 8
  %204 = icmp ne %struct.wpabuf* %203, null
  br i1 %204, label %205, label %214

205:                                              ; preds = %197
  %206 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %207 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %208 = getelementptr inbounds %struct.p2p_data, %struct.p2p_data* %207, i32 0, i32 2
  %209 = load %struct.wpabuf**, %struct.wpabuf*** %208, align 8
  %210 = load i64, i64* @VENDOR_ELEM_P2P_INV_REQ, align 8
  %211 = getelementptr inbounds %struct.wpabuf*, %struct.wpabuf** %209, i64 %210
  %212 = load %struct.wpabuf*, %struct.wpabuf** %211, align 8
  %213 = call i32 @wpabuf_put_buf(%struct.wpabuf* %206, %struct.wpabuf* %212)
  br label %214

214:                                              ; preds = %205, %197, %168
  %215 = load i32, i32* %9, align 4
  %216 = icmp sge i32 %215, 0
  br i1 %216, label %217, label %222

217:                                              ; preds = %214
  %218 = load %struct.p2p_data*, %struct.p2p_data** %6, align 8
  %219 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  %220 = load i32, i32* %9, align 4
  %221 = call i32 @p2p_build_wps_ie(%struct.p2p_data* %218, %struct.wpabuf* %219, i32 %220, i32 0)
  br label %222

222:                                              ; preds = %217, %214
  %223 = load %struct.wpabuf*, %struct.wpabuf** %10, align 8
  store %struct.wpabuf* %223, %struct.wpabuf** %5, align 8
  br label %224

224:                                              ; preds = %222, %43
  %225 = load %struct.wpabuf*, %struct.wpabuf** %5, align 8
  ret %struct.wpabuf* %225
}

declare dso_local i64 @wpabuf_len(%struct.wpabuf*) #1

declare dso_local %struct.wpabuf* @wpabuf_alloc(i32) #1

declare dso_local i32 @p2p_buf_add_public_action_hdr(%struct.wpabuf*, i32, i32) #1

declare dso_local i32* @p2p_buf_add_ie_hdr(%struct.wpabuf*) #1

declare dso_local i32 @p2p_buf_add_config_timeout(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_invitation_flags(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_operating_channel(%struct.wpabuf*, i32, i32, i32) #1

declare dso_local i32 @p2p_buf_add_group_bssid(%struct.wpabuf*, i32) #1

declare dso_local i32 @p2p_buf_add_channel_list(%struct.wpabuf*, i32, i32*) #1

declare dso_local i32 @p2p_buf_add_group_id(%struct.wpabuf*, i32*, i32, i32) #1

declare dso_local i32 @p2p_buf_add_device_info(%struct.wpabuf*, %struct.p2p_data*, %struct.p2p_device*) #1

declare dso_local i32 @p2p_buf_update_ie_hdr(%struct.wpabuf*, i32*) #1

declare dso_local i32 @p2p_buf_add_pref_channel_list(%struct.wpabuf*, i32, i32) #1

declare dso_local i32 @wpabuf_put_buf(%struct.wpabuf*, %struct.wpabuf*) #1

declare dso_local i32 @p2p_build_wps_ie(%struct.p2p_data*, %struct.wpabuf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
