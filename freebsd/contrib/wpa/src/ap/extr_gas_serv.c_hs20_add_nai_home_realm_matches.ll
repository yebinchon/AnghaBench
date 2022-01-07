; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_hs20_add_nai_home_realm_matches.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/wpa/src/ap/extr_gas_serv.c_hs20_add_nai_home_realm_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hostapd_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.hostapd_nai_realm_data* }
%struct.hostapd_nai_realm_data = type { i32, i32* }
%struct.wpabuf = type { i32 }
%struct.anon = type { i32, i32 }

@MSG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Too short NAI Home Realm Query\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Truncated NAI Home Realm Query\00", align 1
@MAX_NAI_REALMS = common dso_local global i32 0, align 4
@ANQP_NAI_REALM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"realm_idx %d, realm_data_idx %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hostapd_data*, %struct.wpabuf*, i32*, i64)* @hs20_add_nai_home_realm_matches to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hs20_add_nai_home_realm_matches(%struct.hostapd_data* %0, %struct.wpabuf* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hostapd_data*, align 8
  %7 = alloca %struct.wpabuf*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.hostapd_nai_realm_data*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca [10 x %struct.anon], align 16
  %23 = alloca i32*, align 8
  %24 = alloca i32*, align 8
  store %struct.hostapd_data* %0, %struct.hostapd_data** %6, align 8
  store %struct.wpabuf* %1, %struct.wpabuf** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %14, align 4
  %25 = load i32*, i32** %8, align 8
  store i32* %25, i32** %19, align 8
  %26 = load i32*, i32** %19, align 8
  %27 = load i64, i64* %9, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  store i32* %28, i32** %21, align 8
  %29 = load i32*, i32** %21, align 8
  %30 = load i32*, i32** %19, align 8
  %31 = ptrtoint i32* %29 to i64
  %32 = ptrtoint i32* %30 to i64
  %33 = sub i64 %31, %32
  %34 = sdiv exact i64 %33, 4
  %35 = icmp slt i64 %34, 1
  br i1 %35, label %36, label %41

36:                                               ; preds = %4
  %37 = load i32, i32* @MSG_DEBUG, align 4
  %38 = load i32*, i32** %8, align 8
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @wpa_hexdump(i32 %37, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32* %38, i64 %39)
  store i32 -1, i32* %5, align 4
  br label %289

41:                                               ; preds = %4
  %42 = load i32*, i32** %19, align 8
  %43 = getelementptr inbounds i32, i32* %42, i32 1
  store i32* %43, i32** %19, align 8
  %44 = load i32, i32* %42, align 4
  store i32 %44, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %235, %41
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i32, i32* %14, align 4
  %51 = icmp ult i32 %50, 10
  br label %52

52:                                               ; preds = %49, %45
  %53 = phi i1 [ false, %45 ], [ %51, %49 ]
  br i1 %53, label %54, label %238

54:                                               ; preds = %52
  %55 = load i32*, i32** %21, align 8
  %56 = load i32*, i32** %19, align 8
  %57 = ptrtoint i32* %55 to i64
  %58 = ptrtoint i32* %56 to i64
  %59 = sub i64 %57, %58
  %60 = sdiv exact i64 %59, 4
  %61 = icmp slt i64 %60, 2
  br i1 %61, label %62, label %67

62:                                               ; preds = %54
  %63 = load i32, i32* @MSG_DEBUG, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @wpa_hexdump(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %64, i64 %65)
  store i32 -1, i32* %5, align 4
  br label %289

67:                                               ; preds = %54
  %68 = load i32*, i32** %19, align 8
  %69 = getelementptr inbounds i32, i32* %68, i32 1
  store i32* %69, i32** %19, align 8
  %70 = load i32, i32* %68, align 4
  store i32 %70, i32* %15, align 4
  %71 = load i32*, i32** %19, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 1
  store i32* %72, i32** %19, align 8
  %73 = load i32, i32* %71, align 4
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = zext i32 %74 to i64
  %76 = load i32*, i32** %21, align 8
  %77 = load i32*, i32** %19, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = icmp sgt i64 %75, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %67
  %84 = load i32, i32* @MSG_DEBUG, align 4
  %85 = load i32*, i32** %8, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i32 @wpa_hexdump(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32* %85, i64 %86)
  store i32 -1, i32* %5, align 4
  br label %289

88:                                               ; preds = %67
  %89 = load i32*, i32** %19, align 8
  store i32* %89, i32** %20, align 8
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %227, %88
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %93 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %92, i32 0, i32 0
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ult i32 %91, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* %14, align 4
  %100 = icmp ult i32 %99, 10
  br label %101

101:                                              ; preds = %98, %90
  %102 = phi i1 [ false, %90 ], [ %100, %98 ]
  br i1 %102, label %103, label %230

