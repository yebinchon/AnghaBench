; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c___archive_get_date.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_getdate.c___archive_get_date.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.token = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, %struct.token*, i32, i32, i64 }
%struct.gdstate = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, %struct.gdstate*, i32, i32, i64 }
%struct.tm = type { i32, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i64, i32, i64, i32, i64, i64, %struct.tm*, i32, i32, i64 }

@HOUR = common dso_local global i64 0, align 8
@DSTmaybe = common dso_local global i32 0, align 4
@MINUTE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__archive_get_date(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca [256 x %struct.token], align 16
  %7 = alloca %struct.gdstate, align 8
  %8 = alloca %struct.token*, align 8
  %9 = alloca %struct.gdstate*, align 8
  %10 = alloca %struct.tm, align 8
  %11 = alloca %struct.tm*, align 8
  %12 = alloca %struct.tm, align 8
  %13 = alloca %struct.tm*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = getelementptr inbounds [256 x %struct.token], [256 x %struct.token]* %6, i64 0, i64 0
  %18 = call i32 @memset(%struct.token* %17, i32 0, i32 45056)
  %19 = bitcast %struct.gdstate* %7 to %struct.token*
  %20 = call i32 @memset(%struct.token* %19, i32 0, i32 176)
  store %struct.gdstate* %7, %struct.gdstate** %9, align 8
  %21 = bitcast %struct.tm* %10 to %struct.token*
  %22 = call i32 @memset(%struct.token* %21, i32 0, i32 176)
  %23 = call %struct.token* @localtime(i32* %4)
  %24 = bitcast %struct.token* %23 to %struct.tm*
  store %struct.tm* %24, %struct.tm** %11, align 8
  %25 = load %struct.tm*, %struct.tm** %11, align 8
  %26 = icmp eq %struct.tm* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %346

28:                                               ; preds = %2
  %29 = load %struct.tm*, %struct.tm** %11, align 8
  %30 = bitcast %struct.tm* %10 to i8*
  %31 = bitcast %struct.tm* %29 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %30, i8* align 8 %31, i64 176, i1 false)
  %32 = bitcast %struct.tm* %12 to %struct.token*
  %33 = call i32 @memset(%struct.token* %32, i32 0, i32 176)
  %34 = call %struct.token* @gmtime(i32* %4)
  %35 = bitcast %struct.token* %34 to %struct.tm*
  store %struct.tm* %35, %struct.tm** %13, align 8
  %36 = load %struct.tm*, %struct.tm** %13, align 8
  %37 = icmp ne %struct.tm* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %28
  %39 = load %struct.tm*, %struct.tm** %13, align 8
  %40 = bitcast %struct.tm* %12 to i8*
  %41 = bitcast %struct.tm* %39 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 176, i1 false)
  br label %42

42:                                               ; preds = %38, %28
  %43 = load %struct.tm*, %struct.tm** %13, align 8
  %44 = icmp ne %struct.tm* %43, null
  br i1 %44, label %45, label %49

45:                                               ; preds = %42
  %46 = bitcast %struct.tm* %12 to %struct.token*
  %47 = bitcast %struct.tm* %10 to %struct.token*
  %48 = call i64 @difftm(%struct.token* %46, %struct.token* %47)
  store i64 %48, i64* %16, align 8
  br label %50

49:                                               ; preds = %42
  store i64 0, i64* %16, align 8
  br label %50

50:                                               ; preds = %49, %45
  %51 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 28
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %50
  %55 = load i64, i64* @HOUR, align 8
  %56 = load i64, i64* %16, align 8
  %57 = add nsw i64 %56, %55
  store i64 %57, i64* %16, align 8
  br label %58

58:                                               ; preds = %54, %50
  %59 = getelementptr inbounds [256 x %struct.token], [256 x %struct.token]* %6, i64 0, i64 0
  store %struct.token* %59, %struct.token** %8, align 8
  br label %60

