; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_getanswer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getaddrinfo.c_getanswer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32*, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }
%struct.addrinfo = type { %struct.addrinfo*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.afd = type { i32 }

@MAXDNAME = common dso_local global i32 0, align 4
@HFIXEDSZ = common dso_local global i32 0, align 4
@NO_RECOVERY = common dso_local global i32 0, align 4
@QFIXEDSZ = common dso_local global i64 0, align 8
@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@INT16SZ = common dso_local global i64 0, align 8
@INT32SZ = common dso_local global i64 0, align 8
@C_IN = common dso_local global i32 0, align 4
@T_CNAME = common dso_local global i32 0, align 4
@INADDRSZ = common dso_local global i32 0, align 4
@IN6ADDRSZ = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_INET6 = common dso_local global i32 0, align 4
@NETDB_SUCCESS = common dso_local global i32 0, align 4
@NO_DATA = common dso_local global i32 0, align 4
@AskedForGot = common dso_local global i32 0, align 4
@LOG_AUTH = common dso_local global i32 0, align 4
@LOG_NOTICE = common dso_local global i32 0, align 4
@T_KEY = common dso_local global i32 0, align 4
@T_SIG = common dso_local global i32 0, align 4
@ns_t_dname = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.addrinfo* (%struct.TYPE_9__*, i32, i8*, i32, %struct.addrinfo*, %struct.TYPE_8__*)* @getanswer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.addrinfo* @getanswer(%struct.TYPE_9__* %0, i32 %1, i8* %2, i32 %3, %struct.addrinfo* %4, %struct.TYPE_8__* %5) #0 {
  %7 = alloca %struct.addrinfo*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.addrinfo*, align 8
  %13 = alloca %struct.TYPE_8__*, align 8
  %14 = alloca %struct.addrinfo, align 8
  %15 = alloca %struct.addrinfo*, align 8
  %16 = alloca %struct.addrinfo, align 8
  %17 = alloca %struct.afd*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca %struct.TYPE_10__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32 (i8*)*, align 8
  %34 = alloca [8192 x i8], align 16
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.addrinfo* %4, %struct.addrinfo** %12, align 8
  store %struct.TYPE_8__* %5, %struct.TYPE_8__** %13, align 8
  %37 = load i32, i32* @MAXDNAME, align 4
  %38 = zext i32 %37 to i64
  %39 = call i8* @llvm.stacksave()
  store i8* %39, i8** %31, align 8
  %40 = alloca i8, i64 %38, align 16
  store i64 %38, i64* %32, align 8
  %41 = call i32 @memset(%struct.addrinfo* %14, i32 0, i32 16)
  store %struct.addrinfo* %14, %struct.addrinfo** %15, align 8
  store i8* null, i8** %18, align 8
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32* %47, i32** %22, align 8
  %48 = load i32, i32* %11, align 4
  switch i32 %48, label %50 [
    i32 130, label %49
    i32 129, label %49
    i32 128, label %49
  ]

49:                                               ; preds = %6, %6, %6
  store i32 (i8*)* @res_hnok, i32 (i8*)** %33, align 8
  br label %51

50:                                               ; preds = %6
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  store i32 1, i32* %35, align 4
  br label %447

51:                                               ; preds = %49
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  store %struct.TYPE_10__* %53, %struct.TYPE_10__** %19, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  store i32 %57, i32* %27, align 4
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @ntohs(i32 %60)
  store i32 %61, i32* %28, align 4
  %62 = getelementptr inbounds [8192 x i8], [8192 x i8]* %34, i64 0, i64 0
  store i8* %62, i8** %23, align 8
  %63 = getelementptr inbounds [8192 x i8], [8192 x i8]* %34, i64 0, i64 0
  %64 = getelementptr inbounds i8, i8* %63, i64 8192
  store i8* %64, i8** %24, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @HFIXEDSZ, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32* %70, i32** %20, align 8
  %71 = load i32, i32* %28, align 4
  %72 = icmp ne i32 %71, 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %51
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %75 = load i32, i32* @NO_RECOVERY, align 4
  %76 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %74, i32 %75)
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  store i32 1, i32* %35, align 4
  br label %447

