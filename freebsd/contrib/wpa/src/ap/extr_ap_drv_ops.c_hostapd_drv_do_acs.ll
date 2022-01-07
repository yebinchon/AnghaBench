; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_drv_do_acs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_ap_drv_ops.c_hostapd_drv_do_acs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { i32, %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (i32, %struct.drv_acs_params*)* }
%struct.drv_acs_params = type { i64*, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_7__*, %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes* }
%struct.TYPE_7__ = type { i32, i64, i64, i64, i64, %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i64, i32, i32 }

@HOSTAPD_CHAN_RADAR = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_DISABLED = common dso_local global i32 0, align 4
@HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET = common dso_local global i32 0, align 4
@CHANWIDTH_80MHZ = common dso_local global i64 0, align 8
@CHANWIDTH_160MHZ = common dso_local global i64 0, align 8
@CHANWIDTH_80P80MHZ = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hostapd_drv_do_acs(%struct.hostapd_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hostapd_data*, align 8
  %4 = alloca %struct.drv_acs_params, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_hw_modes*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.hostapd_channel_data*, align 8
  %13 = alloca i64, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %3, align 8
  store i32 0, i32* %7, align 4
  store i64* null, i64** %8, align 8
  store i32 0, i32* %9, align 4
  store i32* null, i32** %11, align 8
  %14 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %15 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp eq %struct.TYPE_6__* %16, null
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %20 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %19, i32 0, i32 1
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.drv_acs_params*)*, i32 (i32, %struct.drv_acs_params*)** %22, align 8
  %24 = icmp eq i32 (i32, %struct.drv_acs_params*)* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %18, %1
  store i32 0, i32* %2, align 4
  br label %278

26:                                               ; preds = %18
  %27 = call i32 @os_memset(%struct.drv_acs_params* %4, i32 0, i32 48)
  %28 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %29 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 6
  %34 = load i32, i32* %33, align 4
  %35 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 7
  store i32 %34, i32* %35, align 8
  %36 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %37 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %36, i32 0, i32 2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 1
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 5
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %26
  store i32 1, i32* %7, align 4
  br label %46

46:                                               ; preds = %45, %26
  %47 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %48 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %47, i32 0, i32 2
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 3
  %51 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %50, align 8
  store %struct.hostapd_hw_modes* %51, %struct.hostapd_hw_modes** %10, align 8
  %52 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %53 = icmp ne %struct.hostapd_hw_modes* %52, null
  br i1 %53, label %54, label %133

54:                                               ; preds = %46
  %55 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %56 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i64* @os_malloc(i32 %57)
  store i64* %58, i64** %8, align 8
  %59 = load i64*, i64** %8, align 8
  %60 = icmp eq i64* %59, null
  br i1 %60, label %61, label %62

61:                                               ; preds = %54
  store i32 -1, i32* %2, align 4
  br label %278

62:                                               ; preds = %54
  store i32 0, i32* %6, align 4
  br label %63

63:                                               ; preds = %129, %62
  %64 = load i32, i32* %6, align 4
  %65 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %66 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %64, %67
  br i1 %68, label %69, label %132

69:                                               ; preds = %63
  %70 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %71 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %70, i32 0, i32 1
  %72 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %71, align 8
  %73 = load i32, i32* %6, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %72, i64 %74
  store %struct.hostapd_channel_data* %75, %struct.hostapd_channel_data** %12, align 8
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %91, label %78

