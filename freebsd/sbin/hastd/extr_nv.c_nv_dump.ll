; ModuleID = '/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/sbin/hastd/extr_nv.c_nv_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv = type { i64, i32 }
%struct.nvhdr = type { i32, i8* }

@.str = private unnamed_addr constant [11 x i8] c"error: %d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@NV_ORDER_MASK = common dso_local global i32 0, align 4
@NV_ORDER_NETWORK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"  %s\00", align 1
@NV_TYPE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"(int8): %jd\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"(uint8): %ju\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"(int16): %jd\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"(uint16): %ju\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"(int32): %jd\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"(uint32): %ju\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"(int64): %jd\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"(uint64): %ju\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"(int8 array):\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c" %jd\00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"(uint8 array):\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c" %ju\00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"(int16 array):\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"(uint16 array):\00", align 1
@.str.16 = private unnamed_addr constant [15 x i8] c"(int32 array):\00", align 1
@.str.17 = private unnamed_addr constant [16 x i8] c"(uint32 array):\00", align 1
@.str.18 = private unnamed_addr constant [15 x i8] c"(int64 array):\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"(uint64 array):\00", align 1
@.str.20 = private unnamed_addr constant [13 x i8] c"(string): %s\00", align 1
@.str.21 = private unnamed_addr constant [18 x i8] c"invalid condition\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nv_dump(%struct.nv* %0) #0 {
  %2 = alloca %struct.nv*, align 8
  %3 = alloca %struct.nvhdr*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nv* %0, %struct.nv** %2, align 8
  %10 = load %struct.nv*, %struct.nv** %2, align 8
  %11 = call i32 @nv_validate(%struct.nv* %10, i32* null)
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load i32, i32* @errno, align 4
  %15 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %417

16:                                               ; preds = %1
  %17 = load %struct.nv*, %struct.nv** %2, align 8
  %18 = call i32 @NV_CHECK(%struct.nv* %17)
  %19 = load %struct.nv*, %struct.nv** %2, align 8
  %20 = getelementptr inbounds %struct.nv, %struct.nv* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @PJDLOG_ASSERT(i32 %23)
  %25 = load %struct.nv*, %struct.nv** %2, align 8
  %26 = getelementptr inbounds %struct.nv, %struct.nv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i8* @ebuf_data(i32 %27, i64* %7)
  store i8* %28, i8** %5, align 8
  br label %29

29:                                               ; preds = %407, %16
  %30 = load i64, i64* %7, align 8
  %31 = icmp ugt i64 %30, 0
  br i1 %31, label %32, label %417

32:                                               ; preds = %29
  %33 = load i64, i64* %7, align 8
  %34 = icmp uge i64 %33, 18
  %35 = zext i1 %34 to i32
  %36 = call i32 @PJDLOG_ASSERT(i32 %35)
  %37 = load i8*, i8** %5, align 8
  %38 = bitcast i8* %37 to %struct.nvhdr*
  store %struct.nvhdr* %38, %struct.nvhdr** %3, align 8
  %39 = load i64, i64* %7, align 8
  %40 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %41 = call i64 @NVH_SIZE(%struct.nvhdr* %40)
  %42 = icmp uge i64 %39, %41
  %43 = zext i1 %42 to i32
  %44 = call i32 @PJDLOG_ASSERT(i32 %43)
  %45 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %46 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @NV_ORDER_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @NV_ORDER_NETWORK, align 4
  %51 = icmp eq i32 %49, %50
  %52 = zext i1 %51 to i32
  store i32 %52, i32* %9, align 4
  %53 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %54 = call i64 @NVH_DSIZE(%struct.nvhdr* %53)
  store i64 %54, i64* %6, align 8
  %55 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %56 = call i8* @NVH_DATA(%struct.nvhdr* %55)
  store i8* %56, i8** %4, align 8
  %57 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %58 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* %59)
  %61 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %62 = getelementptr inbounds %struct.nvhdr, %struct.nvhdr* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @NV_TYPE_MASK, align 4
  %65 = and i32 %63, %64
  switch i32 %65, label %405 [
    i32 138, label %66
    i32 129, label %71
    i32 144, label %76
    i32 135, label %91
    i32 142, label %106
    i32 133, label %121
    i32 140, label %136
    i32 131, label %151
    i32 137, label %166
    i32 128, label %185
    i32 143, label %204
    i32 134, label %237
    i32 141, label %270
    i32 132, label %303
    i32 139, label %336
    i32 130, label %369
    i32 136, label %402
  ]

