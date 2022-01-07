; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_add_persistent_group_client.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/wpa_supplicant/extr_p2p_supplicant.c_wpas_p2p_add_persistent_group_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wpa_supplicant = type { %struct.TYPE_4__*, i32, %struct.wpa_ssid*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64, %struct.wpa_ssid* }
%struct.wpa_ssid = type { i64, i32, i64, i64, i32*, i32*, %struct.wpa_ssid*, i32 }
%struct.TYPE_3__ = type { %struct.wpa_supplicant* }

@WPAS_MODE_P2P_GO = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i64 0, align 8
@P2P_MAX_STORED_CLIENTS = common dso_local global i32 0, align 4
@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"P2P: Failed to update configuration\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wpa_supplicant*, i32*)* @wpas_p2p_add_persistent_group_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wpas_p2p_add_persistent_group_client(%struct.wpa_supplicant* %0, i32* %1) #0 {
  %3 = alloca %struct.wpa_supplicant*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.wpa_ssid*, align 8
  %6 = alloca %struct.wpa_ssid*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.wpa_supplicant*, align 8
  store %struct.wpa_supplicant* %0, %struct.wpa_supplicant** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %12 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %11, i32 0, i32 3
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %14, align 8
  store %struct.wpa_supplicant* %15, %struct.wpa_supplicant** %10, align 8
  %16 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %3, align 8
  %17 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %16, i32 0, i32 2
  %18 = load %struct.wpa_ssid*, %struct.wpa_ssid** %17, align 8
  store %struct.wpa_ssid* %18, %struct.wpa_ssid** %5, align 8
  %19 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %20 = icmp eq %struct.wpa_ssid* %19, null
  br i1 %20, label %32, label %21

21:                                               ; preds = %2
  %22 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %23 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %32, label %27

27:                                               ; preds = %21
  %28 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %29 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %28, i32 0, i32 7
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %27, %21, %2
  br label %314

33:                                               ; preds = %27
  %34 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %35 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load %struct.wpa_ssid*, %struct.wpa_ssid** %37, align 8
  store %struct.wpa_ssid* %38, %struct.wpa_ssid** %6, align 8
  br label %39

39:                                               ; preds = %76, %33
  %40 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %41 = icmp ne %struct.wpa_ssid* %40, null
  br i1 %41, label %42, label %80

42:                                               ; preds = %39
  %43 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %44 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = icmp ne i32 %45, 2
  br i1 %46, label %53, label %47

47:                                               ; preds = %42
  %48 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %49 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @WPAS_MODE_P2P_GO, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %47, %42
  br label %76

54:                                               ; preds = %47
  %55 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %56 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %55, i32 0, i32 2
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %59 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = icmp eq i64 %57, %60
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %64 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %63, i32 0, i32 5
  %65 = load i32*, i32** %64, align 8
  %66 = load %struct.wpa_ssid*, %struct.wpa_ssid** %5, align 8
  %67 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %66, i32 0, i32 5
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %70 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @os_memcmp(i32* %65, i32* %68, i64 %71)
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %80

75:                                               ; preds = %62, %54
  br label %76

76:                                               ; preds = %75, %53
  %77 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %78 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %77, i32 0, i32 6
  %79 = load %struct.wpa_ssid*, %struct.wpa_ssid** %78, align 8
  store %struct.wpa_ssid* %79, %struct.wpa_ssid** %6, align 8
  br label %39

80:                                               ; preds = %74, %39
  %81 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %82 = icmp eq %struct.wpa_ssid* %81, null
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %314

84:                                               ; preds = %80
  store i64 0, i64* %8, align 8
  br label %85

85:                                               ; preds = %178, %84
  %86 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %87 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %86, i32 0, i32 4
  %88 = load i32*, i32** %87, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %90, label %96

90:                                               ; preds = %85
  %91 = load i64, i64* %8, align 8
  %92 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %93 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %92, i32 0, i32 3
  %94 = load i64, i64* %93, align 8
  %95 = icmp ult i64 %91, %94
  br label %96

96:                                               ; preds = %90, %85
  %97 = phi i1 [ false, %85 ], [ %95, %90 ]
  br i1 %97, label %98, label %181