60:                                               ; preds = %75, %58
  %61 = load %struct.token*, %struct.token** %8, align 8
  %62 = getelementptr inbounds %struct.token, %struct.token* %61, i32 0, i32 26
  %63 = call i32 @nexttoken(i8** %5, i32* %62)
  %64 = load %struct.token*, %struct.token** %8, align 8
  %65 = getelementptr inbounds %struct.token, %struct.token* %64, i32 0, i32 27
  store i32 %63, i32* %65, align 4
  %66 = icmp ne i32 %63, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %60
  %68 = load %struct.token*, %struct.token** %8, align 8
  %69 = getelementptr inbounds %struct.token, %struct.token* %68, i32 1
  store %struct.token* %69, %struct.token** %8, align 8
  %70 = load %struct.token*, %struct.token** %8, align 8
  %71 = getelementptr inbounds [256 x %struct.token], [256 x %struct.token]* %6, i64 0, i64 0
  %72 = getelementptr inbounds %struct.token, %struct.token* %71, i64 255
  %73 = icmp ugt %struct.token* %70, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %346

75:                                               ; preds = %67
  br label %60

76:                                               ; preds = %60
  %77 = getelementptr inbounds [256 x %struct.token], [256 x %struct.token]* %6, i64 0, i64 0
  %78 = bitcast %struct.token* %77 to %struct.gdstate*
  %79 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %80 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %79, i32 0, i32 25
  store %struct.gdstate* %78, %struct.gdstate** %80, align 8
  br label %81

81:                                               ; preds = %94, %76
  %82 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %83 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %82, i32 0, i32 25
  %84 = load %struct.gdstate*, %struct.gdstate** %83, align 8
  %85 = load %struct.token*, %struct.token** %8, align 8
  %86 = bitcast %struct.token* %85 to %struct.gdstate*
  %87 = icmp ult %struct.gdstate* %84, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %81
  %89 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %90 = bitcast %struct.gdstate* %89 to %struct.token*
  %91 = call i32 @phrase(%struct.token* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %88
  store i32 -1, i32* %3, align 4
  br label %346

94:                                               ; preds = %88
  br label %81

95:                                               ; preds = %81
  %96 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %97 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %107, label %100

100:                                              ; preds = %95
  %101 = load i64, i64* %16, align 8
  %102 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %103 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %102, i32 0, i32 1
  store i64 %101, i64* %103, align 8
  %104 = load i32, i32* @DSTmaybe, align 4
  %105 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %106 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %105, i32 0, i32 11
  store i32 %104, i32* %106, align 8
  br label %107

107:                                              ; preds = %100, %95
  %108 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %109 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %139

112:                                              ; preds = %107
  %113 = load %struct.tm*, %struct.tm** %13, align 8
  %114 = icmp ne %struct.tm* %113, null
  br i1 %114, label %115, label %139

115:                                              ; preds = %112
  %116 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %117 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = load i32, i32* %4, align 4
  %120 = sext i32 %119 to i64
  %121 = sub nsw i64 %120, %118
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %4, align 4
  %123 = call %struct.token* @gmtime(i32* %4)
  %124 = bitcast %struct.token* %123 to %struct.tm*
  store %struct.tm* %124, %struct.tm** %13, align 8
  %125 = load %struct.tm*, %struct.tm** %13, align 8
  %126 = icmp ne %struct.tm* %125, null
  br i1 %126, label %127, label %131

127:                                              ; preds = %115
  %128 = load %struct.tm*, %struct.tm** %13, align 8
  %129 = bitcast %struct.tm* %10 to i8*
  %130 = bitcast %struct.tm* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 176, i1 false)
  br label %131

131:                                              ; preds = %127, %115
  %132 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %133 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = add nsw i64 %136, %134
  %138 = trunc i64 %137 to i32
  store i32 %138, i32* %4, align 4
  br label %139

139:                                              ; preds = %131, %112, %107
  %140 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %141 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %139
  %145 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 24
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %146, 1900
  %148 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %149 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %148, i32 0, i32 19
  store i64 %147, i64* %149, align 8
  br label %150