77:                                               ; preds = %51
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = load i32*, i32** %79, align 8
  %81 = load i32*, i32** %22, align 8
  %82 = load i32*, i32** %20, align 8
  %83 = load i8*, i8** %23, align 8
  %84 = load i8*, i8** %24, align 8
  %85 = load i8*, i8** %23, align 8
  %86 = ptrtoint i8* %84 to i64
  %87 = ptrtoint i8* %85 to i64
  %88 = sub i64 %86, %87
  %89 = trunc i64 %88 to i32
  %90 = call i32 @dn_expand(i32* %80, i32* %81, i32* %82, i8* %83, i32 %89)
  store i32 %90, i32* %21, align 4
  %91 = load i32, i32* %21, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %77
  %94 = load i32 (i8*)*, i32 (i8*)** %33, align 8
  %95 = load i8*, i8** %23, align 8
  %96 = call i32 %94(i8* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %102, label %98

98:                                               ; preds = %93, %77
  %99 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %100 = load i32, i32* @NO_RECOVERY, align 4
  %101 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %99, i32 %100)
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  store i32 1, i32* %35, align 4
  br label %447

102:                                              ; preds = %93
  %103 = load i32, i32* %21, align 4
  %104 = sext i32 %103 to i64
  %105 = load i64, i64* @QFIXEDSZ, align 8
  %106 = add nsw i64 %104, %105
  %107 = load i32*, i32** %20, align 8
  %108 = getelementptr inbounds i32, i32* %107, i64 %106
  store i32* %108, i32** %20, align 8
  %109 = load i32, i32* %11, align 4
  %110 = icmp eq i32 %109, 130
  br i1 %110, label %117, label %111

111:                                              ; preds = %102
  %112 = load i32, i32* %11, align 4
  %113 = icmp eq i32 %112, 129
  br i1 %113, label %117, label %114

114:                                              ; preds = %111
  %115 = load i32, i32* %11, align 4
  %116 = icmp eq i32 %115, 128
  br i1 %116, label %117, label %135

117:                                              ; preds = %114, %111, %102
  %118 = load i8*, i8** %23, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %21, align 4
  %121 = load i32, i32* %21, align 4
  %122 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %117
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %126 = load i32, i32* @NO_RECOVERY, align 4
  %127 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %125, i32 %126)
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  store i32 1, i32* %35, align 4
  br label %447

128:                                              ; preds = %117
  %129 = load i8*, i8** %23, align 8
  store i8* %129, i8** %18, align 8
  %130 = load i32, i32* %21, align 4
  %131 = load i8*, i8** %23, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i8, i8* %131, i64 %132
  store i8* %133, i8** %23, align 8
  %134 = load i8*, i8** %18, align 8
  store i8* %134, i8** %10, align 8
  br label %135

135:                                              ; preds = %128, %114
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  br label %136

136:                                              ; preds = %408, %361, %326, %314, %302, %289, %279, %256, %253, %231, %199, %171, %135
  %137 = load i32, i32* %27, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %27, align 4
  %139 = icmp sgt i32 %137, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %136
  %141 = load i32*, i32** %20, align 8
  %142 = load i32*, i32** %22, align 8
  %143 = icmp ult i32* %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %140
  %145 = load i32, i32* %30, align 4
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  br label %148

148:                                              ; preds = %144, %140, %136
  %149 = phi i1 [ false, %140 ], [ false, %136 ], [ %147, %144 ]
  br i1 %149, label %150, label %409