78:                                               ; preds = %69
  %79 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %80 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %79, i32 0, i32 2
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 5
  %85 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %86 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = call i32 @freq_range_list_includes(%struct.TYPE_8__* %84, i64 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %78
  br label %129

91:                                               ; preds = %78, %69
  %92 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %93 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %92, i32 0, i32 2
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 4
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %91
  %101 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %102 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @HOSTAPD_CHAN_RADAR, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  br label %129

108:                                              ; preds = %100, %91
  %109 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %110 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @HOSTAPD_CHAN_DISABLED, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %128, label %115

115:                                              ; preds = %108
  %116 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %117 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = load i64*, i64** %8, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = zext i32 %120 to i64
  %123 = getelementptr inbounds i64, i64* %119, i64 %122
  store i64 %118, i64* %123, align 8
  %124 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %12, align 8
  %125 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @int_array_add_unique(i32** %11, i32 %126)
  br label %128

128:                                              ; preds = %115, %108
  br label %129

129:                                              ; preds = %128, %107, %90
  %130 = load i32, i32* %6, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %6, align 4
  br label %63

132:                                              ; preds = %63
  br label %159

133:                                              ; preds = %46
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %155, %133
  %135 = load i32, i32* %6, align 4
  %136 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %137 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %136, i32 0, i32 2
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp slt i32 %135, %140
  br i1 %141, label %142, label %158

142:                                              ; preds = %134
  %143 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %144 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %143, i32 0, i32 2
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 2
  %147 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %146, align 8
  %148 = load i32, i32* %6, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %147, i64 %149
  store %struct.hostapd_hw_modes* %150, %struct.hostapd_hw_modes** %10, align 8
  %151 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %152 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %153 = load i32, i32* %7, align 4
  %154 = call i32 @hostapd_get_hw_mode_any_channels(%struct.hostapd_data* %151, %struct.hostapd_hw_modes* %152, i32 %153, i32** %11)
  br label %155

155:                                              ; preds = %142
  %156 = load i32, i32* %6, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %6, align 4
  br label %134

158:                                              ; preds = %134
  br label %159

159:                                              ; preds = %158, %132
  %160 = load i64*, i64** %8, align 8
  %161 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 0
  store i64* %160, i64** %161, align 8
  %162 = load i32, i32* %9, align 4
  %163 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 1
  store i32 %162, i32* %163, align 8
  %164 = load i32*, i32** %11, align 8
  %165 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 2
  store i32* %164, i32** %165, align 8
  %166 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %167 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %166, i32 0, i32 2
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 3
  %172 = load i64, i64* %171, align 8
  %173 = icmp ne i64 %172, 0
  %174 = xor i1 %173, true
  %175 = xor i1 %174, true
  %176 = zext i1 %175 to i32
  %177 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 3
  store i32 %176, i32* %177, align 8
  %178 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %179 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %178, i32 0, i32 2
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_7__*, %struct.TYPE_7__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = load i32, i32* @HT_CAP_INFO_SUPP_CHANNEL_WIDTH_SET, align 4
  %186 = and i32 %184, %185
  %187 = icmp ne i32 %186, 0
  %188 = xor i1 %187, true
  %189 = xor i1 %188, true
  %190 = zext i1 %189 to i32
  %191 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 4
  store i32 %190, i32* %191, align 4
  %192 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %193 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %192, i32 0, i32 2
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 1
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  %200 = xor i1 %199, true
  %201 = xor i1 %200, true
  %202 = zext i1 %201 to i32
  %203 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 5
  store i32 %202, i32* %203, align 8
  %204 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 6
  store i32 20, i32* %204, align 4
  %205 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %206 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %205, i32 0, i32 2
  %207 = load %struct.TYPE_5__*, %struct.TYPE_5__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %219

213:                                              ; preds = %159
  %214 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 4
  %215 = load i32, i32* %214, align 4
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %217, label %219

217:                                              ; preds = %213
  %218 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 6
  store i32 40, i32* %218, align 4
  br label %219

219:                                              ; preds = %217, %213, %159
  %220 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %221 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %220, i32 0, i32 2
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 2
  %226 = load i64, i64* %225, align 8
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %237, label %228

228:                                              ; preds = %219
  %229 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %230 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %229, i32 0, i32 2
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 1
  %233 = load %struct.TYPE_7__*, %struct.TYPE_7__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %233, i32 0, i32 1
  %235 = load i64, i64* %234, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %265

237:                                              ; preds = %228, %219
  %238 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 4
  %239 = load i32, i32* %238, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %265

241:                                              ; preds = %237
  %242 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %243 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %242, i32 0, i32 2
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %243, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_7__*, %struct.TYPE_7__** %245, align 8
  %247 = call i64 @hostapd_get_oper_chwidth(%struct.TYPE_7__* %246)
  store i64 %247, i64* %13, align 8
  %248 = load i64, i64* %13, align 8
  %249 = load i64, i64* @CHANWIDTH_80MHZ, align 8
  %250 = icmp eq i64 %248, %249
  br i1 %250, label %251, label %253

251:                                              ; preds = %241
  %252 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 6
  store i32 80, i32* %252, align 4
  br label %264

253:                                              ; preds = %241
  %254 = load i64, i64* %13, align 8
  %255 = load i64, i64* @CHANWIDTH_160MHZ, align 8
  %256 = icmp eq i64 %254, %255
  br i1 %256, label %261, label %257

257:                                              ; preds = %253
  %258 = load i64, i64* %13, align 8
  %259 = load i64, i64* @CHANWIDTH_80P80MHZ, align 8
  %260 = icmp eq i64 %258, %259
  br i1 %260, label %261, label %263

261:                                              ; preds = %257, %253
  %262 = getelementptr inbounds %struct.drv_acs_params, %struct.drv_acs_params* %4, i32 0, i32 6
  store i32 160, i32* %262, align 4
  br label %263

263:                                              ; preds = %261, %257
  br label %264

264:                                              ; preds = %263, %251
  br label %265

265:                                              ; preds = %264, %237, %228
  %266 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %267 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %266, i32 0, i32 1
  %268 = load %struct.TYPE_6__*, %struct.TYPE_6__** %267, align 8
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i32 (i32, %struct.drv_acs_params*)*, i32 (i32, %struct.drv_acs_params*)** %269, align 8
  %271 = load %struct.hostapd_data*, %struct.hostapd_data** %3, align 8
  %272 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %271, i32 0, i32 0
  %273 = load i32, i32* %272, align 8
  %274 = call i32 %270(i32 %273, %struct.drv_acs_params* %4)
  store i32 %274, i32* %5, align 4
  %275 = load i64*, i64** %8, align 8
  %276 = call i32 @os_free(i64* %275)
  %277 = load i32, i32* %5, align 4
  store i32 %277, i32* %2, align 4
  br label %278

278:                                              ; preds = %265, %61, %25
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

declare dso_local i32 @os_memset(%struct.drv_acs_params*, i32, i32) #1

declare dso_local i64* @os_malloc(i32) #1

declare dso_local i32 @freq_range_list_includes(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @int_array_add_unique(i32**, i32) #1

declare dso_local i32 @hostapd_get_hw_mode_any_channels(%struct.hostapd_data*, %struct.hostapd_hw_modes*, i32, i32**) #1

declare dso_local i64 @hostapd_get_oper_chwidth(%struct.TYPE_7__*) #1

declare dso_local i32 @os_free(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