150:                                              ; preds = %144, %139
  %151 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %152 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %151, i32 0, i32 3
  %153 = load i32, i32* %152, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %150
  %156 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 23
  %157 = load i64, i64* %156, align 8
  %158 = add nsw i64 %157, 1
  %159 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %160 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %159, i32 0, i32 21
  store i64 %158, i64* %160, align 8
  br label %161

161:                                              ; preds = %155, %150
  %162 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %163 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %171, label %166

166:                                              ; preds = %161
  %167 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 22
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %170 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %169, i32 0, i32 20
  store i32 %168, i32* %170, align 8
  br label %171

171:                                              ; preds = %166, %161
  %172 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %173 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %172, i32 0, i32 5
  %174 = load i32, i32* %173, align 4
  %175 = icmp sgt i32 %174, 1
  br i1 %175, label %201, label %176

176:                                              ; preds = %171
  %177 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %178 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = icmp sgt i32 %179, 1
  br i1 %180, label %201, label %181

181:                                              ; preds = %176
  %182 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %183 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = icmp sgt i32 %184, 1
  br i1 %185, label %201, label %186

186:                                              ; preds = %181
  %187 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %188 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 1
  br i1 %190, label %201, label %191

191:                                              ; preds = %186
  %192 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %193 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 4
  %195 = icmp sgt i32 %194, 1
  br i1 %195, label %201, label %196

196:                                              ; preds = %191
  %197 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %198 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %197, i32 0, i32 4
  %199 = load i32, i32* %198, align 8
  %200 = icmp sgt i32 %199, 1
  br i1 %200, label %201, label %202

201:                                              ; preds = %196, %191, %186, %181, %176, %171
  store i32 -1, i32* %3, align 4
  br label %346

202:                                              ; preds = %196
  %203 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %204 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %227, label %207

207:                                              ; preds = %202
  %208 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %209 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %208, i32 0, i32 3
  %210 = load i32, i32* %209, align 4
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %227, label %212

212:                                              ; preds = %207
  %213 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %214 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = icmp ne i32 %215, 0
  br i1 %216, label %227, label %217

217:                                              ; preds = %212
  %218 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %219 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %227, label %222

222:                                              ; preds = %217
  %223 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %224 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %223, i32 0, i32 6
  %225 = load i32, i32* %224, align 8
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %257

227:                                              ; preds = %222, %217, %212, %207, %202
  %228 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %229 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %228, i32 0, i32 21
  %230 = load i64, i64* %229, align 8
  %231 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %232 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %231, i32 0, i32 20
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %235 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %234, i32 0, i32 19
  %236 = load i64, i64* %235, align 8
  %237 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %238 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %237, i32 0, i32 18
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %241 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %240, i32 0, i32 17
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %244 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %243, i32 0, i32 16
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %247 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %246, i32 0, i32 1
  %248 = load i64, i64* %247, align 8
  %249 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %250 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %249, i32 0, i32 11
  %251 = load i32, i32* %250, align 8
  %252 = call i32 @Convert(i64 %230, i32 %233, i64 %236, i32 %239, i32 %242, i32 %245, i64 %248, i32 %251)
  store i32 %252, i32* %14, align 4
  %253 = load i32, i32* %14, align 4
  %254 = icmp slt i32 %253, 0
  br i1 %254, label %255, label %256

255:                                              ; preds = %227
  store i32 -1, i32* %3, align 4
  br label %346

256:                                              ; preds = %227
  br label %281

257:                                              ; preds = %222
  %258 = load i32, i32* %4, align 4
  store i32 %258, i32* %14, align 4
  %259 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %260 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %259, i32 0, i32 15
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %280, label %263