150:                                              ; preds = %148
  %151 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %152 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %151, i32 0, i32 0
  %153 = load i32*, i32** %152, align 8
  %154 = load i32*, i32** %22, align 8
  %155 = load i32*, i32** %20, align 8
  %156 = load i8*, i8** %23, align 8
  %157 = load i8*, i8** %24, align 8
  %158 = load i8*, i8** %23, align 8
  %159 = ptrtoint i8* %157 to i64
  %160 = ptrtoint i8* %158 to i64
  %161 = sub i64 %159, %160
  %162 = trunc i64 %161 to i32
  %163 = call i32 @dn_expand(i32* %153, i32* %154, i32* %155, i8* %156, i32 %162)
  store i32 %163, i32* %21, align 4
  %164 = load i32, i32* %21, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %150
  %167 = load i32 (i8*)*, i32 (i8*)** %33, align 8
  %168 = load i8*, i8** %23, align 8
  %169 = call i32 %167(i8* %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %174, label %171

171:                                              ; preds = %166, %150
  %172 = load i32, i32* %30, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %30, align 4
  br label %136

174:                                              ; preds = %166
  %175 = load i32, i32* %21, align 4
  %176 = load i32*, i32** %20, align 8
  %177 = sext i32 %175 to i64
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  store i32* %178, i32** %20, align 8
  %179 = load i32*, i32** %20, align 8
  %180 = call i32 @_getshort(i32* %179)
  store i32 %180, i32* %25, align 4
  %181 = load i64, i64* @INT16SZ, align 8
  %182 = load i32*, i32** %20, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 %181
  store i32* %183, i32** %20, align 8
  %184 = load i32*, i32** %20, align 8
  %185 = call i32 @_getshort(i32* %184)
  store i32 %185, i32* %26, align 4
  %186 = load i64, i64* @INT16SZ, align 8
  %187 = load i64, i64* @INT32SZ, align 8
  %188 = add nsw i64 %186, %187
  %189 = load i32*, i32** %20, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 %188
  store i32* %190, i32** %20, align 8
  %191 = load i32*, i32** %20, align 8
  %192 = call i32 @_getshort(i32* %191)
  store i32 %192, i32* %21, align 4
  %193 = load i64, i64* @INT16SZ, align 8
  %194 = load i32*, i32** %20, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 %193
  store i32* %195, i32** %20, align 8
  %196 = load i32, i32* %26, align 4
  %197 = load i32, i32* @C_IN, align 4
  %198 = icmp ne i32 %196, %197
  br i1 %198, label %199, label %204

199:                                              ; preds = %174
  %200 = load i32, i32* %21, align 4
  %201 = load i32*, i32** %20, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %20, align 8
  br label %136

204:                                              ; preds = %174
  %205 = load i32, i32* %11, align 4
  %206 = icmp eq i32 %205, 130
  br i1 %206, label %213, label %207

207:                                              ; preds = %204
  %208 = load i32, i32* %11, align 4
  %209 = icmp eq i32 %208, 129
  br i1 %209, label %213, label %210

210:                                              ; preds = %207
  %211 = load i32, i32* %11, align 4
  %212 = icmp eq i32 %211, 128
  br i1 %212, label %213, label %270

213:                                              ; preds = %210, %207, %204
  %214 = load i32, i32* %25, align 4
  %215 = load i32, i32* @T_CNAME, align 4
  %216 = icmp eq i32 %214, %215
  br i1 %216, label %217, label %270

217:                                              ; preds = %213
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 0
  %220 = load i32*, i32** %219, align 8
  %221 = load i32*, i32** %22, align 8
  %222 = load i32*, i32** %20, align 8
  %223 = trunc i64 %38 to i32
  %224 = call i32 @dn_expand(i32* %220, i32* %221, i32* %222, i8* %40, i32 %223)
  store i32 %224, i32* %21, align 4
  %225 = load i32, i32* %21, align 4
  %226 = icmp slt i32 %225, 0
  br i1 %226, label %231, label %227

227:                                              ; preds = %217
  %228 = load i32 (i8*)*, i32 (i8*)** %33, align 8
  %229 = call i32 %228(i8* %40)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %227, %217
  %232 = load i32, i32* %30, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %30, align 4
  br label %136

234:                                              ; preds = %227
  %235 = load i32, i32* %21, align 4
  %236 = load i32*, i32** %20, align 8
  %237 = sext i32 %235 to i64
  %238 = getelementptr inbounds i32, i32* %236, i64 %237
  store i32* %238, i32** %20, align 8
  %239 = call i32 @strlen(i8* %40)
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %21, align 4
  %241 = load i32, i32* %21, align 4
  %242 = sext i32 %241 to i64
  %243 = load i8*, i8** %24, align 8
  %244 = load i8*, i8** %23, align 8
  %245 = ptrtoint i8* %243 to i64
  %246 = ptrtoint i8* %244 to i64
  %247 = sub i64 %245, %246
  %248 = icmp sgt i64 %242, %247
  br i1 %248, label %253, label %249

249:                                              ; preds = %234
  %250 = load i32, i32* %21, align 4
  %251 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %252 = icmp sge i32 %250, %251
  br i1 %252, label %253, label %256

253:                                              ; preds = %249, %234
  %254 = load i32, i32* %30, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %30, align 4
  br label %136

256:                                              ; preds = %249
  %257 = load i8*, i8** %23, align 8
  %258 = load i8*, i8** %24, align 8
  %259 = load i8*, i8** %23, align 8
  %260 = ptrtoint i8* %258 to i64
  %261 = ptrtoint i8* %259 to i64
  %262 = sub i64 %260, %261
  %263 = trunc i64 %262 to i32
  %264 = call i32 @strlcpy(i8* %257, i8* %40, i32 %263)
  %265 = load i8*, i8** %23, align 8
  store i8* %265, i8** %18, align 8
  %266 = load i32, i32* %21, align 4
  %267 = load i8*, i8** %23, align 8
  %268 = sext i32 %266 to i64
  %269 = getelementptr inbounds i8, i8* %267, i64 %268
  store i8* %269, i8** %23, align 8
  br label %136

270:                                              ; preds = %213, %210
  %271 = load i32, i32* %11, align 4
  %272 = icmp eq i32 %271, 128
  br i1 %272, label %273, label %285

273:                                              ; preds = %270
  %274 = load i32, i32* %25, align 4
  %275 = icmp eq i32 %274, 130
  br i1 %275, label %284, label %276

276:                                              ; preds = %273
  %277 = load i32, i32* %25, align 4
  %278 = icmp eq i32 %277, 129
  br i1 %278, label %284, label %279

279:                                              ; preds = %276
  %280 = load i32, i32* %21, align 4
  %281 = load i32*, i32** %20, align 8
  %282 = sext i32 %280 to i64
  %283 = getelementptr inbounds i32, i32* %281, i64 %282
  store i32* %283, i32** %20, align 8
  br label %136

284:                                              ; preds = %276, %273
  br label %295

285:                                              ; preds = %270
  %286 = load i32, i32* %25, align 4
  %287 = load i32, i32* %11, align 4
  %288 = icmp ne i32 %286, %287
  br i1 %288, label %289, label %294

289:                                              ; preds = %285
  %290 = load i32, i32* %21, align 4
  %291 = load i32*, i32** %20, align 8
  %292 = sext i32 %290 to i64
  %293 = getelementptr inbounds i32, i32* %291, i64 %292
  store i32* %293, i32** %20, align 8
  br label %136

294:                                              ; preds = %285
  br label %295

295:                                              ; preds = %294, %284
  %296 = load i32, i32* %25, align 4
  switch i32 %296, label %400 [
    i32 130, label %297
    i32 129, label %297
  ]

297:                                              ; preds = %295, %295
  %298 = load i8*, i8** %18, align 8
  %299 = load i8*, i8** %23, align 8
  %300 = call i32 @strcasecmp(i8* %298, i8* %299)
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %297
  %303 = load i32, i32* %21, align 4
  %304 = load i32*, i32** %20, align 8
  %305 = sext i32 %303 to i64
  %306 = getelementptr inbounds i32, i32* %304, i64 %305
  store i32* %306, i32** %20, align 8
  br label %136

307:                                              ; preds = %297
  %308 = load i32, i32* %25, align 4
  %309 = icmp eq i32 %308, 130
  br i1 %309, label %310, label %319

310:                                              ; preds = %307
  %311 = load i32, i32* %21, align 4
  %312 = load i32, i32* @INADDRSZ, align 4
  %313 = icmp ne i32 %311, %312
  br i1 %313, label %314, label %319

314:                                              ; preds = %310
  %315 = load i32, i32* %21, align 4
  %316 = load i32*, i32** %20, align 8
  %317 = sext i32 %315 to i64
  %318 = getelementptr inbounds i32, i32* %316, i64 %317
  store i32* %318, i32** %20, align 8
  br label %136

319:                                              ; preds = %310, %307
  %320 = load i32, i32* %25, align 4
  %321 = icmp eq i32 %320, 129
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = load i32, i32* %21, align 4
  %324 = load i32, i32* @IN6ADDRSZ, align 4
  %325 = icmp ne i32 %323, %324
  br i1 %325, label %326, label %331

326:                                              ; preds = %322
  %327 = load i32, i32* %21, align 4
  %328 = load i32*, i32** %20, align 8
  %329 = sext i32 %327 to i64
  %330 = getelementptr inbounds i32, i32* %328, i64 %329
  store i32* %330, i32** %20, align 8
  br label %136

331:                                              ; preds = %322, %319
  %332 = load i32, i32* %29, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %343, label %334

334:                                              ; preds = %331
  %335 = load i8*, i8** %23, align 8
  store i8* %335, i8** %18, align 8
  %336 = load i8*, i8** %23, align 8
  %337 = call i32 @strlen(i8* %336)
  %338 = add nsw i32 %337, 1
  store i32 %338, i32* %36, align 4
  %339 = load i32, i32* %36, align 4
  %340 = load i8*, i8** %23, align 8
  %341 = sext i32 %339 to i64
  %342 = getelementptr inbounds i8, i8* %340, i64 %341
  store i8* %342, i8** %23, align 8
  br label %343

343:                                              ; preds = %334, %331
  %344 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %345 = bitcast %struct.addrinfo* %16 to i8*
  %346 = bitcast %struct.addrinfo* %344 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %345, i8* align 8 %346, i64 16, i1 false)
  %347 = load i32, i32* %25, align 4
  %348 = icmp eq i32 %347, 130
  br i1 %348, label %349, label %351