103:                                              ; preds = %101
  %104 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %105 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_2__*, %struct.TYPE_2__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 1
  %108 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %107, align 8
  %109 = load i32, i32* %11, align 4
  %110 = zext i32 %109 to i64
  %111 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %108, i64 %110
  store %struct.hostapd_nai_realm_data* %111, %struct.hostapd_nai_realm_data** %18, align 8
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %114 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %112, %115
  br i1 %116, label %117, label %118

117:                                              ; preds = %103
  br label %227

118:                                              ; preds = %103
  %119 = load i32*, i32** %20, align 8
  store i32* %119, i32** %23, align 8
  br label %120

120:                                              ; preds = %223, %118
  %121 = load i32*, i32** %23, align 8
  %122 = load i32*, i32** %20, align 8
  %123 = load i32, i32* %16, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = icmp ult i32* %121, %125
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load i32, i32* %14, align 4
  %129 = icmp ult i32 %128, 10
  br label %130

130:                                              ; preds = %127, %120
  %131 = phi i1 [ false, %120 ], [ %129, %127 ]
  br i1 %131, label %132, label %226

132:                                              ; preds = %130
  %133 = load i32*, i32** %23, align 8
  store i32* %133, i32** %24, align 8
  br label %134

134:                                              ; preds = %147, %132
  %135 = load i32*, i32** %24, align 8
  %136 = load i32*, i32** %20, align 8
  %137 = load i32, i32* %16, align 4
  %138 = zext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = icmp ult i32* %135, %139
  br i1 %140, label %141, label %150

141:                                              ; preds = %134
  %142 = load i32*, i32** %24, align 8
  %143 = load i32, i32* %142, align 4
  %144 = icmp eq i32 %143, 59
  br i1 %144, label %145, label %146

145:                                              ; preds = %141
  br label %150

146:                                              ; preds = %141
  br label %147

147:                                              ; preds = %146
  %148 = load i32*, i32** %24, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %24, align 8
  br label %134

150:                                              ; preds = %145, %134
  store i32 0, i32* %12, align 4
  br label %151

151:                                              ; preds = %220, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @MAX_NAI_REALMS, align 4
  %154 = icmp ult i32 %152, %153
  br i1 %154, label %155, label %167

155:                                              ; preds = %151
  %156 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %157 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32, i32* %12, align 4
  %160 = zext i32 %159 to i64
  %161 = getelementptr inbounds i32, i32* %158, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %155
  %165 = load i32, i32* %14, align 4
  %166 = icmp ult i32 %165, 10
  br label %167

167:                                              ; preds = %164, %155, %151
  %168 = phi i1 [ false, %155 ], [ false, %151 ], [ %166, %164 ]
  br i1 %168, label %169, label %223

169:                                              ; preds = %167
  %170 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %171 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %170, i32 0, i32 1
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* %12, align 4
  %174 = zext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %172, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i64 @os_strlen(i32 %176)
  %178 = trunc i64 %177 to i32
  %179 = sext i32 %178 to i64
  %180 = load i32*, i32** %24, align 8
  %181 = load i32*, i32** %23, align 8
  %182 = ptrtoint i32* %180 to i64
  %183 = ptrtoint i32* %181 to i64
  %184 = sub i64 %182, %183
  %185 = sdiv exact i64 %184, 4
  %186 = icmp ne i64 %179, %185
  br i1 %186, label %206, label %187

