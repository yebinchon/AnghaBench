; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_wpas_op_class_supported.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_op_classes.c_wpas_op_class_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wpa_ssid = type { i32*, i64, i64 }
%struct.oper_class_map = type { i32, i32, i32, i32, i64, i32 }
%struct.hostapd_hw_modes = type { i32 }

@__const.wpas_op_class_supported.channels = private unnamed_addr constant [6 x i32] [i32 42, i32 58, i32 106, i32 122, i32 138, i32 155], align 16
@NOT_ALLOWED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wpa_supplicant*, %struct.wpa_ssid*, %struct.oper_class_map*)* @wpas_op_class_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wpas_op_class_supported(%struct.wpa_supplicant* %0, %struct.wpa_ssid* %1, %struct.oper_class_map* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wpa_supplicant*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca %struct.oper_class_map*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.hostapd_hw_modes*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [6 x i32], align 16
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %5, align 8
  store %struct.wpa_ssid* %1, %struct.wpa_ssid** %6, align 8
  store %struct.oper_class_map* %2, %struct.oper_class_map** %7, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %18 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %5, align 8
  %22 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %26 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 8
  %28 = call %struct.hostapd_hw_modes* @get_mode(i32 %20, i32 %24, i32 %27)
  store %struct.hostapd_hw_modes* %28, %struct.hostapd_hw_modes** %10, align 8
  %29 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %30 = icmp ne %struct.hostapd_hw_modes* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %275

32:                                               ; preds = %3
  %33 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %34 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp ne i32* %35, null
  br i1 %36, label %37, label %76

37:                                               ; preds = %32
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %39 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %76

44:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  br label %45

45:                                               ; preds = %72, %44
  %46 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %47 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %15, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %75

56:                                               ; preds = %45
  %57 = load i32, i32* %15, align 4
  %58 = icmp sgt i32 %57, 4000
  br i1 %58, label %59, label %63

59:                                               ; preds = %56
  %60 = load i32, i32* %15, align 4
  %61 = icmp slt i32 %60, 6000
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  store i32 1, i32* %14, align 4
  br label %71

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %15, align 4
  %65 = icmp sgt i32 %64, 2400
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = icmp slt i32 %67, 2500
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 1, i32* %13, align 4
  br label %70

70:                                               ; preds = %69, %66, %63
  br label %71

71:                                               ; preds = %70, %62
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %45

75:                                               ; preds = %55
  br label %77

76:                                               ; preds = %37, %32
  store i32 1, i32* %14, align 4
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %76, %75
  %78 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %79 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = icmp sge i32 %80, 115
  br i1 %81, label %82, label %91

82:                                               ; preds = %77
  %83 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %84 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %85, 130
  br i1 %86, label %87, label %91

87:                                               ; preds = %82
  %88 = load i32, i32* %14, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %87
  store i32 0, i32* %4, align 4
  br label %275

91:                                               ; preds = %87, %82, %77
  %92 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %93 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp sge i32 %94, 81
  br i1 %95, label %96, label %105

96:                                               ; preds = %91
  %97 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %98 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp sle i32 %99, 84
  br i1 %100, label %101, label %105

101:                                              ; preds = %96
  %102 = load i32, i32* %13, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %101
  store i32 0, i32* %4, align 4
  br label %275

105:                                              ; preds = %101, %96, %91
  %106 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %107 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 128
  br i1 %109, label %110, label %134

110:                                              ; preds = %105
  %111 = bitcast [6 x i32]* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %111, i8* align 16 bitcast ([6 x i32]* @__const.wpas_op_class_supported.channels to i8*), i64 24, i1 false)
  store i64 0, i64* %9, align 8
  br label %112

112:                                              ; preds = %130, %110
  %113 = load i64, i64* %9, align 8
  %114 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 0
  %115 = call i64 @ARRAY_SIZE(i32* %114)
  %116 = icmp ult i64 %113, %115
  br i1 %116, label %117, label %133

117:                                              ; preds = %112
  %118 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %119 = load i64, i64* %9, align 8
  %120 = getelementptr inbounds [6 x i32], [6 x i32]* %16, i64 0, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %123 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = call i64 @verify_channel(%struct.hostapd_hw_modes* %118, i32 %121, i32 %124)
  %126 = load i64, i64* @NOT_ALLOWED, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %117
  store i32 1, i32* %4, align 4
  br label %275

129:                                              ; preds = %117
  br label %130

130:                                              ; preds = %129
  %131 = load i64, i64* %9, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %9, align 8
  br label %112

133:                                              ; preds = %112
  store i32 0, i32* %4, align 4
  br label %275

134:                                              ; preds = %105
  %135 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %136 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp eq i32 %137, 129
  br i1 %138, label %139, label %158

139:                                              ; preds = %134
  %140 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %141 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %142 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = call i64 @verify_channel(%struct.hostapd_hw_modes* %140, i32 50, i32 %143)
  %145 = load i64, i64* @NOT_ALLOWED, align 8
  %146 = icmp ne i64 %144, %145
  br i1 %146, label %155, label %147

147:                                              ; preds = %139
  %148 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %149 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %150 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @verify_channel(%struct.hostapd_hw_modes* %148, i32 114, i32 %151)
  %153 = load i64, i64* @NOT_ALLOWED, align 8
  %154 = icmp ne i64 %152, %153
  br label %155

155:                                              ; preds = %147, %139
  %156 = phi i1 [ true, %139 ], [ %154, %147 ]
  %157 = zext i1 %156 to i32
  store i32 %157, i32* %4, align 4
  br label %275