263:                                              ; preds = %257
  %264 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 7
  %265 = load i64, i64* %264, align 8
  %266 = load i64, i64* @HOUR, align 8
  %267 = mul nsw i64 %265, %266
  %268 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 8
  %269 = load i64, i64* %268, align 8
  %270 = load i64, i64* @MINUTE, align 8
  %271 = mul nsw i64 %269, %270
  %272 = add nsw i64 %267, %271
  %273 = getelementptr inbounds %struct.tm, %struct.tm* %10, i32 0, i32 14
  %274 = load i64, i64* %273, align 8
  %275 = add nsw i64 %272, %274
  %276 = load i32, i32* %14, align 4
  %277 = sext i32 %276 to i64
  %278 = sub nsw i64 %277, %275
  %279 = trunc i64 %278 to i32
  store i32 %279, i32* %14, align 4
  br label %280

280:                                              ; preds = %263, %257
  br label %281

281:                                              ; preds = %280, %256
  %282 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %283 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %282, i32 0, i32 13
  %284 = load i64, i64* %283, align 8
  %285 = load i32, i32* %14, align 4
  %286 = sext i32 %285 to i64
  %287 = add nsw i64 %286, %284
  %288 = trunc i64 %287 to i32
  store i32 %288, i32* %14, align 4
  %289 = load i32, i32* %14, align 4
  %290 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %291 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %294 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %293, i32 0, i32 12
  %295 = load i32, i32* %294, align 4
  %296 = call i64 @RelativeMonth(i32 %289, i64 %292, i32 %295)
  %297 = load i32, i32* %14, align 4
  %298 = sext i32 %297 to i64
  %299 = add nsw i64 %298, %296
  %300 = trunc i64 %299 to i32
  store i32 %300, i32* %14, align 4
  %301 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %302 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %301, i32 0, i32 6
  %303 = load i32, i32* %302, align 8
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %338

305:                                              ; preds = %281
  %306 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %307 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %306, i32 0, i32 2
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %338, label %310

310:                                              ; preds = %305
  %311 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %312 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %311, i32 0, i32 3
  %313 = load i32, i32* %312, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %338, label %315

315:                                              ; preds = %310
  %316 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %317 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %316, i32 0, i32 4
  %318 = load i32, i32* %317, align 8
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %338, label %320

320:                                              ; preds = %315
  %321 = load i32, i32* %14, align 4
  %322 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %323 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %322, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %326 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %325, i32 0, i32 11
  %327 = load i32, i32* %326, align 8
  %328 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %329 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %328, i32 0, i32 10
  %330 = load i32, i32* %329, align 4
  %331 = load %struct.gdstate*, %struct.gdstate** %9, align 8
  %332 = getelementptr inbounds %struct.gdstate, %struct.gdstate* %331, i32 0, i32 9
  %333 = load i32, i32* %332, align 8
  %334 = call i32 @RelativeDate(i32 %321, i64 %324, i32 %327, i32 %330, i32 %333)
  store i32 %334, i32* %15, align 4
  %335 = load i32, i32* %15, align 4
  %336 = load i32, i32* %14, align 4
  %337 = add nsw i32 %336, %335
  store i32 %337, i32* %14, align 4
  br label %338

338:                                              ; preds = %320, %315, %310, %305, %281
  %339 = load i32, i32* %14, align 4
  %340 = icmp eq i32 %339, -1
  br i1 %340, label %341, label %342

341:                                              ; preds = %338
  br label %344

342:                                              ; preds = %338
  %343 = load i32, i32* %14, align 4
  br label %344

344:                                              ; preds = %342, %341
  %345 = phi i32 [ 0, %341 ], [ %343, %342 ]
  store i32 %345, i32* %3, align 4
  br label %346

346:                                              ; preds = %344, %255, %201, %93, %74, %27
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

declare dso_local i32 @memset(%struct.token*, i32, i32) #1

declare dso_local %struct.token* @localtime(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.token* @gmtime(i32*) #1

declare dso_local i64 @difftm(%struct.token*, %struct.token*) #1

declare dso_local i32 @nexttoken(i8**, i32*) #1

declare dso_local i32 @phrase(%struct.token*) #1

declare dso_local i32 @Convert(i64, i32, i64, i32, i32, i32, i64, i32) #1

declare dso_local i64 @RelativeMonth(i32, i64, i32) #1

declare dso_local i32 @RelativeDate(i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
