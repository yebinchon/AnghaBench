; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_marshall.c_ret_principal_ent.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/kadm5/extr_marshall.c_ret_principal_ent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_5__*, i32*, i8*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32*, i8*, i8*, i8*, i8*, i32* }
%struct.TYPE_5__ = type { %struct.TYPE_5__* }

@KADM5_PRINCIPAL = common dso_local global i32 0, align 4
@KADM5_PRINC_EXPIRE_TIME = common dso_local global i32 0, align 4
@KADM5_PW_EXPIRATION = common dso_local global i32 0, align 4
@KADM5_LAST_PWD_CHANGE = common dso_local global i32 0, align 4
@KADM5_MAX_LIFE = common dso_local global i32 0, align 4
@KADM5_MOD_NAME = common dso_local global i32 0, align 4
@KADM5_MOD_TIME = common dso_local global i32 0, align 4
@KADM5_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_KVNO = common dso_local global i32 0, align 4
@KADM5_MKVNO = common dso_local global i32 0, align 4
@KADM5_POLICY = common dso_local global i32 0, align 4
@KADM5_AUX_ATTRIBUTES = common dso_local global i32 0, align 4
@KADM5_MAX_RLIFE = common dso_local global i32 0, align 4
@KADM5_LAST_SUCCESS = common dso_local global i32 0, align 4
@KADM5_LAST_FAILED = common dso_local global i32 0, align 4
@KADM5_FAIL_AUTH_COUNT = common dso_local global i32 0, align 4
@KADM5_KEY_DATA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KADM5_TL_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_6__*, i32)* @ret_principal_ent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ret_principal_ent(i32* %0, %struct.TYPE_6__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @KADM5_PRINCIPAL, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 19
  %19 = call i32 @krb5_ret_principal(i32* %16, i32** %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @KADM5_PRINC_EXPIRE_TIME, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @krb5_ret_int32(i32* %26, i8** %9)
  %28 = load i8*, i8** %9, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 18
  store i8* %28, i8** %30, align 8
  br label %31

31:                                               ; preds = %25, %20
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @KADM5_PW_EXPIRATION, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @krb5_ret_int32(i32* %37, i8** %9)
  %39 = load i8*, i8** %9, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 17
  store i8* %39, i8** %41, align 8
  br label %42

42:                                               ; preds = %36, %31
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @KADM5_LAST_PWD_CHANGE, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %42
  %48 = load i32*, i32** %5, align 8
  %49 = call i32 @krb5_ret_int32(i32* %48, i8** %9)
  %50 = load i8*, i8** %9, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 16
  store i8* %50, i8** %52, align 8
  br label %53

53:                                               ; preds = %47, %42
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @KADM5_MAX_LIFE, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 @krb5_ret_int32(i32* %59, i8** %9)
  %61 = load i8*, i8** %9, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 15
  store i8* %61, i8** %63, align 8
  br label %64

64:                                               ; preds = %58, %53
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @KADM5_MOD_NAME, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %83

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @krb5_ret_int32(i32* %70, i8** %9)
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %74, label %79

74:                                               ; preds = %69
  %75 = load i32*, i32** %5, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 14
  %78 = call i32 @krb5_ret_principal(i32* %75, i32** %77)
  br label %82

79:                                               ; preds = %69
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 14
  store i32* null, i32** %81, align 8
  br label %82

82:                                               ; preds = %79, %74
  br label %83

83:                                               ; preds = %82, %64
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @KADM5_MOD_TIME, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %83
  %89 = load i32*, i32** %5, align 8
  %90 = call i32 @krb5_ret_int32(i32* %89, i8** %9)
  %91 = load i8*, i8** %9, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 13
  store i8* %91, i8** %93, align 8
  br label %94

94:                                               ; preds = %88, %83
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* @KADM5_ATTRIBUTES, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %105

99:                                               ; preds = %94
  %100 = load i32*, i32** %5, align 8
  %101 = call i32 @krb5_ret_int32(i32* %100, i8** %9)
  %102 = load i8*, i8** %9, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 12
  store i8* %102, i8** %104, align 8
  br label %105

105:                                              ; preds = %99, %94
  %106 = load i32, i32* %7, align 4
  %107 = load i32, i32* @KADM5_KVNO, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %116

110:                                              ; preds = %105
  %111 = load i32*, i32** %5, align 8
  %112 = call i32 @krb5_ret_int32(i32* %111, i8** %9)
  %113 = load i8*, i8** %9, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 11
  store i8* %113, i8** %115, align 8
  br label %116

116:                                              ; preds = %110, %105
  %117 = load i32, i32* %7, align 4
  %118 = load i32, i32* @KADM5_MKVNO, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %116
  %122 = load i32*, i32** %5, align 8
  %123 = call i32 @krb5_ret_int32(i32* %122, i8** %9)
  %124 = load i8*, i8** %9, align 8
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 10
  store i8* %124, i8** %126, align 8
  br label %127

127:                                              ; preds = %121, %116
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* @KADM5_POLICY, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %146

132:                                              ; preds = %127
  %133 = load i32*, i32** %5, align 8
  %134 = call i32 @krb5_ret_int32(i32* %133, i8** %9)
  %135 = load i8*, i8** %9, align 8
  %136 = icmp ne i8* %135, null
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load i32*, i32** %5, align 8
  %139 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 9
  %141 = call i32 @krb5_ret_string(i32* %138, i32** %140)
  br label %145

142:                                              ; preds = %132
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %143, i32 0, i32 9
  store i32* null, i32** %144, align 8
  br label %145

145:                                              ; preds = %142, %137
  br label %146

146:                                              ; preds = %145, %127
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* @KADM5_AUX_ATTRIBUTES, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %157

151:                                              ; preds = %146
  %152 = load i32*, i32** %5, align 8
  %153 = call i32 @krb5_ret_int32(i32* %152, i8** %9)
  %154 = load i8*, i8** %9, align 8
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 8
  store i8* %154, i8** %156, align 8
  br label %157

157:                                              ; preds = %151, %146
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @KADM5_MAX_RLIFE, align 4
  %160 = and i32 %158, %159
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %168

162:                                              ; preds = %157
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @krb5_ret_int32(i32* %163, i8** %9)
  %165 = load i8*, i8** %9, align 8
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 7
  store i8* %165, i8** %167, align 8
  br label %168

168:                                              ; preds = %162, %157
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @KADM5_LAST_SUCCESS, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %179

173:                                              ; preds = %168
  %174 = load i32*, i32** %5, align 8
  %175 = call i32 @krb5_ret_int32(i32* %174, i8** %9)
  %176 = load i8*, i8** %9, align 8
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 6
  store i8* %176, i8** %178, align 8
  br label %179

179:                                              ; preds = %173, %168
  %180 = load i32, i32* %7, align 4
  %181 = load i32, i32* @KADM5_LAST_FAILED, align 4
  %182 = and i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %190

184:                                              ; preds = %179
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @krb5_ret_int32(i32* %185, i8** %9)
  %187 = load i8*, i8** %9, align 8
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 5
  store i8* %187, i8** %189, align 8
  br label %190

190:                                              ; preds = %184, %179
  %191 = load i32, i32* %7, align 4
  %192 = load i32, i32* @KADM5_FAIL_AUTH_COUNT, align 4
  %193 = and i32 %191, %192
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %190
  %196 = load i32*, i32** %5, align 8
  %197 = call i32 @krb5_ret_int32(i32* %196, i8** %9)
  %198 = load i8*, i8** %9, align 8
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 4
  store i8* %198, i8** %200, align 8
  br label %201

201:                                              ; preds = %195, %190
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* @KADM5_KEY_DATA, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %254

206:                                              ; preds = %201
  %207 = load i32*, i32** %5, align 8
  %208 = call i32 @krb5_ret_int32(i32* %207, i8** %9)
  %209 = load i8*, i8** %9, align 8
  %210 = ptrtoint i8* %209 to i32
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = sext i32 %215 to i64
  %217 = mul i64 %216, 4
  %218 = trunc i64 %217 to i32
  %219 = call i8* @malloc(i32 %218)
  %220 = bitcast i8* %219 to i32*
  %221 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %221, i32 0, i32 3
  store i32* %220, i32** %222, align 8
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 3
  %225 = load i32*, i32** %224, align 8
  %226 = icmp eq i32* %225, null
  br i1 %226, label %227, label %234

227:                                              ; preds = %206
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 0
  %230 = load i32, i32* %229, align 8
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = load i32, i32* @ENOMEM, align 4
  store i32 %233, i32* %4, align 4
  br label %298

234:                                              ; preds = %227, %206
  store i32 0, i32* %8, align 4
  br label %235

235:                                              ; preds = %250, %234
  %236 = load i32, i32* %8, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %238 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp slt i32 %236, %239
  br i1 %240, label %241, label %253

241:                                              ; preds = %235
  %242 = load i32*, i32** %5, align 8
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 3
  %245 = load i32*, i32** %244, align 8
  %246 = load i32, i32* %8, align 4
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %245, i64 %247
  %249 = call i32 @kadm5_ret_key_data(i32* %242, i32* %248)
  br label %250

250:                                              ; preds = %241
  %251 = load i32, i32* %8, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %8, align 4
  br label %235

253:                                              ; preds = %235
  br label %254

254:                                              ; preds = %253, %201
  %255 = load i32, i32* %7, align 4
  %256 = load i32, i32* @KADM5_TL_DATA, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %297

259:                                              ; preds = %254
  %260 = load i32*, i32** %5, align 8
  %261 = call i32 @krb5_ret_int32(i32* %260, i8** %9)
  %262 = load i8*, i8** %9, align 8
  %263 = ptrtoint i8* %262 to i32
  %264 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %265 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %264, i32 0, i32 1
  store i32 %263, i32* %265, align 4
  %266 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %267 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %266, i32 0, i32 2
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %267, align 8
  store i32 0, i32* %8, align 4
  br label %268

268:                                              ; preds = %293, %259
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %271 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 4
  %273 = icmp slt i32 %269, %272
  br i1 %273, label %274, label %296

274:                                              ; preds = %268
  %275 = call i8* @malloc(i32 8)
  %276 = bitcast i8* %275 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %276, %struct.TYPE_5__** %10, align 8
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %278 = icmp eq %struct.TYPE_5__* %277, null
  br i1 %278, label %279, label %281

279:                                              ; preds = %274
  %280 = load i32, i32* @ENOMEM, align 4
  store i32 %280, i32* %4, align 4
  br label %298

281:                                              ; preds = %274
  %282 = load i32*, i32** %5, align 8
  %283 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %284 = call i32 @kadm5_ret_tl_data(i32* %282, %struct.TYPE_5__* %283)
  %285 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 2
  %287 = load %struct.TYPE_5__*, %struct.TYPE_5__** %286, align 8
  %288 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %288, i32 0, i32 0
  store %struct.TYPE_5__* %287, %struct.TYPE_5__** %289, align 8
  %290 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %291 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %291, i32 0, i32 2
  store %struct.TYPE_5__* %290, %struct.TYPE_5__** %292, align 8
  br label %293

293:                                              ; preds = %281
  %294 = load i32, i32* %8, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %8, align 4
  br label %268

296:                                              ; preds = %268
  br label %297

297:                                              ; preds = %296, %254
  store i32 0, i32* %4, align 4
  br label %298

298:                                              ; preds = %297, %279, %232
  %299 = load i32, i32* %4, align 4
  ret i32 %299
}

declare dso_local i32 @krb5_ret_principal(i32*, i32**) #1

declare dso_local i32 @krb5_ret_int32(i32*, i8**) #1

declare dso_local i32 @krb5_ret_string(i32*, i32**) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @kadm5_ret_key_data(i32*, i32*) #1

declare dso_local i32 @kadm5_ret_tl_data(i32*, %struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