187:                                              ; preds = %169
  %188 = load i32*, i32** %23, align 8
  %189 = bitcast i32* %188 to i8*
  %190 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %191 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %190, i32 0, i32 1
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %12, align 4
  %194 = zext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %24, align 8
  %198 = load i32*, i32** %23, align 8
  %199 = ptrtoint i32* %197 to i64
  %200 = ptrtoint i32* %198 to i64
  %201 = sub i64 %199, %200
  %202 = sdiv exact i64 %201, 4
  %203 = trunc i64 %202 to i32
  %204 = call i64 @os_strncmp(i8* %189, i32 %196, i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %187, %169
  br label %220

207:                                              ; preds = %187
  %208 = load i32, i32* %11, align 4
  %209 = load i32, i32* %14, align 4
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %22, i64 0, i64 %210
  %212 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 0
  store i32 %208, i32* %212, align 8
  %213 = load i32, i32* %12, align 4
  %214 = load i32, i32* %14, align 4
  %215 = zext i32 %214 to i64
  %216 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %22, i64 0, i64 %215
  %217 = getelementptr inbounds %struct.anon, %struct.anon* %216, i32 0, i32 1
  store i32 %213, i32* %217, align 4
  %218 = load i32, i32* %14, align 4
  %219 = add i32 %218, 1
  store i32 %219, i32* %14, align 4
  br label %220

220:                                              ; preds = %207, %206
  %221 = load i32, i32* %12, align 4
  %222 = add i32 %221, 1
  store i32 %222, i32* %12, align 4
  br label %151

223:                                              ; preds = %167
  %224 = load i32*, i32** %24, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  store i32* %225, i32** %23, align 8
  br label %120

226:                                              ; preds = %130
  br label %227

227:                                              ; preds = %226, %117
  %228 = load i32, i32* %11, align 4
  %229 = add i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %90

230:                                              ; preds = %101
  %231 = load i32, i32* %16, align 4
  %232 = load i32*, i32** %19, align 8
  %233 = zext i32 %231 to i64
  %234 = getelementptr inbounds i32, i32* %232, i64 %233
  store i32* %234, i32** %19, align 8
  br label %235

235:                                              ; preds = %230
  %236 = load i32, i32* %10, align 4
  %237 = add i32 %236, 1
  store i32 %237, i32* %10, align 4
  br label %45

238:                                              ; preds = %52
  %239 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %240 = load i32, i32* @ANQP_NAI_REALM, align 4
  %241 = call i32* @gas_anqp_add_element(%struct.wpabuf* %239, i32 %240)
  store i32* %241, i32** %17, align 8
  %242 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %243 = load i32, i32* %14, align 4
  %244 = call i32 @wpabuf_put_le16(%struct.wpabuf* %242, i32 %243)
  store i32 0, i32* %10, align 4
  br label %245

245:                                              ; preds = %282, %238
  %246 = load i32, i32* %10, align 4
  %247 = load i32, i32* %14, align 4
  %248 = icmp ult i32 %246, %247
  br i1 %248, label %249, label %285

249:                                              ; preds = %245
  %250 = load i32, i32* @MSG_DEBUG, align 4
  %251 = load i32, i32* %10, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %22, i64 0, i64 %252
  %254 = getelementptr inbounds %struct.anon, %struct.anon* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load i32, i32* %10, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %22, i64 0, i64 %257
  %259 = getelementptr inbounds %struct.anon, %struct.anon* %258, i32 0, i32 1
  %260 = load i32, i32* %259, align 4
  %261 = call i32 @wpa_printf(i32 %250, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %255, i32 %260)
  %262 = load %struct.hostapd_data*, %struct.hostapd_data** %6, align 8
  %263 = getelementptr inbounds %struct.hostapd_data, %struct.hostapd_data* %262, i32 0, i32 0
  %264 = load %struct.TYPE_2__*, %struct.TYPE_2__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %264, i32 0, i32 1
  %266 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %265, align 8
  %267 = load i32, i32* %10, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %22, i64 0, i64 %268
  %270 = getelementptr inbounds %struct.anon, %struct.anon* %269, i32 0, i32 0
  %271 = load i32, i32* %270, align 8
  %272 = zext i32 %271 to i64
  %273 = getelementptr inbounds %struct.hostapd_nai_realm_data, %struct.hostapd_nai_realm_data* %266, i64 %272
  store %struct.hostapd_nai_realm_data* %273, %struct.hostapd_nai_realm_data** %18, align 8
  %274 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %275 = load %struct.hostapd_nai_realm_data*, %struct.hostapd_nai_realm_data** %18, align 8
  %276 = load i32, i32* %10, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds [10 x %struct.anon], [10 x %struct.anon]* %22, i64 0, i64 %277
  %279 = getelementptr inbounds %struct.anon, %struct.anon* %278, i32 0, i32 1
  %280 = load i32, i32* %279, align 4
  %281 = call i32 @anqp_add_nai_realm_data(%struct.wpabuf* %274, %struct.hostapd_nai_realm_data* %275, i32 %280)
  br label %282

282:                                              ; preds = %249
  %283 = load i32, i32* %10, align 4
  %284 = add i32 %283, 1
  store i32 %284, i32* %10, align 4
  br label %245

285:                                              ; preds = %245
  %286 = load %struct.wpabuf*, %struct.wpabuf** %7, align 8
  %287 = load i32*, i32** %17, align 8
  %288 = call i32 @gas_anqp_set_element_len(%struct.wpabuf* %286, i32* %287)
  store i32 0, i32* %5, align 4
  br label %289

289:                                              ; preds = %285, %83, %62, %36
  %290 = load i32, i32* %5, align 4
  ret i32 %290
}

declare dso_local i32 @wpa_hexdump(i32, i8*, i32*, i64) #1

declare dso_local i64 @os_strlen(i32) #1

declare dso_local i64 @os_strncmp(i8*, i32, i32) #1

declare dso_local i32* @gas_anqp_add_element(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpabuf_put_le16(%struct.wpabuf*, i32) #1

declare dso_local i32 @wpa_printf(i32, i8*, i32, i32) #1

declare dso_local i32 @anqp_add_nai_realm_data(%struct.wpabuf*, %struct.hostapd_nai_realm_data*, i32) #1

declare dso_local i32 @gas_anqp_set_element_len(%struct.wpabuf*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