349:                                              ; preds = %343
  %350 = load i32, i32* @AF_INET, align 4
  br label %353

351:                                              ; preds = %343
  %352 = load i32, i32* @AF_INET6, align 4
  br label %353

353:                                              ; preds = %351, %349
  %354 = phi i32 [ %350, %349 ], [ %352, %351 ]
  %355 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 1
  store i32 %354, i32* %355, align 8
  %356 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %16, i32 0, i32 1
  %357 = load i32, i32* %356, align 8
  %358 = call %struct.afd* @find_afd(i32 %357)
  store %struct.afd* %358, %struct.afd** %17, align 8
  %359 = load %struct.afd*, %struct.afd** %17, align 8
  %360 = icmp eq %struct.afd* %359, null
  br i1 %360, label %361, label %366

361:                                              ; preds = %353
  %362 = load i32, i32* %21, align 4
  %363 = load i32*, i32** %20, align 8
  %364 = sext i32 %362 to i64
  %365 = getelementptr inbounds i32, i32* %363, i64 %364
  store i32* %365, i32** %20, align 8
  br label %136

366:                                              ; preds = %353
  %367 = load %struct.afd*, %struct.afd** %17, align 8
  %368 = load i32*, i32** %20, align 8
  %369 = bitcast i32* %368 to i8*
  %370 = call %struct.addrinfo* @get_ai(%struct.addrinfo* %16, %struct.afd* %367, i8* %369)
  %371 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %372 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %371, i32 0, i32 0
  store %struct.addrinfo* %370, %struct.addrinfo** %372, align 8
  %373 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %374 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %373, i32 0, i32 0
  %375 = load %struct.addrinfo*, %struct.addrinfo** %374, align 8
  %376 = icmp eq %struct.addrinfo* %375, null
  br i1 %376, label %377, label %380

