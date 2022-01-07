; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_vht_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/drivers/extr_driver_nl80211_capa.c_nl80211_set_vht_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_hw_modes = type { i32, %struct.hostapd_channel_data* }
%struct.hostapd_channel_data = type { i32, i32 }

@HOSTAPD_CHAN_VHT_10_70 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_30_50 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_50_30 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_70_10 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_10_150 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_30_130 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_50_110 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_70_90 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_90_70 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_110_50 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_130_30 = common dso_local global i32 0, align 4
@HOSTAPD_CHAN_VHT_150_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hostapd_hw_modes*, i32, i32, i32)* @nl80211_set_vht_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nl80211_set_vht_mode(%struct.hostapd_hw_modes* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hostapd_hw_modes*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hostapd_channel_data*, align 8
  store %struct.hostapd_hw_modes* %0, %struct.hostapd_hw_modes** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %268, %4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %14 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %271

17:                                               ; preds = %11
  %18 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %5, align 8
  %19 = getelementptr inbounds %struct.hostapd_hw_modes, %struct.hostapd_hw_modes* %18, i32 0, i32 1
  %20 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %19, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %20, i64 %22
  store %struct.hostapd_channel_data* %23, %struct.hostapd_channel_data** %10, align 8
  %24 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %25 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %26, 10
  %28 = load i32, i32* %6, align 4
  %29 = icmp sge i32 %27, %28
  br i1 %29, label %30, label %43

30:                                               ; preds = %17
  %31 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %32 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 70
  %35 = load i32, i32* %7, align 4
  %36 = icmp sle i32 %34, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load i32, i32* @HOSTAPD_CHAN_VHT_10_70, align 4
  %39 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %40 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %30, %17
  %44 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %45 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = sub nsw i32 %46, 30
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %47, %48
  br i1 %49, label %50, label %63

50:                                               ; preds = %43
  %51 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %52 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 50
  %55 = load i32, i32* %7, align 4
  %56 = icmp sle i32 %54, %55
  br i1 %56, label %57, label %63

57:                                               ; preds = %50
  %58 = load i32, i32* @HOSTAPD_CHAN_VHT_30_50, align 4
  %59 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %60 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %57, %50, %43
  %64 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %65 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = sub nsw i32 %66, 50
  %68 = load i32, i32* %6, align 4
  %69 = icmp sge i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %63
  %71 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %72 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 30
  %75 = load i32, i32* %7, align 4
  %76 = icmp sle i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @HOSTAPD_CHAN_VHT_50_30, align 4
  %79 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %80 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %77, %70, %63
  %84 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %85 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = sub nsw i32 %86, 70
  %88 = load i32, i32* %6, align 4
  %89 = icmp sge i32 %87, %88
  br i1 %89, label %90, label %103

90:                                               ; preds = %83
  %91 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %92 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 10
  %95 = load i32, i32* %7, align 4
  %96 = icmp sle i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load i32, i32* @HOSTAPD_CHAN_VHT_70_10, align 4
  %99 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %100 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %98
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %97, %90, %83
  %104 = load i32, i32* %8, align 4
  %105 = icmp sge i32 %104, 160
  br i1 %105, label %106, label %267

106:                                              ; preds = %103
  %107 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %108 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = sub nsw i32 %109, 10
  %111 = load i32, i32* %6, align 4
  %112 = icmp sge i32 %110, %111
  br i1 %112, label %113, label %126

113:                                              ; preds = %106
  %114 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %115 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 150
  %118 = load i32, i32* %7, align 4
  %119 = icmp sle i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %113
  %121 = load i32, i32* @HOSTAPD_CHAN_VHT_10_150, align 4
  %122 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %123 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %113, %106
  %127 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %128 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 4
  %130 = sub nsw i32 %129, 30
  %131 = load i32, i32* %6, align 4
  %132 = icmp sge i32 %130, %131
  br i1 %132, label %133, label %146

133:                                              ; preds = %126
  %134 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %135 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 130
  %138 = load i32, i32* %7, align 4
  %139 = icmp sle i32 %137, %138
  br i1 %139, label %140, label %146

140:                                              ; preds = %133
  %141 = load i32, i32* @HOSTAPD_CHAN_VHT_30_130, align 4
  %142 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %143 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = or i32 %144, %141
  store i32 %145, i32* %143, align 4
  br label %146

146:                                              ; preds = %140, %133, %126
  %147 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %148 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = sub nsw i32 %149, 50
  %151 = load i32, i32* %6, align 4
  %152 = icmp sge i32 %150, %151
  br i1 %152, label %153, label %166

153:                                              ; preds = %146
  %154 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %155 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 110
  %158 = load i32, i32* %7, align 4
  %159 = icmp sle i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i32, i32* @HOSTAPD_CHAN_VHT_50_110, align 4
  %162 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %163 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %160, %153, %146
  %167 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %168 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = sub nsw i32 %169, 70
  %171 = load i32, i32* %6, align 4
  %172 = icmp sge i32 %170, %171
  br i1 %172, label %173, label %186

173:                                              ; preds = %166
  %174 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %175 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = add nsw i32 %176, 90
  %178 = load i32, i32* %7, align 4
  %179 = icmp sle i32 %177, %178
  br i1 %179, label %180, label %186

180:                                              ; preds = %173
  %181 = load i32, i32* @HOSTAPD_CHAN_VHT_70_90, align 4
  %182 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %183 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 4
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 4
  br label %186

186:                                              ; preds = %180, %173, %166
  %187 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %188 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = sub nsw i32 %189, 90
  %191 = load i32, i32* %6, align 4
  %192 = icmp sge i32 %190, %191
  br i1 %192, label %193, label %206

193:                                              ; preds = %186
  %194 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %195 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 70
  %198 = load i32, i32* %7, align 4
  %199 = icmp sle i32 %197, %198
  br i1 %199, label %200, label %206

200:                                              ; preds = %193
  %201 = load i32, i32* @HOSTAPD_CHAN_VHT_90_70, align 4
  %202 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %203 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = or i32 %204, %201
  store i32 %205, i32* %203, align 4
  br label %206

206:                                              ; preds = %200, %193, %186
  %207 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %208 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %209, 110
  %211 = load i32, i32* %6, align 4
  %212 = icmp sge i32 %210, %211
  br i1 %212, label %213, label %226

213:                                              ; preds = %206
  %214 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %215 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %214, i32 0, i32 0
  %216 = load i32, i32* %215, align 4
  %217 = add nsw i32 %216, 50
  %218 = load i32, i32* %7, align 4
  %219 = icmp sle i32 %217, %218
  br i1 %219, label %220, label %226

220:                                              ; preds = %213
  %221 = load i32, i32* @HOSTAPD_CHAN_VHT_110_50, align 4
  %222 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %223 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = or i32 %224, %221
  store i32 %225, i32* %223, align 4
  br label %226

226:                                              ; preds = %220, %213, %206
  %227 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %228 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 4
  %230 = sub nsw i32 %229, 130
  %231 = load i32, i32* %6, align 4
  %232 = icmp sge i32 %230, %231
  br i1 %232, label %233, label %246

233:                                              ; preds = %226
  %234 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %235 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 4
  %237 = add nsw i32 %236, 30
  %238 = load i32, i32* %7, align 4
  %239 = icmp sle i32 %237, %238
  br i1 %239, label %240, label %246

240:                                              ; preds = %233
  %241 = load i32, i32* @HOSTAPD_CHAN_VHT_130_30, align 4
  %242 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %243 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %242, i32 0, i32 1
  %244 = load i32, i32* %243, align 4
  %245 = or i32 %244, %241
  store i32 %245, i32* %243, align 4
  br label %246

246:                                              ; preds = %240, %233, %226
  %247 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %248 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %249, 150
  %251 = load i32, i32* %6, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %266

253:                                              ; preds = %246
  %254 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %255 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = add nsw i32 %256, 10
  %258 = load i32, i32* %7, align 4
  %259 = icmp sle i32 %257, %258
  br i1 %259, label %260, label %266

260:                                              ; preds = %253
  %261 = load i32, i32* @HOSTAPD_CHAN_VHT_150_10, align 4
  %262 = load %struct.hostapd_channel_data*, %struct.hostapd_channel_data** %10, align 8
  %263 = getelementptr inbounds %struct.hostapd_channel_data, %struct.hostapd_channel_data* %262, i32 0, i32 1
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  br label %266

266:                                              ; preds = %260, %253, %246
  br label %267

267:                                              ; preds = %266, %103
  br label %268

268:                                              ; preds = %267
  %269 = load i32, i32* %9, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %9, align 4
  br label %11

271:                                              ; preds = %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