66:                                               ; preds = %32
  %67 = load i8*, i8** %4, align 8
  %68 = bitcast i8* %67 to i32*
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %407

71:                                               ; preds = %32
  %72 = load i8*, i8** %4, align 8
  %73 = bitcast i8* %72 to i32*
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  br label %407

76:                                               ; preds = %32
  %77 = load i32, i32* %9, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %84

79:                                               ; preds = %76
  %80 = load i8*, i8** %4, align 8
  %81 = bitcast i8* %80 to i32*
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @le16toh(i32 %82)
  br label %88

84:                                               ; preds = %76
  %85 = load i8*, i8** %4, align 8
  %86 = bitcast i8* %85 to i32*
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %79
  %89 = phi i32 [ %83, %79 ], [ %87, %84 ]
  %90 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0), i32 %89)
  br label %407

91:                                               ; preds = %32
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %99

94:                                               ; preds = %91
  %95 = load i8*, i8** %4, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @le16toh(i32 %97)
  br label %103

99:                                               ; preds = %91
  %100 = load i8*, i8** %4, align 8
  %101 = bitcast i8* %100 to i32*
  %102 = load i32, i32* %101, align 4
  br label %103

103:                                              ; preds = %99, %94
  %104 = phi i32 [ %98, %94 ], [ %102, %99 ]
  %105 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0), i32 %104)
  br label %407

106:                                              ; preds = %32
  %107 = load i32, i32* %9, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load i8*, i8** %4, align 8
  %111 = bitcast i8* %110 to i32*
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @le32toh(i32 %112)
  br label %118

114:                                              ; preds = %106
  %115 = load i8*, i8** %4, align 8
  %116 = bitcast i8* %115 to i32*
  %117 = load i32, i32* %116, align 4
  br label %118

118:                                              ; preds = %114, %109
  %119 = phi i32 [ %113, %109 ], [ %117, %114 ]
  %120 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  br label %407

121:                                              ; preds = %32
  %122 = load i32, i32* %9, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %121
  %125 = load i8*, i8** %4, align 8
  %126 = bitcast i8* %125 to i32*
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le32toh(i32 %127)
  br label %133

129:                                              ; preds = %121
  %130 = load i8*, i8** %4, align 8
  %131 = bitcast i8* %130 to i32*
  %132 = load i32, i32* %131, align 4
  br label %133

133:                                              ; preds = %129, %124
  %134 = phi i32 [ %128, %124 ], [ %132, %129 ]
  %135 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %134)
  br label %407

136:                                              ; preds = %32
  %137 = load i32, i32* %9, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %136
  %140 = load i8*, i8** %4, align 8
  %141 = bitcast i8* %140 to i32*
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @le64toh(i32 %142)
  br label %148

144:                                              ; preds = %136
  %145 = load i8*, i8** %4, align 8
  %146 = bitcast i8* %145 to i32*
  %147 = load i32, i32* %146, align 4
  br label %148

148:                                              ; preds = %144, %139
  %149 = phi i32 [ %143, %139 ], [ %147, %144 ]
  %150 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i64 0, i64 0), i32 %149)
  br label %407

151:                                              ; preds = %32
  %152 = load i32, i32* %9, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %151
  %155 = load i8*, i8** %4, align 8
  %156 = bitcast i8* %155 to i32*
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le64toh(i32 %157)
  br label %163

159:                                              ; preds = %151
  %160 = load i8*, i8** %4, align 8
  %161 = bitcast i8* %160 to i32*
  %162 = load i32, i32* %161, align 4
  br label %163

163:                                              ; preds = %159, %154
  %164 = phi i32 [ %158, %154 ], [ %162, %159 ]
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %164)
  br label %407

166:                                              ; preds = %32
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %168

168:                                              ; preds = %181, %166
  %169 = load i32, i32* %8, align 4
  %170 = zext i32 %169 to i64
  %171 = load i64, i64* %6, align 8
  %172 = icmp ult i64 %170, %171
  br i1 %172, label %173, label %184

