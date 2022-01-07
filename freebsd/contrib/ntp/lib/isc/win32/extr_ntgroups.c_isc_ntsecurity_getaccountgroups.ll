; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_ntgroups.c_isc_ntsecurity_getaccountgroups.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/lib/isc/win32/extr_ntgroups.c_isc_ntsecurity_getaccountgroups.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@LG_INCLUDE_INDIRECT = common dso_local global i64 0, align 8
@MAX_PREFERRED_LENGTH = common dso_local global i64 0, align 8
@MAX_NAME_LENGTH = common dso_local global i32 0, align 4
@NERR_Success = common dso_local global i64 0, align 8
@ERROR_ACCESS_DENIED = common dso_local global i64 0, align 8
@ISC_R_NOPERM = common dso_local global i32 0, align 4
@ERROR_MORE_DATA = common dso_local global i64 0, align 8
@ISC_R_NOSPACE = common dso_local global i32 0, align 4
@NERR_UserNotFound = common dso_local global i64 0, align 8
@ISC_R_NOMEMORY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@ISC_R_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @isc_ntsecurity_getaccountgroups(i8* %0, i8** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca %struct.TYPE_4__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_4__*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i8** %1, i8*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %14, align 8
  store i64 0, i64* %15, align 8
  %26 = load i64, i64* @LG_INCLUDE_INDIRECT, align 8
  store i64 %26, i64* %16, align 8
  %27 = load i64, i64* @MAX_PREFERRED_LENGTH, align 8
  store i64 %27, i64* %17, align 8
  store i64 0, i64* %18, align 8
  store i64 0, i64* %19, align 8
  store i64 0, i64* %21, align 8
  %28 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %23, align 8
  %31 = alloca i32, i64 %29, align 16
  store i64 %29, i64* %24, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* @MAX_NAME_LENGTH, align 4
  %34 = call i64 @mbstowcs(i32* %31, i8* %32, i32 %33)
  store i64 %34, i64* %22, align 8
  %35 = load i32*, i32** %9, align 8
  store i32 0, i32* %35, align 4
  %36 = load i64, i64* %15, align 8
  %37 = load i64, i64* %16, align 8
  %38 = bitcast %struct.TYPE_4__** %13 to i32*
  %39 = load i64, i64* %17, align 8
  %40 = call i64 @NetUserGetLocalGroups(i32* null, i32* %31, i64 %36, i64 %37, i32* %38, i64 %39, i64* %18, i64* %19)
  store i64 %40, i64* %20, align 8
  %41 = load i64, i64* %20, align 8
  %42 = load i64, i64* @NERR_Success, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %62

44:                                               ; preds = %4
  %45 = load i64, i64* %20, align 8
  %46 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %49, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %290

50:                                               ; preds = %44
  %51 = load i64, i64* %20, align 8
  %52 = load i64, i64* @ERROR_MORE_DATA, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %50
  %55 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %55, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %290

56:                                               ; preds = %50
  %57 = load i64, i64* %20, align 8
  %58 = load i64, i64* @NERR_UserNotFound, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  store i64 0, i64* %18, align 8
  br label %61

61:                                               ; preds = %60, %56
  br label %62

62:                                               ; preds = %61, %4
  store i64 0, i64* %21, align 8
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %64 = icmp ne %struct.TYPE_4__* %63, null
  br i1 %64, label %65, label %156

65:                                               ; preds = %62
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  store %struct.TYPE_4__* %66, %struct.TYPE_4__** %11, align 8
  store i64 0, i64* %12, align 8
  br label %67

67:                                               ; preds = %152, %65
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* %18, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %8, align 4
  %75 = icmp ult i32 %73, %74
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi i1 [ false, %67 ], [ %75, %71 ]
  br i1 %77, label %78, label %155

78:                                               ; preds = %76
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %80 = icmp ne %struct.TYPE_4__* %79, null
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %84 = icmp eq %struct.TYPE_4__* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %155

86:                                               ; preds = %78
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @wcslen(i32 %89)
  store i64 %90, i64* %22, align 8
  %91 = load i64, i64* %22, align 8
  %92 = add i64 %91, 1
  %93 = call i64 @malloc(i64 %92)
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8**, i8*** %7, align 8
  %96 = load i32*, i32** %9, align 8
  %97 = load i32, i32* %96, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds i8*, i8** %95, i64 %98
  store i8* %94, i8** %99, align 8
  %100 = load i8**, i8*** %7, align 8
  %101 = load i32*, i32** %9, align 8
  %102 = load i32, i32* %101, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds i8*, i8** %100, i64 %103
  %105 = load i8*, i8** %104, align 8
  %106 = icmp eq i8* %105, null
  br i1 %106, label %107, label %109

107:                                              ; preds = %86
  %108 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %108, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %290

109:                                              ; preds = %86
  %110 = load i8**, i8*** %7, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32, i32* %111, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i8*, i8** %110, i64 %113
  %115 = load i8*, i8** %114, align 8
  %116 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = load i64, i64* %22, align 8
  %120 = call i64 @wcstombs(i8* %115, i32 %118, i64 %119)
  store i64 %120, i64* %22, align 8
  %121 = load i8**, i8*** %7, align 8
  %122 = load i32*, i32** %9, align 8
  %123 = load i32, i32* %122, align 4
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds i8*, i8** %121, i64 %124
  %126 = load i8*, i8** %125, align 8
  %127 = load i64, i64* %22, align 8
  %128 = getelementptr inbounds i8, i8* %126, i64 %127
  store i8 0, i8* %128, align 1
  %129 = load i8**, i8*** %7, align 8
  %130 = load i32*, i32** %9, align 8
  %131 = load i32, i32* %130, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i8*, i8** %129, i64 %132
  %134 = load i8*, i8** %133, align 8
  %135 = call i64 @strcmp(i8* %134, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %136 = icmp eq i64 %135, 0
  br i1 %136, label %137, label %145

137:                                              ; preds = %109
  %138 = load i8**, i8*** %7, align 8
  %139 = load i32*, i32** %9, align 8
  %140 = load i32, i32* %139, align 4
  %141 = zext i32 %140 to i64
  %142 = getelementptr inbounds i8*, i8** %138, i64 %141
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @free(i8* %143)
  br label %149

145:                                              ; preds = %109
  %146 = load i32*, i32** %9, align 8
  %147 = load i32, i32* %146, align 4
  %148 = add i32 %147, 1
  store i32 %148, i32* %146, align 4
  br label %149

149:                                              ; preds = %145, %137
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 1
  store %struct.TYPE_4__* %151, %struct.TYPE_4__** %11, align 8
  br label %152

152:                                              ; preds = %149
  %153 = load i64, i64* %12, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %12, align 8
  br label %67

155:                                              ; preds = %85, %76
  br label %156

156:                                              ; preds = %155, %62
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %158 = icmp ne %struct.TYPE_4__* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %156
  %160 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %161 = call i32 @NetApiBufferFree(%struct.TYPE_4__* %160)
  br label %162

162:                                              ; preds = %159, %156
  %163 = load i64, i64* %15, align 8
  %164 = bitcast %struct.TYPE_4__** %14 to i32*
  %165 = load i64, i64* %17, align 8
  %166 = call i64 @NetUserGetGroups(i32* null, i32* %31, i64 %163, i32* %164, i64 %165, i64* %18, i64* %19)
  store i64 %166, i64* %20, align 8
  %167 = load i64, i64* %20, align 8
  %168 = load i64, i64* @NERR_Success, align 8
  %169 = icmp ne i64 %167, %168
  br i1 %169, label %170, label %188

170:                                              ; preds = %162
  %171 = load i64, i64* %20, align 8
  %172 = load i64, i64* @ERROR_ACCESS_DENIED, align 8
  %173 = icmp eq i64 %171, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %170
  %175 = load i32, i32* @ISC_R_NOPERM, align 4
  store i32 %175, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %290

176:                                              ; preds = %170
  %177 = load i64, i64* %20, align 8
  %178 = load i64, i64* @ERROR_MORE_DATA, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %182

180:                                              ; preds = %176
  %181 = load i32, i32* @ISC_R_NOSPACE, align 4
  store i32 %181, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %290

182:                                              ; preds = %176
  %183 = load i64, i64* %20, align 8
  %184 = load i64, i64* @NERR_UserNotFound, align 8
  %185 = icmp eq i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %182
  store i64 0, i64* %18, align 8
  br label %187

187:                                              ; preds = %186, %182
  br label %188

188:                                              ; preds = %187, %162
  %189 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %190 = icmp ne %struct.TYPE_4__* %189, null
  br i1 %190, label %191, label %282

191:                                              ; preds = %188
  %192 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  store %struct.TYPE_4__* %192, %struct.TYPE_4__** %10, align 8
  store i64 0, i64* %12, align 8
  br label %193

193:                                              ; preds = %278, %191
  %194 = load i64, i64* %12, align 8
  %195 = load i64, i64* %18, align 8
  %196 = icmp slt i64 %194, %195
  br i1 %196, label %197, label %202

197:                                              ; preds = %193
  %198 = load i32*, i32** %9, align 8
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %8, align 4
  %201 = icmp ult i32 %199, %200
  br label %202

202:                                              ; preds = %197, %193
  %203 = phi i1 [ false, %193 ], [ %201, %197 ]
  br i1 %203, label %204, label %281

204:                                              ; preds = %202
  %205 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %206 = icmp ne %struct.TYPE_4__* %205, null
  %207 = zext i1 %206 to i32
  %208 = call i32 @assert(i32 %207)
  %209 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %210 = icmp eq %struct.TYPE_4__* %209, null
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %281

212:                                              ; preds = %204
  %213 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @wcslen(i32 %215)
  store i64 %216, i64* %22, align 8
  %217 = load i64, i64* %22, align 8
  %218 = add i64 %217, 1
  %219 = call i64 @malloc(i64 %218)
  %220 = inttoptr i64 %219 to i8*
  %221 = load i8**, i8*** %7, align 8
  %222 = load i32*, i32** %9, align 8
  %223 = load i32, i32* %222, align 4
  %224 = zext i32 %223 to i64
  %225 = getelementptr inbounds i8*, i8** %221, i64 %224
  store i8* %220, i8** %225, align 8
  %226 = load i8**, i8*** %7, align 8
  %227 = load i32*, i32** %9, align 8
  %228 = load i32, i32* %227, align 4
  %229 = zext i32 %228 to i64
  %230 = getelementptr inbounds i8*, i8** %226, i64 %229
  %231 = load i8*, i8** %230, align 8
  %232 = icmp eq i8* %231, null
  br i1 %232, label %233, label %235

233:                                              ; preds = %212
  %234 = load i32, i32* @ISC_R_NOMEMORY, align 4
  store i32 %234, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %290

235:                                              ; preds = %212
  %236 = load i8**, i8*** %7, align 8
  %237 = load i32*, i32** %9, align 8
  %238 = load i32, i32* %237, align 4
  %239 = zext i32 %238 to i64
  %240 = getelementptr inbounds i8*, i8** %236, i64 %239
  %241 = load i8*, i8** %240, align 8
  %242 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %243 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %242, i32 0, i32 0
  %244 = load i32, i32* %243, align 4
  %245 = load i64, i64* %22, align 8
  %246 = call i64 @wcstombs(i8* %241, i32 %244, i64 %245)
  store i64 %246, i64* %22, align 8
  %247 = load i8**, i8*** %7, align 8
  %248 = load i32*, i32** %9, align 8
  %249 = load i32, i32* %248, align 4
  %250 = zext i32 %249 to i64
  %251 = getelementptr inbounds i8*, i8** %247, i64 %250
  %252 = load i8*, i8** %251, align 8
  %253 = load i64, i64* %22, align 8
  %254 = getelementptr inbounds i8, i8* %252, i64 %253
  store i8 0, i8* %254, align 1
  %255 = load i8**, i8*** %7, align 8
  %256 = load i32*, i32** %9, align 8
  %257 = load i32, i32* %256, align 4
  %258 = zext i32 %257 to i64
  %259 = getelementptr inbounds i8*, i8** %255, i64 %258
  %260 = load i8*, i8** %259, align 8
  %261 = call i64 @strcmp(i8* %260, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %262 = icmp eq i64 %261, 0
  br i1 %262, label %263, label %271

263:                                              ; preds = %235
  %264 = load i8**, i8*** %7, align 8
  %265 = load i32*, i32** %9, align 8
  %266 = load i32, i32* %265, align 4
  %267 = zext i32 %266 to i64
  %268 = getelementptr inbounds i8*, i8** %264, i64 %267
  %269 = load i8*, i8** %268, align 8
  %270 = call i32 @free(i8* %269)
  br label %275

271:                                              ; preds = %235
  %272 = load i32*, i32** %9, align 8
  %273 = load i32, i32* %272, align 4
  %274 = add i32 %273, 1
  store i32 %274, i32* %272, align 4
  br label %275

275:                                              ; preds = %271, %263
  %276 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %277 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %276, i32 1
  store %struct.TYPE_4__* %277, %struct.TYPE_4__** %10, align 8
  br label %278

278:                                              ; preds = %275
  %279 = load i64, i64* %12, align 8
  %280 = add nsw i64 %279, 1
  store i64 %280, i64* %12, align 8
  br label %193

281:                                              ; preds = %211, %202
  br label %282

282:                                              ; preds = %281, %188
  %283 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %284 = icmp ne %struct.TYPE_4__* %283, null
  br i1 %284, label %285, label %288

285:                                              ; preds = %282
  %286 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %287 = call i32 @NetApiBufferFree(%struct.TYPE_4__* %286)
  br label %288

288:                                              ; preds = %285, %282
  %289 = load i32, i32* @ISC_R_SUCCESS, align 4
  store i32 %289, i32* %5, align 4
  store i32 1, i32* %25, align 4
  br label %290

290:                                              ; preds = %288, %233, %180, %174, %107, %54, %48
  %291 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %291)
  %292 = load i32, i32* %5, align 4
  ret i32 %292
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @mbstowcs(i32*, i8*, i32) #2

declare dso_local i64 @NetUserGetLocalGroups(i32*, i32*, i64, i64, i32*, i64, i64*, i64*) #2

declare dso_local i32 @assert(i32) #2

declare dso_local i64 @wcslen(i32) #2

declare dso_local i64 @malloc(i64) #2

declare dso_local i64 @wcstombs(i8*, i32, i64) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @NetApiBufferFree(%struct.TYPE_4__*) #2

declare dso_local i64 @NetUserGetGroups(i32*, i32*, i64, i32*, i64, i64*, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
