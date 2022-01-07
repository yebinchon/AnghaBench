; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetbydns.c_getnetanswer.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_getnetbydns.c_getnetanswer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.netent = type { i8**, i8*, i64, i32 }
%struct.netent_data = type { i8*, i8** }

@MAXHOSTNAMELEN = common dso_local global i32 0, align 4
@HFIXEDSZ = common dso_local global i32 0, align 4
@HOST_NOT_FOUND = common dso_local global i32 0, align 4
@TRY_AGAIN = common dso_local global i32 0, align 4
@QFIXEDSZ = common dso_local global i64 0, align 8
@INT32SZ = common dso_local global i32 0, align 4
@C_IN = common dso_local global i32 0, align 4
@T_PTR = common dso_local global i32 0, align 4
@AF_INET = common dso_local global i32 0, align 4
@AF_UNSPEC = common dso_local global i32 0, align 4
@NETDB_INTERNAL = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, %struct.netent*, %struct.netent_data*, i32)* @getnetanswer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @getnetanswer(%struct.TYPE_4__* %0, i32 %1, i32 %2, %struct.netent* %3, %struct.netent_data* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.netent*, align 8
  %12 = alloca %struct.netent_data*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca i8**, align 8
  %30 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.netent* %3, %struct.netent** %11, align 8
  store %struct.netent_data* %4, %struct.netent_data** %12, align 8
  store i32 %5, i32* %13, align 4
  %31 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %32 = zext i32 %31 to i64
  %33 = call i8* @llvm.stacksave()
  store i8* %33, i8** %23, align 8
  %34 = alloca i8, i64 %32, align 16
  store i64 %32, i64* %24, align 8
  %35 = load i32, i32* @MAXHOSTNAMELEN, align 4
  %36 = zext i32 %35 to i64
  %37 = alloca i8, i64 %36, align 16
  store i64 %36, i64* %25, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32* %43, i32** %17, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  store %struct.TYPE_5__* %45, %struct.TYPE_5__** %14, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ntohs(i32 %48)
  store i32 %49, i32* %20, align 4
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @ntohs(i32 %52)
  store i32 %53, i32* %21, align 4
  %54 = load %struct.netent_data*, %struct.netent_data** %12, align 8
  %55 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  store i8* %56, i8** %27, align 8
  %57 = load %struct.netent_data*, %struct.netent_data** %12, align 8
  %58 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 8
  store i8* %60, i8** %28, align 8
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* @HFIXEDSZ, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  store i32* %66, i32** %15, align 8
  %67 = load i32, i32* %21, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %83, label %69

69:                                               ; preds = %6
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* @HOST_NOT_FOUND, align 4
  %77 = call i32 @RES_SET_H_ERRNO(i32 %75, i32 %76)
  br label %82

78:                                               ; preds = %69
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* @TRY_AGAIN, align 4
  %81 = call i32 @RES_SET_H_ERRNO(i32 %79, i32 %80)
  br label %82

82:                                               ; preds = %78, %74
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %296

83:                                               ; preds = %6
  br label %84

84:                                               ; preds = %88, %83
  %85 = load i32, i32* %21, align 4
  %86 = add nsw i32 %85, -1
  store i32 %86, i32* %21, align 4
  %87 = icmp sgt i32 %85, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %84
  %89 = load i32*, i32** %15, align 8
  %90 = load i32*, i32** %17, align 8
  %91 = call i64 @__dn_skipname(i32* %89, i32* %90)
  %92 = load i64, i64* @QFIXEDSZ, align 8
  %93 = add nsw i64 %91, %92
  %94 = load i32*, i32** %15, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 %93
  store i32* %95, i32** %15, align 8
  br label %84

96:                                               ; preds = %84
  %97 = load %struct.netent_data*, %struct.netent_data** %12, align 8
  %98 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %97, i32 0, i32 1
  %99 = load i8**, i8*** %98, align 8
  store i8** %99, i8*** %29, align 8
  %100 = load i8**, i8*** %29, align 8
  store i8* null, i8** %100, align 8
  %101 = load %struct.netent_data*, %struct.netent_data** %12, align 8
  %102 = getelementptr inbounds %struct.netent_data, %struct.netent_data* %101, i32 0, i32 1
  %103 = load i8**, i8*** %102, align 8
  %104 = load %struct.netent*, %struct.netent** %11, align 8
  %105 = getelementptr inbounds %struct.netent, %struct.netent* %104, i32 0, i32 0
  store i8** %103, i8*** %105, align 8
  store i32 0, i32* %22, align 4
  br label %106

106:                                              ; preds = %223, %96
  %107 = load i32, i32* %20, align 4
  %108 = add nsw i32 %107, -1
  store i32 %108, i32* %20, align 4
  %109 = icmp sge i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %106
  %111 = load i32*, i32** %15, align 8
  %112 = load i32*, i32** %17, align 8
  %113 = icmp ult i32* %111, %112
  br label %114

114:                                              ; preds = %110, %106
  %115 = phi i1 [ false, %106 ], [ %113, %110 ]
  br i1 %115, label %116, label %224

116:                                              ; preds = %114
  %117 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32*, i32** %118, align 8
  %120 = load i32*, i32** %17, align 8
  %121 = load i32*, i32** %15, align 8
  %122 = load i8*, i8** %27, align 8
  %123 = load i8*, i8** %28, align 8
  %124 = load i8*, i8** %27, align 8
  %125 = ptrtoint i8* %123 to i64
  %126 = ptrtoint i8* %124 to i64
  %127 = sub i64 %125, %126
  %128 = trunc i64 %127 to i32
  %129 = call i32 @dn_expand(i32* %119, i32* %120, i32* %121, i8* %122, i32 %128)
  store i32 %129, i32* %16, align 4
  %130 = load i32, i32* %16, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %136, label %132

132:                                              ; preds = %116
  %133 = load i8*, i8** %27, align 8
  %134 = call i32 @res_dnok(i8* %133)
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %137, label %136

136:                                              ; preds = %132, %116
  br label %224

137:                                              ; preds = %132
  %138 = load i32, i32* %16, align 4
  %139 = load i32*, i32** %15, align 8
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %139, i64 %140
  store i32* %141, i32** %15, align 8
  %142 = getelementptr inbounds i8, i8* %37, i64 0
  store i8 0, i8* %142, align 16
  %143 = getelementptr inbounds i8, i8* %37, i64 0
  %144 = load i8*, i8** %27, align 8
  %145 = sub i64 %36, 1
  %146 = trunc i64 %145 to i32
  %147 = call i32 @strncpy(i8* %143, i8* %144, i32 %146)
  %148 = sub i64 %36, 1
  %149 = getelementptr inbounds i8, i8* %37, i64 %148
  store i8 0, i8* %149, align 1
  %150 = load i32, i32* %18, align 4
  %151 = load i32*, i32** %15, align 8
  %152 = call i32 @GETSHORT(i32 %150, i32* %151)
  %153 = load i32, i32* %19, align 4
  %154 = load i32*, i32** %15, align 8
  %155 = call i32 @GETSHORT(i32 %153, i32* %154)
  %156 = load i32, i32* @INT32SZ, align 4
  %157 = load i32*, i32** %15, align 8
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  store i32* %159, i32** %15, align 8
  %160 = load i32, i32* %16, align 4
  %161 = load i32*, i32** %15, align 8
  %162 = call i32 @GETSHORT(i32 %160, i32* %161)
  %163 = load i32, i32* %19, align 4
  %164 = load i32, i32* @C_IN, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %223

166:                                              ; preds = %137
  %167 = load i32, i32* %18, align 4
  %168 = load i32, i32* @T_PTR, align 4
  %169 = icmp eq i32 %167, %168
  br i1 %169, label %170, label %223

170:                                              ; preds = %166
  %171 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i32*, i32** %17, align 8
  %175 = load i32*, i32** %15, align 8
  %176 = load i8*, i8** %27, align 8
  %177 = load i8*, i8** %28, align 8
  %178 = load i8*, i8** %27, align 8
  %179 = ptrtoint i8* %177 to i64
  %180 = ptrtoint i8* %178 to i64
  %181 = sub i64 %179, %180
  %182 = trunc i64 %181 to i32
  %183 = call i32 @dn_expand(i32* %173, i32* %174, i32* %175, i8* %176, i32 %182)
  store i32 %183, i32* %16, align 4
  %184 = load i32, i32* %16, align 4
  %185 = icmp slt i32 %184, 0
  br i1 %185, label %190, label %186

186:                                              ; preds = %170
  %187 = load i8*, i8** %27, align 8
  %188 = call i32 @res_hnok(i8* %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %186, %170
  %191 = load i32, i32* %16, align 4
  %192 = load i32*, i32** %15, align 8
  %193 = sext i32 %191 to i64
  %194 = getelementptr inbounds i32, i32* %192, i64 %193
  store i32* %194, i32** %15, align 8
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %296

195:                                              ; preds = %186
  %196 = load i32, i32* %16, align 4
  %197 = load i32*, i32** %15, align 8
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %197, i64 %198
  store i32* %199, i32** %15, align 8
  %200 = load i8*, i8** %27, align 8
  %201 = load i8**, i8*** %29, align 8
  %202 = getelementptr inbounds i8*, i8** %201, i32 1
  store i8** %202, i8*** %29, align 8
  store i8* %200, i8** %201, align 8
  %203 = load i8*, i8** %27, align 8
  %204 = call i32 @strlen(i8* %203)
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %16, align 4
  %206 = load i32, i32* %16, align 4
  %207 = load i8*, i8** %27, align 8
  %208 = sext i32 %206 to i64
  %209 = getelementptr inbounds i8, i8* %207, i64 %208
  store i8* %209, i8** %27, align 8
  %210 = load i32, i32* %19, align 4
  %211 = load i32, i32* @C_IN, align 4
  %212 = icmp eq i32 %210, %211
  br i1 %212, label %213, label %215

213:                                              ; preds = %195
  %214 = load i32, i32* @AF_INET, align 4
  br label %217

215:                                              ; preds = %195
  %216 = load i32, i32* @AF_UNSPEC, align 4
  br label %217

217:                                              ; preds = %215, %213
  %218 = phi i32 [ %214, %213 ], [ %216, %215 ]
  %219 = load %struct.netent*, %struct.netent** %11, align 8
  %220 = getelementptr inbounds %struct.netent, %struct.netent* %219, i32 0, i32 3
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* %22, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %22, align 4
  br label %223

223:                                              ; preds = %217, %166, %137
  br label %106

224:                                              ; preds = %136, %114
  %225 = load i32, i32* %22, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %292

227:                                              ; preds = %224
  %228 = load i8**, i8*** %29, align 8
  store i8* null, i8** %228, align 8
  %229 = load i32, i32* %10, align 4
  switch i32 %229, label %287 [
    i32 129, label %230
    i32 128, label %239
  ]

230:                                              ; preds = %227
  %231 = load %struct.netent*, %struct.netent** %11, align 8
  %232 = getelementptr inbounds %struct.netent, %struct.netent* %231, i32 0, i32 0
  %233 = load i8**, i8*** %232, align 8
  %234 = load i8*, i8** %233, align 8
  %235 = load %struct.netent*, %struct.netent** %11, align 8
  %236 = getelementptr inbounds %struct.netent, %struct.netent* %235, i32 0, i32 1
  store i8* %234, i8** %236, align 8
  %237 = load %struct.netent*, %struct.netent** %11, align 8
  %238 = getelementptr inbounds %struct.netent, %struct.netent* %237, i32 0, i32 2
  store i64 0, i64* %238, align 8
  br label %287

239:                                              ; preds = %227
  %240 = load %struct.netent*, %struct.netent** %11, align 8
  %241 = getelementptr inbounds %struct.netent, %struct.netent* %240, i32 0, i32 0
  %242 = load i8**, i8*** %241, align 8
  %243 = load i8*, i8** %242, align 8
  store i8* %243, i8** %26, align 8
  %244 = call i32 @strlen(i8* %37)
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %16, align 4
  %246 = load i8*, i8** %28, align 8
  %247 = load i8*, i8** %27, align 8
  %248 = ptrtoint i8* %246 to i64
  %249 = ptrtoint i8* %247 to i64
  %250 = sub i64 %248, %249
  %251 = load i32, i32* %16, align 4
  %252 = sext i32 %251 to i64
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %254, label %259

254:                                              ; preds = %239
  %255 = load i32, i32* %13, align 4
  %256 = load i32, i32* @NETDB_INTERNAL, align 4
  %257 = call i32 @RES_SET_H_ERRNO(i32 %255, i32 %256)
  %258 = load i32, i32* @ENOBUFS, align 4
  store i32 %258, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %296

259:                                              ; preds = %239
  %260 = load i8*, i8** %27, align 8
  %261 = load i8*, i8** %28, align 8
  %262 = load i8*, i8** %27, align 8
  %263 = ptrtoint i8* %261 to i64
  %264 = ptrtoint i8* %262 to i64
  %265 = sub i64 %263, %264
  %266 = trunc i64 %265 to i32
  %267 = call i32 @strlcpy(i8* %260, i8* %37, i32 %266)
  %268 = load i8*, i8** %27, align 8
  %269 = load %struct.netent*, %struct.netent** %11, align 8
  %270 = getelementptr inbounds %struct.netent, %struct.netent* %269, i32 0, i32 1
  store i8* %268, i8** %270, align 8
  %271 = load i8*, i8** %26, align 8
  %272 = call i32 @strlen(i8* %271)
  %273 = add nsw i32 %272, 1
  %274 = sext i32 %273 to i64
  %275 = icmp ugt i64 %274, %32
  br i1 %275, label %276, label %281

276:                                              ; preds = %259
  %277 = load i32, i32* %13, align 4
  %278 = load i32, i32* @NETDB_INTERNAL, align 4
  %279 = call i32 @RES_SET_H_ERRNO(i32 %277, i32 %278)
  %280 = load i32, i32* @ENOBUFS, align 4
  store i32 %280, i32* @errno, align 4
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %296

281:                                              ; preds = %259
  %282 = load i8*, i8** %26, align 8
  %283 = call i32 @ipreverse(i8* %282, i8* %34)
  %284 = call i64 @inet_network(i8* %34)
  %285 = load %struct.netent*, %struct.netent** %11, align 8
  %286 = getelementptr inbounds %struct.netent, %struct.netent* %285, i32 0, i32 2
  store i64 %284, i64* %286, align 8
  br label %287

287:                                              ; preds = %227, %281, %230
  %288 = load %struct.netent*, %struct.netent** %11, align 8
  %289 = getelementptr inbounds %struct.netent, %struct.netent* %288, i32 0, i32 0
  %290 = load i8**, i8*** %289, align 8
  %291 = getelementptr inbounds i8*, i8** %290, i32 1
  store i8** %291, i8*** %289, align 8
  store i32 0, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %296

292:                                              ; preds = %224
  %293 = load i32, i32* %13, align 4
  %294 = load i32, i32* @TRY_AGAIN, align 4
  %295 = call i32 @RES_SET_H_ERRNO(i32 %293, i32 %294)
  store i32 -1, i32* %7, align 4
  store i32 1, i32* %30, align 4
  br label %296

296:                                              ; preds = %292, %287, %276, %254, %190, %82
  %297 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %297)
  %298 = load i32, i32* %7, align 4
  ret i32 %298
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ntohs(i32) #2

declare dso_local i32 @RES_SET_H_ERRNO(i32, i32) #2

declare dso_local i64 @__dn_skipname(i32*, i32*) #2

declare dso_local i32 @dn_expand(i32*, i32*, i32*, i8*, i32) #2

declare dso_local i32 @res_dnok(i8*) #2

declare dso_local i32 @strncpy(i8*, i8*, i32) #2

declare dso_local i32 @GETSHORT(i32, i32*) #2

declare dso_local i32 @res_hnok(i8*) #2

declare dso_local i32 @strlen(i8*) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @ipreverse(i8*, i8*) #2

declare dso_local i64 @inet_network(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