173:                                              ; preds = %168
  %174 = load i8*, i8** %4, align 8
  %175 = bitcast i8* %174 to i32*
  %176 = load i32, i32* %8, align 4
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %179)
  br label %181

181:                                              ; preds = %173
  %182 = load i32, i32* %8, align 4
  %183 = add i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %168

184:                                              ; preds = %168
  br label %407

185:                                              ; preds = %32
  %186 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %187

187:                                              ; preds = %200, %185
  %188 = load i32, i32* %8, align 4
  %189 = zext i32 %188 to i64
  %190 = load i64, i64* %6, align 8
  %191 = icmp ult i64 %189, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %187
  %193 = load i8*, i8** %4, align 8
  %194 = bitcast i8* %193 to i32*
  %195 = load i32, i32* %8, align 4
  %196 = zext i32 %195 to i64
  %197 = getelementptr inbounds i32, i32* %194, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %198)
  br label %200

200:                                              ; preds = %192
  %201 = load i32, i32* %8, align 4
  %202 = add i32 %201, 1
  store i32 %202, i32* %8, align 4
  br label %187

203:                                              ; preds = %187
  br label %407

204:                                              ; preds = %32
  %205 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %206

206:                                              ; preds = %233, %204
  %207 = load i32, i32* %8, align 4
  %208 = zext i32 %207 to i64
  %209 = load i64, i64* %6, align 8
  %210 = udiv i64 %209, 2
  %211 = icmp ult i64 %208, %210
  br i1 %211, label %212, label %236

212:                                              ; preds = %206
  %213 = load i32, i32* %9, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %223

215:                                              ; preds = %212
  %216 = load i8*, i8** %4, align 8
  %217 = bitcast i8* %216 to i32*
  %218 = load i32, i32* %8, align 4
  %219 = zext i32 %218 to i64
  %220 = getelementptr inbounds i32, i32* %217, i64 %219
  %221 = load i32, i32* %220, align 4
  %222 = call i32 @le16toh(i32 %221)
  br label %230

223:                                              ; preds = %212
  %224 = load i8*, i8** %4, align 8
  %225 = bitcast i8* %224 to i32*
  %226 = load i32, i32* %8, align 4
  %227 = zext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  br label %230

230:                                              ; preds = %223, %215
  %231 = phi i32 [ %222, %215 ], [ %229, %223 ]
  %232 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %231)
  br label %233

233:                                              ; preds = %230
  %234 = load i32, i32* %8, align 4
  %235 = add i32 %234, 1
  store i32 %235, i32* %8, align 4
  br label %206

236:                                              ; preds = %206
  br label %407

237:                                              ; preds = %32
  %238 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %239

239:                                              ; preds = %266, %237
  %240 = load i32, i32* %8, align 4
  %241 = zext i32 %240 to i64
  %242 = load i64, i64* %6, align 8
  %243 = udiv i64 %242, 2
  %244 = icmp ult i64 %241, %243
  br i1 %244, label %245, label %269

245:                                              ; preds = %239
  %246 = load i32, i32* %9, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %256

248:                                              ; preds = %245
  %249 = load i8*, i8** %4, align 8
  %250 = bitcast i8* %249 to i32*
  %251 = load i32, i32* %8, align 4
  %252 = zext i32 %251 to i64
  %253 = getelementptr inbounds i32, i32* %250, i64 %252
  %254 = load i32, i32* %253, align 4
  %255 = call i32 @le16toh(i32 %254)
  br label %263

256:                                              ; preds = %245
  %257 = load i8*, i8** %4, align 8
  %258 = bitcast i8* %257 to i32*
  %259 = load i32, i32* %8, align 4
  %260 = zext i32 %259 to i64
  %261 = getelementptr inbounds i32, i32* %258, i64 %260
  %262 = load i32, i32* %261, align 4
  br label %263

263:                                              ; preds = %256, %248
  %264 = phi i32 [ %255, %248 ], [ %262, %256 ]
  %265 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %264)
  br label %266

266:                                              ; preds = %263
  %267 = load i32, i32* %8, align 4
  %268 = add i32 %267, 1
  store i32 %268, i32* %8, align 4
  br label %239