98:                                               ; preds = %96
  %99 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %100 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %99, i32 0, i32 4
  %101 = load i32*, i32** %100, align 8
  %102 = load i64, i64* %8, align 8
  %103 = mul i64 %102, 2
  %104 = load i64, i64* @ETH_ALEN, align 8
  %105 = mul i64 %103, %104
  %106 = getelementptr inbounds i32, i32* %101, i64 %105
  %107 = load i32*, i32** %4, align 8
  %108 = load i64, i64* @ETH_ALEN, align 8
  %109 = call i64 @os_memcmp(i32* %106, i32* %107, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %98
  br label %178

112:                                              ; preds = %98
  %113 = load i64, i64* %8, align 8
  %114 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %115 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = sub i64 %116, 1
  %118 = icmp eq i64 %113, %117
  br i1 %118, label %119, label %120

119:                                              ; preds = %112
  br label %314

120:                                              ; preds = %112
  %121 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %122 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %121, i32 0, i32 4
  %123 = load i32*, i32** %122, align 8
  %124 = load i64, i64* %8, align 8
  %125 = mul i64 %124, 2
  %126 = load i64, i64* @ETH_ALEN, align 8
  %127 = mul i64 %125, %126
  %128 = getelementptr inbounds i32, i32* %123, i64 %127
  %129 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %130 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %129, i32 0, i32 4
  %131 = load i32*, i32** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = add i64 %132, 1
  %134 = mul i64 %133, 2
  %135 = load i64, i64* @ETH_ALEN, align 8
  %136 = mul i64 %134, %135
  %137 = getelementptr inbounds i32, i32* %131, i64 %136
  %138 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %139 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %138, i32 0, i32 3
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = sub i64 %140, %141
  %143 = sub i64 %142, 1
  %144 = mul i64 %143, 2
  %145 = load i64, i64* @ETH_ALEN, align 8
  %146 = mul i64 %144, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32 @os_memmove(i32* %128, i32* %137, i32 %147)
  %149 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %150 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %149, i32 0, i32 4
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %153 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %152, i32 0, i32 3
  %154 = load i64, i64* %153, align 8
  %155 = sub i64 %154, 1
  %156 = mul i64 %155, 2
  %157 = load i64, i64* @ETH_ALEN, align 8
  %158 = mul i64 %156, %157
  %159 = getelementptr inbounds i32, i32* %151, i64 %158
  %160 = load i32*, i32** %4, align 8
  %161 = load i64, i64* @ETH_ALEN, align 8
  %162 = call i32 @os_memcpy(i32* %159, i32* %160, i64 %161)
  %163 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %164 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %163, i32 0, i32 4
  %165 = load i32*, i32** %164, align 8
  %166 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %167 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = sub i64 %168, 1
  %170 = mul i64 %169, 2
  %171 = load i64, i64* @ETH_ALEN, align 8
  %172 = mul i64 %170, %171
  %173 = getelementptr inbounds i32, i32* %165, i64 %172
  %174 = load i64, i64* @ETH_ALEN, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i64, i64* @ETH_ALEN, align 8
  %177 = call i32 @os_memset(i32* %175, i32 255, i64 %176)
  store i32 1, i32* %9, align 4
  br label %181

178:                                              ; preds = %111
  %179 = load i64, i64* %8, align 8
  %180 = add i64 %179, 1
  store i64 %180, i64* %8, align 8
  br label %85

181:                                              ; preds = %120, %96
  %182 = load i32, i32* %9, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %238, label %184

184:                                              ; preds = %181
  %185 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %186 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %185, i32 0, i32 3
  %187 = load i64, i64* %186, align 8
  %188 = load i32, i32* @P2P_MAX_STORED_CLIENTS, align 4
  %189 = sext i32 %188 to i64
  %190 = icmp ult i64 %187, %189
  br i1 %190, label %191, label %238

191:                                              ; preds = %184
  %192 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %193 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %196 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %195, i32 0, i32 3
  %197 = load i64, i64* %196, align 8
  %198 = add i64 %197, 1
  %199 = trunc i64 %198 to i32
  %200 = load i64, i64* @ETH_ALEN, align 8
  %201 = mul i64 2, %200
  %202 = trunc i64 %201 to i32
  %203 = call i32* @os_realloc_array(i32* %194, i32 %199, i32 %202)
  store i32* %203, i32** %7, align 8
  %204 = load i32*, i32** %7, align 8
  %205 = icmp eq i32* %204, null
  br i1 %205, label %206, label %207

206:                                              ; preds = %191
  br label %314

207:                                              ; preds = %191
  %208 = load i32*, i32** %7, align 8
  %209 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %210 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %209, i32 0, i32 3
  %211 = load i64, i64* %210, align 8
  %212 = mul i64 %211, 2
  %213 = load i64, i64* @ETH_ALEN, align 8
  %214 = mul i64 %212, %213
  %215 = getelementptr inbounds i32, i32* %208, i64 %214
  %216 = load i32*, i32** %4, align 8
  %217 = load i64, i64* @ETH_ALEN, align 8
  %218 = call i32 @os_memcpy(i32* %215, i32* %216, i64 %217)
  %219 = load i32*, i32** %7, align 8
  %220 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %221 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %220, i32 0, i32 3
  %222 = load i64, i64* %221, align 8
  %223 = mul i64 %222, 2
  %224 = load i64, i64* @ETH_ALEN, align 8
  %225 = mul i64 %223, %224
  %226 = getelementptr inbounds i32, i32* %219, i64 %225
  %227 = load i64, i64* @ETH_ALEN, align 8
  %228 = getelementptr inbounds i32, i32* %226, i64 %227
  %229 = load i64, i64* @ETH_ALEN, align 8
  %230 = call i32 @os_memset(i32* %228, i32 255, i64 %229)
  %231 = load i32*, i32** %7, align 8
  %232 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %233 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %232, i32 0, i32 4
  store i32* %231, i32** %233, align 8
  %234 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %235 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %234, i32 0, i32 3
  %236 = load i64, i64* %235, align 8
  %237 = add i64 %236, 1
  store i64 %237, i64* %235, align 8
  br label %295

238:                                              ; preds = %184, %181
  %239 = load i32, i32* %9, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %294, label %241

241:                                              ; preds = %238
  %242 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %243 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %242, i32 0, i32 4
  %244 = load i32*, i32** %243, align 8
  %245 = icmp ne i32* %244, null
  br i1 %245, label %246, label %294

246:                                              ; preds = %241
  %247 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %248 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %247, i32 0, i32 4
  %249 = load i32*, i32** %248, align 8
  %250 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %251 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load i64, i64* @ETH_ALEN, align 8
  %254 = mul i64 2, %253
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %257 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %256, i32 0, i32 3
  %258 = load i64, i64* %257, align 8
  %259 = sub i64 %258, 1
  %260 = mul i64 %259, 2
  %261 = load i64, i64* @ETH_ALEN, align 8
  %262 = mul i64 %260, %261
  %263 = trunc i64 %262 to i32
  %264 = call i32 @os_memmove(i32* %249, i32* %255, i32 %263)
  %265 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %266 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %265, i32 0, i32 4
  %267 = load i32*, i32** %266, align 8
  %268 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %269 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %268, i32 0, i32 3
  %270 = load i64, i64* %269, align 8
  %271 = sub i64 %270, 1
  %272 = mul i64 %271, 2
  %273 = load i64, i64* @ETH_ALEN, align 8
  %274 = mul i64 %272, %273
  %275 = getelementptr inbounds i32, i32* %267, i64 %274
  %276 = load i32*, i32** %4, align 8
  %277 = load i64, i64* @ETH_ALEN, align 8
  %278 = call i32 @os_memcpy(i32* %275, i32* %276, i64 %277)
  %279 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %280 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %279, i32 0, i32 4
  %281 = load i32*, i32** %280, align 8
  %282 = load %struct.wpa_ssid*, %struct.wpa_ssid** %6, align 8
  %283 = getelementptr inbounds %struct.wpa_ssid, %struct.wpa_ssid* %282, i32 0, i32 3
  %284 = load i64, i64* %283, align 8
  %285 = sub i64 %284, 1
  %286 = mul i64 %285, 2
  %287 = load i64, i64* @ETH_ALEN, align 8
  %288 = mul i64 %286, %287
  %289 = getelementptr inbounds i32, i32* %281, i64 %288
  %290 = load i64, i64* @ETH_ALEN, align 8
  %291 = getelementptr inbounds i32, i32* %289, i64 %290
  %292 = load i64, i64* @ETH_ALEN, align 8
  %293 = call i32 @os_memset(i32* %291, i32 255, i64 %292)
  br label %294

294:                                              ; preds = %246, %241, %238
  br label %295

295:                                              ; preds = %294, %207
  %296 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %297 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %296, i32 0, i32 0
  %298 = load %struct.TYPE_4__*, %struct.TYPE_4__** %297, align 8
  %299 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = icmp ne i64 %300, 0
  br i1 %301, label %302, label %314

302:                                              ; preds = %295
  %303 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %304 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = load %struct.wpa_supplicant*, %struct.wpa_supplicant** %10, align 8
  %307 = getelementptr inbounds %struct.wpa_supplicant, %struct.wpa_supplicant* %306, i32 0, i32 0
  %308 = load %struct.TYPE_4__*, %struct.TYPE_4__** %307, align 8
  %309 = call i64 @wpa_config_write(i32 %305, %struct.TYPE_4__* %308)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %302
  %312 = load i32, i32* @MSG_DEBUG, align 4
  %313 = call i32 @wpa_printf(i32 %312, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %314

314:                                              ; preds = %32, %83, %119, %206, %311, %302, %295
  ret void
}

declare dso_local i64 @os_memcmp(i32*, i32*, i64) #1

declare dso_local i32 @os_memmove(i32*, i32*, i32) #1

declare dso_local i32 @os_memcpy(i32*, i32*, i64) #1

declare dso_local i32 @os_memset(i32*, i32, i64) #1

declare dso_local i32* @os_realloc_array(i32*, i32, i32) #1

declare dso_local i64 @wpa_config_write(i32, %struct.TYPE_4__*) #1

declare dso_local i32 @wpa_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
