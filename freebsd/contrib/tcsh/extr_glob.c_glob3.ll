; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_glob.c_glob3.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/tcsh/extr_glob.c_glob3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.strbuf = type { i64, i64* }
%struct.TYPE_4__ = type { i32, i64 (i64*, i32)* }
%struct.dirent = type { i64* }
%struct.stat = type { i32 }

@GLOB_ALTNOT = common dso_local global i32 0, align 4
@M_ALTNOT = common dso_local global i64 0, align 8
@M_NOT = common dso_local global i64 0, align 8
@errno = common dso_local global i32 0, align 4
@MB_LEN_MAX = common dso_local global i32 0, align 4
@M_MASK = common dso_local global i64 0, align 8
@M_ALL = common dso_local global i64 0, align 8
@EOS = common dso_local global i64 0, align 8
@GLOB_ERR = common dso_local global i32 0, align 4
@GLOB_ABEND = common dso_local global i32 0, align 4
@DOT = common dso_local global i64 0, align 8
@GLOB_DOT = common dso_local global i32 0, align 4
@SEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.strbuf*, i64*, i64*, i64*, %struct.TYPE_4__*, i32)* @glob3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @glob3(%struct.strbuf* %0, i64* %1, i64* %2, i64* %3, %struct.TYPE_4__* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.strbuf*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64*, align 8
  %12 = alloca %struct.TYPE_4__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca %struct.dirent*, align 8
  %16 = alloca %struct.stat, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i64*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  store %struct.strbuf* %0, %struct.strbuf** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64* %2, i64** %10, align 8
  store i64* %3, i64** %11, align 8
  store %struct.TYPE_4__* %4, %struct.TYPE_4__** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @GLOB_ALTNOT, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %6
  %32 = load i64, i64* @M_ALTNOT, align 8
  br label %35

33:                                               ; preds = %6
  %34 = load i64, i64* @M_NOT, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i64 [ %32, %31 ], [ %34, %33 ]
  store i64 %36, i64* %18, align 8
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  store i64* null, i64** %22, align 8
  %37 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %38 = call i32 @strbuf_terminate(%struct.strbuf* %37)
  %39 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %40 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %19, align 8
  store i32 0, i32* %17, align 4
  store i32 0, i32* @errno, align 4
  br label %42

42:                                               ; preds = %84, %35
  %43 = load i64*, i64** %11, align 8
  %44 = load i64*, i64** %10, align 8
  %45 = icmp ult i64* %43, %44
  br i1 %45, label %46, label %88

46:                                               ; preds = %42
  %47 = load i64*, i64** %11, align 8
  %48 = load i32, i32* @MB_LEN_MAX, align 4
  %49 = call i64 @One_Char_mbtowc(i32* %23, i64* %47, i32 %48)
  store i64 %49, i64* %24, align 8
  %50 = load i64*, i64** %11, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @M_MASK, align 8
  %54 = and i64 %52, %53
  %55 = load i64, i64* @M_ALL, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %84

57:                                               ; preds = %46
  %58 = load i64*, i64** %11, align 8
  %59 = load i64, i64* %24, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @M_MASK, align 8
  %63 = and i64 %61, %62
  %64 = load i64, i64* @M_ALL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %57
  store i32 1, i32* %20, align 4
  %67 = load i64*, i64** %11, align 8
  %68 = load i64, i64* %24, align 8
  %69 = mul i64 2, %68
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @M_MASK, align 8
  %73 = and i64 %71, %72
  %74 = load i64, i64* @M_ALL, align 8
  %75 = icmp eq i64 %73, %74
  %76 = zext i1 %75 to i32
  store i32 %76, i32* %21, align 4
  %77 = load i64*, i64** %11, align 8
  %78 = load i32, i32* %21, align 4
  %79 = add nsw i32 2, %78
  %80 = sext i32 %79 to i64
  %81 = load i64, i64* %24, align 8
  %82 = mul i64 %80, %81
  %83 = getelementptr inbounds i64, i64* %77, i64 %82
  store i64* %83, i64** %22, align 8
  br label %88

84:                                               ; preds = %57, %46
  %85 = load i64, i64* %24, align 8
  %86 = load i64*, i64** %11, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 %85
  store i64* %87, i64** %11, align 8
  br label %42

88:                                               ; preds = %66, %42
  %89 = load i32, i32* %20, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %140

91:                                               ; preds = %88
  %92 = load i64*, i64** %11, align 8
  %93 = load i64*, i64** %9, align 8
  %94 = icmp eq i64* %92, %93
  br i1 %94, label %95, label %120

95:                                               ; preds = %91
  %96 = load i64*, i64** %22, align 8
  %97 = load i64*, i64** %10, align 8
  %98 = icmp eq i64* %96, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %95
  %100 = load i64*, i64** %10, align 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @EOS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %99
  %105 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %106 = load i64*, i64** %10, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 -1
  %108 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @glob2(%struct.strbuf* %105, i64* %107, %struct.TYPE_4__* %108, i32 %109)
  br label %118

111:                                              ; preds = %99
  %112 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %113 = load i64*, i64** %10, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %116 = load i32, i32* %13, align 4
  %117 = call i32 @glob2(%struct.strbuf* %112, i64* %114, %struct.TYPE_4__* %115, i32 %116)
  br label %118

118:                                              ; preds = %111, %104
  %119 = phi i32 [ %110, %104 ], [ %117, %111 ]
  br label %128

120:                                              ; preds = %95, %91
  %121 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %122 = load i64*, i64** %9, align 8
  %123 = load i64*, i64** %10, align 8
  %124 = load i64*, i64** %22, align 8
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = call i32 @glob3(%struct.strbuf* %121, i64* %122, i64* %123, i64* %124, %struct.TYPE_4__* %125, i32 %126)
  br label %128

128:                                              ; preds = %120, %118
  %129 = phi i32 [ %119, %118 ], [ %127, %120 ]
  store i32 %129, i32* %17, align 4
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %128
  %133 = load i32, i32* %17, align 4
  store i32 %133, i32* %7, align 4
  br label %307

134:                                              ; preds = %128
  %135 = load i64, i64* %19, align 8
  %136 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %137 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %136, i32 0, i32 0
  store i64 %135, i64* %137, align 8
  %138 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %139 = call i32 @strbuf_terminate(%struct.strbuf* %138)
  br label %140

140:                                              ; preds = %134, %88
  %141 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %142 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %141, i32 0, i32 1
  %143 = load i64*, i64** %142, align 8
  %144 = load i64, i64* %143, align 8
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %158

146:                                              ; preds = %140
  %147 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %148 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = call i64 @Lstat(i64* %149, %struct.stat* %16)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %157, label %152

152:                                              ; preds = %146
  %153 = getelementptr inbounds %struct.stat, %struct.stat* %16, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @S_ISDIR(i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %152, %146
  store i32 0, i32* %7, align 4
  br label %307

158:                                              ; preds = %152, %140
  %159 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %160 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %159, i32 0, i32 1
  %161 = load i64*, i64** %160, align 8
  %162 = call i32* @Opendir(i64* %161)
  store i32* %162, i32** %14, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %189, label %164

164:                                              ; preds = %158
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 1
  %167 = load i64 (i64*, i32)*, i64 (i64*, i32)** %166, align 8
  %168 = icmp ne i64 (i64*, i32)* %167, null
  br i1 %168, label %169, label %179

169:                                              ; preds = %164
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  %172 = load i64 (i64*, i32)*, i64 (i64*, i32)** %171, align 8
  %173 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %174 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %173, i32 0, i32 1
  %175 = load i64*, i64** %174, align 8
  %176 = load i32, i32* @errno, align 4
  %177 = call i64 %172(i64* %175, i32 %176)
  %178 = icmp ne i64 %177, 0
  br i1 %178, label %186, label %179

179:                                              ; preds = %169, %164
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load i32, i32* @GLOB_ERR, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %188

186:                                              ; preds = %179, %169
  %187 = load i32, i32* @GLOB_ABEND, align 4
  store i32 %187, i32* %7, align 4
  br label %307

188:                                              ; preds = %179
  store i32 0, i32* %7, align 4
  br label %307

189:                                              ; preds = %158
  br label %190

190:                                              ; preds = %302, %292, %264, %236, %189
  %191 = load i32*, i32** %14, align 8
  %192 = call %struct.dirent* @readdir(i32* %191)
  store %struct.dirent* %192, %struct.dirent** %15, align 8
  %193 = icmp ne %struct.dirent* %192, null
  br i1 %193, label %194, label %303

194:                                              ; preds = %190
  %195 = load %struct.dirent*, %struct.dirent** %15, align 8
  %196 = getelementptr inbounds %struct.dirent, %struct.dirent* %195, i32 0, i32 0
  %197 = load i64*, i64** %196, align 8
  %198 = getelementptr inbounds i64, i64* %197, i64 0
  %199 = load i64, i64* %198, align 8
  %200 = load i64, i64* @DOT, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %238

202:                                              ; preds = %194
  %203 = load i64*, i64** %9, align 8
  %204 = load i64, i64* %203, align 8
  %205 = load i64, i64* @DOT, align 8
  %206 = icmp ne i64 %204, %205
  br i1 %206, label %207, label %238

207:                                              ; preds = %202
  %208 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %209 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* @GLOB_DOT, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %236

214:                                              ; preds = %207
  %215 = load %struct.dirent*, %struct.dirent** %15, align 8
  %216 = getelementptr inbounds %struct.dirent, %struct.dirent* %215, i32 0, i32 0
  %217 = load i64*, i64** %216, align 8
  %218 = getelementptr inbounds i64, i64* %217, i64 1
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %214
  %222 = load %struct.dirent*, %struct.dirent** %15, align 8
  %223 = getelementptr inbounds %struct.dirent, %struct.dirent* %222, i32 0, i32 0
  %224 = load i64*, i64** %223, align 8
  %225 = getelementptr inbounds i64, i64* %224, i64 1
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @DOT, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %237

229:                                              ; preds = %221
  %230 = load %struct.dirent*, %struct.dirent** %15, align 8
  %231 = getelementptr inbounds %struct.dirent, %struct.dirent* %230, i32 0, i32 0
  %232 = load i64*, i64** %231, align 8
  %233 = getelementptr inbounds i64, i64* %232, i64 2
  %234 = load i64, i64* %233, align 8
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %237, label %236

236:                                              ; preds = %229, %214, %207
  br label %190

237:                                              ; preds = %229, %221
  br label %238

238:                                              ; preds = %237, %202, %194
  %239 = load i64, i64* %19, align 8
  %240 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %241 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %243 = load %struct.dirent*, %struct.dirent** %15, align 8
  %244 = getelementptr inbounds %struct.dirent, %struct.dirent* %243, i32 0, i32 0
  %245 = load i64*, i64** %244, align 8
  %246 = call i32 @strbuf_append(%struct.strbuf* %242, i64* %245)
  %247 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %248 = call i32 @strbuf_terminate(%struct.strbuf* %247)
  %249 = load i32, i32* %20, align 4
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %279

251:                                              ; preds = %238
  %252 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %253 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %252, i32 0, i32 1
  %254 = load i64*, i64** %253, align 8
  %255 = load i64, i64* %19, align 8
  %256 = getelementptr inbounds i64, i64* %254, i64 %255
  %257 = load i64*, i64** %9, align 8
  %258 = load i64*, i64** %22, align 8
  %259 = load i64, i64* %18, align 8
  %260 = trunc i64 %259 to i32
  %261 = call i32 @match(i64* %256, i64* %257, i64* %258, i32 %260)
  %262 = load i32, i32* %13, align 4
  %263 = icmp eq i32 %261, %262
  br i1 %263, label %264, label %265

264:                                              ; preds = %251
  br label %190

265:                                              ; preds = %251
  %266 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %267 = load i32, i32* @SEP, align 4
  %268 = call i32 @strbuf_append1(%struct.strbuf* %266, i32 %267)
  %269 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %270 = call i32 @strbuf_terminate(%struct.strbuf* %269)
  %271 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %272 = load i64*, i64** %11, align 8
  %273 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %274 = load i32, i32* %13, align 4
  %275 = call i32 @glob2(%struct.strbuf* %271, i64* %272, %struct.TYPE_4__* %273, i32 %274)
  store i32 %275, i32* %17, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %278

277:                                              ; preds = %265
  br label %303

278:                                              ; preds = %265
  br label %302

279:                                              ; preds = %238
  %280 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %281 = getelementptr inbounds %struct.strbuf, %struct.strbuf* %280, i32 0, i32 1
  %282 = load i64*, i64** %281, align 8
  %283 = load i64, i64* %19, align 8
  %284 = getelementptr inbounds i64, i64* %282, i64 %283
  %285 = load i64*, i64** %9, align 8
  %286 = load i64*, i64** %10, align 8
  %287 = load i64, i64* %18, align 8
  %288 = trunc i64 %287 to i32
  %289 = call i32 @match(i64* %284, i64* %285, i64* %286, i32 %288)
  %290 = load i32, i32* %13, align 4
  %291 = icmp eq i32 %289, %290
  br i1 %291, label %292, label %293

292:                                              ; preds = %279
  br label %190

293:                                              ; preds = %279
  %294 = load %struct.strbuf*, %struct.strbuf** %8, align 8
  %295 = load i64*, i64** %10, align 8
  %296 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %297 = load i32, i32* %13, align 4
  %298 = call i32 @glob2(%struct.strbuf* %294, i64* %295, %struct.TYPE_4__* %296, i32 %297)
  store i32 %298, i32* %17, align 4
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %301

300:                                              ; preds = %293
  br label %303

301:                                              ; preds = %293
  br label %302

302:                                              ; preds = %301, %278
  br label %190

303:                                              ; preds = %300, %277, %190
  %304 = load i32*, i32** %14, align 8
  %305 = call i32 @closedir(i32* %304)
  %306 = load i32, i32* %17, align 4
  store i32 %306, i32* %7, align 4
  br label %307

307:                                              ; preds = %303, %188, %186, %157, %132
  %308 = load i32, i32* %7, align 4
  ret i32 %308
}

declare dso_local i32 @strbuf_terminate(%struct.strbuf*) #1

declare dso_local i64 @One_Char_mbtowc(i32*, i64*, i32) #1

declare dso_local i32 @glob2(%struct.strbuf*, i64*, %struct.TYPE_4__*, i32) #1

declare dso_local i64 @Lstat(i64*, %struct.stat*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i32* @Opendir(i64*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @strbuf_append(%struct.strbuf*, i64*) #1

declare dso_local i32 @match(i64*, i64*, i64*, i32) #1

declare dso_local i32 @strbuf_append1(%struct.strbuf*, i32) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