269:                                              ; preds = %239
  br label %407

270:                                              ; preds = %32
  %271 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.16, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %272

272:                                              ; preds = %299, %270
  %273 = load i32, i32* %8, align 4
  %274 = zext i32 %273 to i64
  %275 = load i64, i64* %6, align 8
  %276 = udiv i64 %275, 4
  %277 = icmp ult i64 %274, %276
  br i1 %277, label %278, label %302

278:                                              ; preds = %272
  %279 = load i32, i32* %9, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %289

281:                                              ; preds = %278
  %282 = load i8*, i8** %4, align 8
  %283 = bitcast i8* %282 to i32*
  %284 = load i32, i32* %8, align 4
  %285 = zext i32 %284 to i64
  %286 = getelementptr inbounds i32, i32* %283, i64 %285
  %287 = load i32, i32* %286, align 4
  %288 = call i32 @le32toh(i32 %287)
  br label %296

289:                                              ; preds = %278
  %290 = load i8*, i8** %4, align 8
  %291 = bitcast i8* %290 to i32*
  %292 = load i32, i32* %8, align 4
  %293 = zext i32 %292 to i64
  %294 = getelementptr inbounds i32, i32* %291, i64 %293
  %295 = load i32, i32* %294, align 4
  br label %296

296:                                              ; preds = %289, %281
  %297 = phi i32 [ %288, %281 ], [ %295, %289 ]
  %298 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0), i32 %297)
  br label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %8, align 4
  %301 = add i32 %300, 1
  store i32 %301, i32* %8, align 4
  br label %272

302:                                              ; preds = %272
  br label %407

303:                                              ; preds = %32
  %304 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.17, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %305

305:                                              ; preds = %332, %303
  %306 = load i32, i32* %8, align 4
  %307 = zext i32 %306 to i64
  %308 = load i64, i64* %6, align 8
  %309 = udiv i64 %308, 4
  %310 = icmp ult i64 %307, %309
  br i1 %310, label %311, label %335

311:                                              ; preds = %305
  %312 = load i32, i32* %9, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %322

314:                                              ; preds = %311
  %315 = load i8*, i8** %4, align 8
  %316 = bitcast i8* %315 to i32*
  %317 = load i32, i32* %8, align 4
  %318 = zext i32 %317 to i64
  %319 = getelementptr inbounds i32, i32* %316, i64 %318
  %320 = load i32, i32* %319, align 4
  %321 = call i32 @le32toh(i32 %320)
  br label %329

322:                                              ; preds = %311
  %323 = load i8*, i8** %4, align 8
  %324 = bitcast i8* %323 to i32*
  %325 = load i32, i32* %8, align 4
  %326 = zext i32 %325 to i64
  %327 = getelementptr inbounds i32, i32* %324, i64 %326
  %328 = load i32, i32* %327, align 4
  br label %329

329:                                              ; preds = %322, %314
  %330 = phi i32 [ %321, %314 ], [ %328, %322 ]
  %331 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %330)
  br label %332

332:                                              ; preds = %329
  %333 = load i32, i32* %8, align 4
  %334 = add i32 %333, 1
  store i32 %334, i32* %8, align 4
  br label %305

335:                                              ; preds = %305
  br label %407

336:                                              ; preds = %32
  %337 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.18, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %338

338:                                              ; preds = %365, %336
  %339 = load i32, i32* %8, align 4
  %340 = zext i32 %339 to i64
  %341 = load i64, i64* %6, align 8
  %342 = udiv i64 %341, 8
  %343 = icmp ult i64 %340, %342
  br i1 %343, label %344, label %368

344:                                              ; preds = %338
  %345 = load i32, i32* %9, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %347, label %355

347:                                              ; preds = %344
  %348 = load i8*, i8** %4, align 8
  %349 = bitcast i8* %348 to i32*
  %350 = load i32, i32* %8, align 4
  %351 = zext i32 %350 to i64
  %352 = getelementptr inbounds i32, i32* %349, i64 %351
  %353 = load i32, i32* %352, align 4
  %354 = call i32 @le64toh(i32 %353)
  br label %362