377:                                              ; preds = %366
  %378 = load i32, i32* %30, align 4
  %379 = add nsw i32 %378, 1
  store i32 %379, i32* %30, align 4
  br label %380

380:                                              ; preds = %377, %366
  br label %381

381:                                              ; preds = %391, %380
  %382 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %383 = icmp ne %struct.addrinfo* %382, null
  br i1 %383, label %384, label %389

384:                                              ; preds = %381
  %385 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %386 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %385, i32 0, i32 0
  %387 = load %struct.addrinfo*, %struct.addrinfo** %386, align 8
  %388 = icmp ne %struct.addrinfo* %387, null
  br label %389

389:                                              ; preds = %384, %381
  %390 = phi i1 [ false, %381 ], [ %388, %384 ]
  br i1 %390, label %391, label %395

391:                                              ; preds = %389
  %392 = load %struct.addrinfo*, %struct.addrinfo** %15, align 8
  %393 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %392, i32 0, i32 0
  %394 = load %struct.addrinfo*, %struct.addrinfo** %393, align 8
  store %struct.addrinfo* %394, %struct.addrinfo** %15, align 8
  br label %381

395:                                              ; preds = %389
  %396 = load i32, i32* %21, align 4
  %397 = load i32*, i32** %20, align 8
  %398 = sext i32 %396 to i64
  %399 = getelementptr inbounds i32, i32* %397, i64 %398
  store i32* %399, i32** %20, align 8
  br label %402