158:                                              ; preds = %134
  %159 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %160 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = icmp eq i32 %161, 130
  br i1 %162, label %163, label %244

163:                                              ; preds = %158
  store i32 0, i32* %11, align 4
  %164 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %165 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %166 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %165, i32 0, i32 3
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @verify_channel(%struct.hostapd_hw_modes* %164, i32 42, i32 %167)
  %169 = load i64, i64* @NOT_ALLOWED, align 8
  %170 = icmp ne i64 %168, %169
  br i1 %170, label %179, label %171

171:                                              ; preds = %163
  %172 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %173 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %174 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = call i64 @verify_channel(%struct.hostapd_hw_modes* %172, i32 58, i32 %175)
  %177 = load i64, i64* @NOT_ALLOWED, align 8
  %178 = icmp ne i64 %176, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %171, %163
  %180 = load i32, i32* %11, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %11, align 4
  br label %182

182:                                              ; preds = %179, %171
  %183 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %184 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %185 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 4
  %187 = call i64 @verify_channel(%struct.hostapd_hw_modes* %183, i32 106, i32 %186)
  %188 = load i64, i64* @NOT_ALLOWED, align 8
  %189 = icmp ne i64 %187, %188
  br i1 %189, label %206, label %190

190:                                              ; preds = %182
  %191 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %192 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %193 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = call i64 @verify_channel(%struct.hostapd_hw_modes* %191, i32 122, i32 %194)
  %196 = load i64, i64* @NOT_ALLOWED, align 8
  %197 = icmp ne i64 %195, %196
  br i1 %197, label %206, label %198

198:                                              ; preds = %190
  %199 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %200 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %201 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = call i64 @verify_channel(%struct.hostapd_hw_modes* %199, i32 138, i32 %202)
  %204 = load i64, i64* @NOT_ALLOWED, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %198, %190, %182
  %207 = load i32, i32* %11, align 4
  %208 = add nsw i32 %207, 1
  store i32 %208, i32* %11, align 4
  br label %209

209:                                              ; preds = %206, %198
  %210 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %211 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %212 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 4
  %214 = call i64 @verify_channel(%struct.hostapd_hw_modes* %210, i32 106, i32 %213)
  %215 = load i64, i64* @NOT_ALLOWED, align 8
  %216 = icmp ne i64 %214, %215
  br i1 %216, label %217, label %228

217:                                              ; preds = %209
  %218 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %219 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %220 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %219, i32 0, i32 3
  %221 = load i32, i32* %220, align 4
  %222 = call i64 @verify_channel(%struct.hostapd_hw_modes* %218, i32 138, i32 %221)
  %223 = load i64, i64* @NOT_ALLOWED, align 8
  %224 = icmp ne i64 %222, %223
  br i1 %224, label %225, label %228

225:                                              ; preds = %217
  %226 = load i32, i32* %11, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %11, align 4
  br label %228

228:                                              ; preds = %225, %217, %209
  %229 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %230 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %231 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %230, i32 0, i32 3
  %232 = load i32, i32* %231, align 4
  %233 = call i64 @verify_channel(%struct.hostapd_hw_modes* %229, i32 155, i32 %232)
  %234 = load i64, i64* @NOT_ALLOWED, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %239

236:                                              ; preds = %228
  %237 = load i32, i32* %11, align 4
  %238 = add nsw i32 %237, 1
  store i32 %238, i32* %11, align 4
  br label %239

239:                                              ; preds = %236, %228
  %240 = load i32, i32* %11, align 4
  %241 = icmp sge i32 %240, 2
  br i1 %241, label %242, label %243

242:                                              ; preds = %239
  store i32 1, i32* %4, align 4
  br label %275

243:                                              ; preds = %239
  store i32 0, i32* %4, align 4
  br label %275

244:                                              ; preds = %158
  store i32 0, i32* %11, align 4
  %245 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %246 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %8, align 4
  br label %248

248:                                              ; preds = %265, %244
  %249 = load i32, i32* %8, align 4
  %250 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %251 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = icmp sle i32 %249, %252
  br i1 %253, label %254, label %273

254:                                              ; preds = %248
  %255 = load %struct.hostapd_hw_modes*, %struct.hostapd_hw_modes** %10, align 8
  %256 = load i32, i32* %8, align 4
  %257 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %258 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %257, i32 0, i32 3
  %259 = load i32, i32* %258, align 4
  %260 = call i64 @verify_channel(%struct.hostapd_hw_modes* %255, i32 %256, i32 %259)
  %261 = load i64, i64* @NOT_ALLOWED, align 8
  %262 = icmp ne i64 %260, %261
  br i1 %262, label %263, label %264

263:                                              ; preds = %254
  store i32 1, i32* %11, align 4
  br label %273

264:                                              ; preds = %254
  br label %265

265:                                              ; preds = %264
  %266 = load %struct.oper_class_map*, %struct.oper_class_map** %7, align 8
  %267 = getelementptr inbounds %struct.oper_class_map, %struct.oper_class_map* %266, i32 0, i32 4
  %268 = load i64, i64* %267, align 8
  %269 = load i32, i32* %8, align 4
  %270 = sext i32 %269 to i64
  %271 = add nsw i64 %270, %268
  %272 = trunc i64 %271 to i32
  store i32 %272, i32* %8, align 4
  br label %248

273:                                              ; preds = %263, %248
  %274 = load i32, i32* %11, align 4
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %273, %243, %242, %155, %133, %128, %104, %90, %31
  %276 = load i32, i32* %4, align 4
  ret i32 %276
}

declare dso_local %struct.hostapd_hw_modes* @get_mode(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i64 @verify_channel(%struct.hostapd_hw_modes*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