355:                                              ; preds = %344
  %356 = load i8*, i8** %4, align 8
  %357 = bitcast i8* %356 to i32*
  %358 = load i32, i32* %8, align 4
  %359 = zext i32 %358 to i64
  %360 = getelementptr inbounds i32, i32* %357, i64 %359
  %361 = load i32, i32* %360, align 4
  br label %362

362:                                              ; preds = %355, %347
  %363 = phi i32 [ %354, %347 ], [ %361, %355 ]
  %364 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %363)
  br label %365

365:                                              ; preds = %362
  %366 = load i32, i32* %8, align 4
  %367 = add i32 %366, 1
  store i32 %367, i32* %8, align 4
  br label %338

368:                                              ; preds = %338
  br label %407

369:                                              ; preds = %32
  %370 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.19, i64 0, i64 0))
  store i32 0, i32* %8, align 4
  br label %371

371:                                              ; preds = %398, %369
  %372 = load i32, i32* %8, align 4
  %373 = zext i32 %372 to i64
  %374 = load i64, i64* %6, align 8
  %375 = udiv i64 %374, 8
  %376 = icmp ult i64 %373, %375
  br i1 %376, label %377, label %401

377:                                              ; preds = %371
  %378 = load i32, i32* %9, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %380, label %388

380:                                              ; preds = %377
  %381 = load i8*, i8** %4, align 8
  %382 = bitcast i8* %381 to i32*
  %383 = load i32, i32* %8, align 4
  %384 = zext i32 %383 to i64
  %385 = getelementptr inbounds i32, i32* %382, i64 %384
  %386 = load i32, i32* %385, align 4
  %387 = call i32 @le64toh(i32 %386)
  br label %395

388:                                              ; preds = %377
  %389 = load i8*, i8** %4, align 8
  %390 = bitcast i8* %389 to i32*
  %391 = load i32, i32* %8, align 4
  %392 = zext i32 %391 to i64
  %393 = getelementptr inbounds i32, i32* %390, i64 %392
  %394 = load i32, i32* %393, align 4
  br label %395

395:                                              ; preds = %388, %380
  %396 = phi i32 [ %387, %380 ], [ %394, %388 ]
  %397 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0), i32 %396)
  br label %398

398:                                              ; preds = %395
  %399 = load i32, i32* %8, align 4
  %400 = add i32 %399, 1
  store i32 %400, i32* %8, align 4
  br label %371

401:                                              ; preds = %371
  br label %407

402:                                              ; preds = %32
  %403 = load i8*, i8** %4, align 8
  %404 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.20, i64 0, i64 0), i8* %403)
  br label %407

405:                                              ; preds = %32
  %406 = call i32 @PJDLOG_ABORT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.21, i64 0, i64 0))
  br label %407

407:                                              ; preds = %405, %402, %401, %368, %335, %302, %269, %236, %203, %184, %163, %148, %133, %118, %103, %88, %71, %66
  %408 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0))
  %409 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %410 = call i64 @NVH_SIZE(%struct.nvhdr* %409)
  %411 = load i8*, i8** %5, align 8
  %412 = getelementptr inbounds i8, i8* %411, i64 %410
  store i8* %412, i8** %5, align 8
  %413 = load %struct.nvhdr*, %struct.nvhdr** %3, align 8
  %414 = call i64 @NVH_SIZE(%struct.nvhdr* %413)
  %415 = load i64, i64* %7, align 8
  %416 = sub i64 %415, %414
  store i64 %416, i64* %7, align 8
  br label %29

417:                                              ; preds = %13, %29
  ret void
}

declare dso_local i32 @nv_validate(%struct.nv*, i32*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @NV_CHECK(%struct.nv*) #1

declare dso_local i32 @PJDLOG_ASSERT(i32) #1

declare dso_local i8* @ebuf_data(i32, i64*) #1

declare dso_local i64 @NVH_SIZE(%struct.nvhdr*) #1

declare dso_local i64 @NVH_DSIZE(%struct.nvhdr*) #1

declare dso_local i8* @NVH_DATA(%struct.nvhdr*) #1

declare dso_local i32 @le16toh(i32) #1

declare dso_local i32 @le32toh(i32) #1

declare dso_local i32 @le64toh(i32) #1

declare dso_local i32 @PJDLOG_ABORT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