400:                                              ; preds = %295
  %401 = call i32 (...) @abort() #5
  unreachable

402:                                              ; preds = %395
  %403 = load i32, i32* %30, align 4
  %404 = icmp ne i32 %403, 0
  br i1 %404, label %408, label %405

405:                                              ; preds = %402
  %406 = load i32, i32* %29, align 4
  %407 = add nsw i32 %406, 1
  store i32 %407, i32* %29, align 4
  br label %408

408:                                              ; preds = %405, %402
  br label %136

409:                                              ; preds = %148
  %410 = load i32, i32* %29, align 4
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %412, label %433

412:                                              ; preds = %409
  %413 = load i8*, i8** %18, align 8
  %414 = icmp ne i8* %413, null
  br i1 %414, label %421, label %415

415:                                              ; preds = %412
  %416 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %417 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  %418 = load %struct.addrinfo*, %struct.addrinfo** %417, align 8
  %419 = load i8*, i8** %10, align 8
  %420 = call i32 @get_canonname(%struct.addrinfo* %416, %struct.addrinfo* %418, i8* %419)
  br label %427

421:                                              ; preds = %412
  %422 = load %struct.addrinfo*, %struct.addrinfo** %12, align 8
  %423 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  %424 = load %struct.addrinfo*, %struct.addrinfo** %423, align 8
  %425 = load i8*, i8** %18, align 8
  %426 = call i32 @get_canonname(%struct.addrinfo* %422, %struct.addrinfo* %424, i8* %425)
  br label %427

427:                                              ; preds = %421, %415
  %428 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %429 = load i32, i32* @NETDB_SUCCESS, align 4
  %430 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %428, i32 %429)
  %431 = getelementptr inbounds %struct.addrinfo, %struct.addrinfo* %14, i32 0, i32 0
  %432 = load %struct.addrinfo*, %struct.addrinfo** %431, align 8
  store %struct.addrinfo* %432, %struct.addrinfo** %7, align 8
  store i32 1, i32* %35, align 4
  br label %447

433:                                              ; preds = %409
  %434 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %435 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %436 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %435, i32 0, i32 0
  %437 = load i32, i32* %436, align 4
  %438 = call i32 @ntohs(i32 %437)
  %439 = icmp sgt i32 %438, 0
  br i1 %439, label %440, label %442

440:                                              ; preds = %433
  %441 = load i32, i32* @NO_DATA, align 4
  br label %444

442:                                              ; preds = %433
  %443 = load i32, i32* @NO_RECOVERY, align 4
  br label %444

444:                                              ; preds = %442, %440
  %445 = phi i32 [ %441, %440 ], [ %443, %442 ]
  %446 = call i32 @RES_SET_H_ERRNO(%struct.TYPE_8__* %434, i32 %445)
  store %struct.addrinfo* null, %struct.addrinfo** %7, align 8
  store i32 1, i32* %35, align 4
  br label %447

447:                                              ; preds = %444, %427, %124, %98, %73, %50
  %448 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %448)
  %449 = load %struct.addrinfo*, %struct.addrinfo** %7, align 8
  ret %struct.addrinfo* %449
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(%struct.addrinfo*, i32, i32) #2

declare dso_local i32 @res_hnok(i8*) #2

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @RES_SET_H_ERRNO(%struct.TYPE_8__*, i32) #2

declare dso_local i32 @dn_expand(i32*, i32*, i32*, i8*, i32) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @_getshort(i32*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strcasecmp(i8*, i8*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.afd* @find_afd(i32) #2

declare dso_local %struct.addrinfo* @get_ai(%struct.addrinfo*, %struct.afd*, i8*) #2

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #4

declare dso_local i32 @get_canonname(%struct.addrinfo*, %struct.addrinfo*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
