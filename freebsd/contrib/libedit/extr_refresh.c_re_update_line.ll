; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libedit/extr_refresh.c_re_update_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libedit/extr_refresh.c_re_update_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }

@__F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"no difference.\0D\0A\00", align 1
@MIN_END_KEEP = common dso_local global i32 0, align 4
@EL_CAN_INSERT = common dso_local global i32 0, align 4
@EL_CAN_DELETE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"fx %d, sx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"ofd %td, osb %td, ose %td, ols %td, oe %td\0A\00", align 1
@.str.3 = private unnamed_addr constant [44 x i8] c"nfd %td, nsb %td, nse %td, nls %td, ne %td\0A\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"xxx-xxx:\2200000000001111111111222222222233333333334\22\0D\0A\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"xxx-xxx:\2201234567890123456789012345678901234567890\22\0D\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"first diff insert at %td...\0D\0A\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"with stuff to keep at end\0D\0A\00", align 1
@.str.8 = private unnamed_addr constant [42 x i8] c"ERROR: cannot insert in early first diff\0A\00", align 1
@.str.9 = private unnamed_addr constant [27 x i8] c"without anything to save\0D\0A\00", align 1
@.str.10 = private unnamed_addr constant [30 x i8] c"first diff delete at %td...\0D\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"with stuff to save at end\0D\0A\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"ERROR: cannot delete in first diff\0A\00", align 1
@.str.13 = private unnamed_addr constant [32 x i8] c"but with nothing left to save\0D\0A\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"second diff delete at %td...\0D\0A\00", align 1
@.str.15 = private unnamed_addr constant [37 x i8] c"ERROR: cannot delete in second diff\0A\00", align 1
@.str.16 = private unnamed_addr constant [35 x i8] c"late first diff insert at %td...\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"ERROR: cannot insert in late first diff\0A\00", align 1
@.str.18 = private unnamed_addr constant [30 x i8] c"second diff insert at %d...\0D\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"ERROR: cannot insert in second diff\0A\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"done.\0D\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, i8*, i8*, i32)* @re_update_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @re_update_line(%struct.TYPE_16__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %7, align 8
  store i8* %27, i8** %10, align 8
  br label %28

28:                                               ; preds = %44, %4
  %29 = load i8*, i8** %9, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %28
  %34 = load i8*, i8** %9, align 8
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = load i8*, i8** %10, align 8
  %38 = load i8, i8* %37, align 1
  %39 = sext i8 %38 to i32
  %40 = icmp eq i32 %36, %39
  br label %41

41:                                               ; preds = %33, %28
  %42 = phi i1 [ false, %28 ], [ %40, %33 ]
  br i1 %42, label %43, label %49

43:                                               ; preds = %41
  br label %44

44:                                               ; preds = %43
  %45 = load i8*, i8** %9, align 8
  %46 = getelementptr inbounds i8, i8* %45, i32 1
  store i8* %46, i8** %9, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %10, align 8
  br label %28

49:                                               ; preds = %41
  %50 = load i8*, i8** %9, align 8
  store i8* %50, i8** %13, align 8
  %51 = load i8*, i8** %10, align 8
  store i8* %51, i8** %16, align 8
  br label %52

52:                                               ; preds = %56, %49
  %53 = load i8*, i8** %9, align 8
  %54 = load i8, i8* %53, align 1
  %55 = icmp ne i8 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i8*, i8** %9, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %9, align 8
  br label %52

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %71, %59
  %61 = load i8*, i8** %13, align 8
  %62 = load i8*, i8** %9, align 8
  %63 = icmp ult i8* %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %60
  %65 = load i8*, i8** %9, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 -1
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %71

70:                                               ; preds = %64
  br label %74

71:                                               ; preds = %64
  %72 = load i8*, i8** %9, align 8
  %73 = getelementptr inbounds i8, i8* %72, i32 -1
  store i8* %73, i8** %9, align 8
  br label %60

74:                                               ; preds = %70, %60
  %75 = load i8*, i8** %9, align 8
  store i8* %75, i8** %15, align 8
  %76 = load i8*, i8** %15, align 8
  store i8 0, i8* %76, align 1
  br label %77

77:                                               ; preds = %81, %74
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = icmp ne i8 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i8*, i8** %10, align 8
  %83 = getelementptr inbounds i8, i8* %82, i32 1
  store i8* %83, i8** %10, align 8
  br label %77

84:                                               ; preds = %77
  br label %85

85:                                               ; preds = %96, %84
  %86 = load i8*, i8** %16, align 8
  %87 = load i8*, i8** %10, align 8
  %88 = icmp ult i8* %86, %87
  br i1 %88, label %89, label %99

89:                                               ; preds = %85
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 -1
  %92 = load i8, i8* %91, align 1
  %93 = sext i8 %92 to i32
  %94 = icmp ne i32 %93, 32
  br i1 %94, label %95, label %96

95:                                               ; preds = %89
  br label %99

96:                                               ; preds = %89
  %97 = load i8*, i8** %10, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %98, i8** %10, align 8
  br label %85

99:                                               ; preds = %95, %85
  %100 = load i8*, i8** %10, align 8
  store i8* %100, i8** %18, align 8
  %101 = load i8*, i8** %18, align 8
  store i8 0, i8* %101, align 1
  %102 = load i8*, i8** %13, align 8
  %103 = load i8, i8* %102, align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %114

106:                                              ; preds = %99
  %107 = load i8*, i8** %16, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %106
  %112 = load i32, i32* @__F, align 4
  %113 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([17 x i8]* @.str to i32))
  br label %1034

114:                                              ; preds = %106, %99
  br label %115

115:                                              ; preds = %135, %114
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %13, align 8
  %118 = icmp ugt i8* %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %115
  %120 = load i8*, i8** %10, align 8
  %121 = load i8*, i8** %16, align 8
  %122 = icmp ugt i8* %120, %121
  br i1 %122, label %123, label %133

123:                                              ; preds = %119
  %124 = load i8*, i8** %9, align 8
  %125 = getelementptr inbounds i8, i8* %124, i32 -1
  store i8* %125, i8** %9, align 8
  %126 = load i8, i8* %125, align 1
  %127 = sext i8 %126 to i32
  %128 = load i8*, i8** %10, align 8
  %129 = getelementptr inbounds i8, i8* %128, i32 -1
  store i8* %129, i8** %10, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp eq i32 %127, %131
  br label %133

133:                                              ; preds = %123, %119, %115
  %134 = phi i1 [ false, %119 ], [ false, %115 ], [ %132, %123 ]
  br i1 %134, label %135, label %136

135:                                              ; preds = %133
  br label %115

136:                                              ; preds = %133
  %137 = load i8*, i8** %9, align 8
  %138 = getelementptr inbounds i8, i8* %137, i32 1
  store i8* %138, i8** %9, align 8
  store i8* %138, i8** %14, align 8
  %139 = load i8*, i8** %10, align 8
  %140 = getelementptr inbounds i8, i8* %139, i32 1
  store i8* %140, i8** %10, align 8
  store i8* %140, i8** %17, align 8
  %141 = load i8*, i8** %14, align 8
  store i8* %141, i8** %19, align 8
  %142 = load i8*, i8** %17, align 8
  store i8* %142, i8** %21, align 8
  %143 = load i8*, i8** %14, align 8
  store i8* %143, i8** %20, align 8
  %144 = load i8*, i8** %17, align 8
  store i8* %144, i8** %22, align 8
  %145 = load i8*, i8** %13, align 8
  %146 = load i8, i8* %145, align 1
  %147 = icmp ne i8 %146, 0
  br i1 %147, label %148, label %226

148:                                              ; preds = %136
  %149 = load i8*, i8** %13, align 8
  %150 = load i8, i8* %149, align 1
  store i8 %150, i8* %12, align 1
  %151 = load i8*, i8** %16, align 8
  store i8* %151, i8** %10, align 8
  br label %152

152:                                              ; preds = %222, %148
  %153 = load i8*, i8** %10, align 8
  %154 = load i8*, i8** %17, align 8
  %155 = icmp ult i8* %153, %154
  br i1 %155, label %156, label %225

156:                                              ; preds = %152
  %157 = load i8, i8* %12, align 1
  %158 = sext i8 %157 to i32
  %159 = load i8*, i8** %10, align 8
  %160 = load i8, i8* %159, align 1
  %161 = sext i8 %160 to i32
  %162 = icmp eq i32 %158, %161
  br i1 %162, label %163, label %221

163:                                              ; preds = %156
  %164 = load i8*, i8** %13, align 8
  store i8* %164, i8** %9, align 8
  %165 = load i8*, i8** %10, align 8
  store i8* %165, i8** %11, align 8
  br label %166

166:                                              ; preds = %185, %163
  %167 = load i8*, i8** %11, align 8
  %168 = load i8*, i8** %17, align 8
  %169 = icmp ult i8* %167, %168
  br i1 %169, label %170, label %182

170:                                              ; preds = %166
  %171 = load i8*, i8** %9, align 8
  %172 = load i8*, i8** %14, align 8
  %173 = icmp ult i8* %171, %172
  br i1 %173, label %174, label %182

174:                                              ; preds = %170
  %175 = load i8*, i8** %9, align 8
  %176 = load i8, i8* %175, align 1
  %177 = sext i8 %176 to i32
  %178 = load i8*, i8** %11, align 8
  %179 = load i8, i8* %178, align 1
  %180 = sext i8 %179 to i32
  %181 = icmp eq i32 %177, %180
  br label %182

182:                                              ; preds = %174, %170, %166
  %183 = phi i1 [ false, %170 ], [ false, %166 ], [ %181, %174 ]
  br i1 %183, label %184, label %190

184:                                              ; preds = %182
  br label %185

185:                                              ; preds = %184
  %186 = load i8*, i8** %9, align 8
  %187 = getelementptr inbounds i8, i8* %186, i32 1
  store i8* %187, i8** %9, align 8
  %188 = load i8*, i8** %11, align 8
  %189 = getelementptr inbounds i8, i8* %188, i32 1
  store i8* %189, i8** %11, align 8
  br label %166

190:                                              ; preds = %182
  %191 = load i8*, i8** %22, align 8
  %192 = load i8*, i8** %21, align 8
  %193 = ptrtoint i8* %191 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = load i8*, i8** %11, align 8
  %197 = load i8*, i8** %10, align 8
  %198 = ptrtoint i8* %196 to i64
  %199 = ptrtoint i8* %197 to i64
  %200 = sub i64 %198, %199
  %201 = icmp slt i64 %195, %200
  br i1 %201, label %202, label %220

202:                                              ; preds = %190
  %203 = load i8*, i8** %11, align 8
  %204 = load i8*, i8** %10, align 8
  %205 = ptrtoint i8* %203 to i64
  %206 = ptrtoint i8* %204 to i64
  %207 = sub i64 %205, %206
  %208 = mul nsw i64 2, %207
  %209 = load i8*, i8** %10, align 8
  %210 = load i8*, i8** %16, align 8
  %211 = ptrtoint i8* %209 to i64
  %212 = ptrtoint i8* %210 to i64
  %213 = sub i64 %211, %212
  %214 = icmp sgt i64 %208, %213
  br i1 %214, label %215, label %220

215:                                              ; preds = %202
  %216 = load i8*, i8** %10, align 8
  store i8* %216, i8** %21, align 8
  %217 = load i8*, i8** %11, align 8
  store i8* %217, i8** %22, align 8
  %218 = load i8*, i8** %13, align 8
  store i8* %218, i8** %19, align 8
  %219 = load i8*, i8** %9, align 8
  store i8* %219, i8** %20, align 8
  br label %220

220:                                              ; preds = %215, %202, %190
  br label %221

221:                                              ; preds = %220, %156
  br label %222

222:                                              ; preds = %221
  %223 = load i8*, i8** %10, align 8
  %224 = getelementptr inbounds i8, i8* %223, i32 1
  store i8* %224, i8** %10, align 8
  br label %152

225:                                              ; preds = %152
  br label %226

226:                                              ; preds = %225, %136
  %227 = load i8*, i8** %16, align 8
  %228 = load i8, i8* %227, align 1
  %229 = icmp ne i8 %228, 0
  br i1 %229, label %230, label %308

230:                                              ; preds = %226
  %231 = load i8*, i8** %16, align 8
  %232 = load i8, i8* %231, align 1
  store i8 %232, i8* %12, align 1
  %233 = load i8*, i8** %13, align 8
  store i8* %233, i8** %9, align 8
  br label %234

234:                                              ; preds = %304, %230
  %235 = load i8*, i8** %9, align 8
  %236 = load i8*, i8** %14, align 8
  %237 = icmp ult i8* %235, %236
  br i1 %237, label %238, label %307

238:                                              ; preds = %234
  %239 = load i8, i8* %12, align 1
  %240 = sext i8 %239 to i32
  %241 = load i8*, i8** %9, align 8
  %242 = load i8, i8* %241, align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %240, %243
  br i1 %244, label %245, label %303

245:                                              ; preds = %238
  %246 = load i8*, i8** %16, align 8
  store i8* %246, i8** %10, align 8
  %247 = load i8*, i8** %9, align 8
  store i8* %247, i8** %11, align 8
  br label %248

248:                                              ; preds = %267, %245
  %249 = load i8*, i8** %11, align 8
  %250 = load i8*, i8** %14, align 8
  %251 = icmp ult i8* %249, %250
  br i1 %251, label %252, label %264

252:                                              ; preds = %248
  %253 = load i8*, i8** %10, align 8
  %254 = load i8*, i8** %17, align 8
  %255 = icmp ult i8* %253, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %252
  %257 = load i8*, i8** %11, align 8
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = load i8*, i8** %10, align 8
  %261 = load i8, i8* %260, align 1
  %262 = sext i8 %261 to i32
  %263 = icmp eq i32 %259, %262
  br label %264

264:                                              ; preds = %256, %252, %248
  %265 = phi i1 [ false, %252 ], [ false, %248 ], [ %263, %256 ]
  br i1 %265, label %266, label %272

266:                                              ; preds = %264
  br label %267

267:                                              ; preds = %266
  %268 = load i8*, i8** %11, align 8
  %269 = getelementptr inbounds i8, i8* %268, i32 1
  store i8* %269, i8** %11, align 8
  %270 = load i8*, i8** %10, align 8
  %271 = getelementptr inbounds i8, i8* %270, i32 1
  store i8* %271, i8** %10, align 8
  br label %248

272:                                              ; preds = %264
  %273 = load i8*, i8** %20, align 8
  %274 = load i8*, i8** %19, align 8
  %275 = ptrtoint i8* %273 to i64
  %276 = ptrtoint i8* %274 to i64
  %277 = sub i64 %275, %276
  %278 = load i8*, i8** %11, align 8
  %279 = load i8*, i8** %9, align 8
  %280 = ptrtoint i8* %278 to i64
  %281 = ptrtoint i8* %279 to i64
  %282 = sub i64 %280, %281
  %283 = icmp slt i64 %277, %282
  br i1 %283, label %284, label %302

284:                                              ; preds = %272
  %285 = load i8*, i8** %11, align 8
  %286 = load i8*, i8** %9, align 8
  %287 = ptrtoint i8* %285 to i64
  %288 = ptrtoint i8* %286 to i64
  %289 = sub i64 %287, %288
  %290 = mul nsw i64 2, %289
  %291 = load i8*, i8** %9, align 8
  %292 = load i8*, i8** %13, align 8
  %293 = ptrtoint i8* %291 to i64
  %294 = ptrtoint i8* %292 to i64
  %295 = sub i64 %293, %294
  %296 = icmp sgt i64 %290, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %284
  %298 = load i8*, i8** %16, align 8
  store i8* %298, i8** %21, align 8
  %299 = load i8*, i8** %10, align 8
  store i8* %299, i8** %22, align 8
  %300 = load i8*, i8** %9, align 8
  store i8* %300, i8** %19, align 8
  %301 = load i8*, i8** %11, align 8
  store i8* %301, i8** %20, align 8
  br label %302

302:                                              ; preds = %297, %284, %272
  br label %303

303:                                              ; preds = %302, %238
  br label %304

304:                                              ; preds = %303
  %305 = load i8*, i8** %9, align 8
  %306 = getelementptr inbounds i8, i8* %305, i32 1
  store i8* %306, i8** %9, align 8
  br label %234

307:                                              ; preds = %234
  br label %308

308:                                              ; preds = %307, %226
  %309 = load i8*, i8** %15, align 8
  %310 = load i8*, i8** %14, align 8
  %311 = ptrtoint i8* %309 to i64
  %312 = ptrtoint i8* %310 to i64
  %313 = sub i64 %311, %312
  %314 = load i32, i32* @MIN_END_KEEP, align 4
  %315 = sext i32 %314 to i64
  %316 = icmp slt i64 %313, %315
  br i1 %316, label %317, label %320

317:                                              ; preds = %308
  %318 = load i8*, i8** %15, align 8
  store i8* %318, i8** %14, align 8
  %319 = load i8*, i8** %18, align 8
  store i8* %319, i8** %17, align 8
  br label %320

320:                                              ; preds = %317, %308
  %321 = load i8*, i8** %21, align 8
  %322 = load i8*, i8** %16, align 8
  %323 = ptrtoint i8* %321 to i64
  %324 = ptrtoint i8* %322 to i64
  %325 = sub i64 %323, %324
  %326 = load i8*, i8** %19, align 8
  %327 = load i8*, i8** %13, align 8
  %328 = ptrtoint i8* %326 to i64
  %329 = ptrtoint i8* %327 to i64
  %330 = sub i64 %328, %329
  %331 = sub nsw i64 %325, %330
  %332 = trunc i64 %331 to i32
  store i32 %332, i32* %23, align 4
  %333 = load i8*, i8** %17, align 8
  %334 = load i8*, i8** %22, align 8
  %335 = ptrtoint i8* %333 to i64
  %336 = ptrtoint i8* %334 to i64
  %337 = sub i64 %335, %336
  %338 = load i8*, i8** %14, align 8
  %339 = load i8*, i8** %20, align 8
  %340 = ptrtoint i8* %338 to i64
  %341 = ptrtoint i8* %339 to i64
  %342 = sub i64 %340, %341
  %343 = sub nsw i64 %337, %342
  %344 = trunc i64 %343 to i32
  store i32 %344, i32* %24, align 4
  %345 = load i32, i32* @EL_CAN_INSERT, align 4
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %377, label %347

347:                                              ; preds = %320
  %348 = load i32, i32* %23, align 4
  %349 = icmp sgt i32 %348, 0
  br i1 %349, label %350, label %355

350:                                              ; preds = %347
  %351 = load i8*, i8** %14, align 8
  store i8* %351, i8** %19, align 8
  %352 = load i8*, i8** %14, align 8
  store i8* %352, i8** %20, align 8
  %353 = load i8*, i8** %17, align 8
  store i8* %353, i8** %21, align 8
  %354 = load i8*, i8** %17, align 8
  store i8* %354, i8** %22, align 8
  br label %355

355:                                              ; preds = %350, %347
  %356 = load i32, i32* %24, align 4
  %357 = icmp sgt i32 %356, 0
  br i1 %357, label %358, label %361

358:                                              ; preds = %355
  %359 = load i8*, i8** %15, align 8
  store i8* %359, i8** %14, align 8
  %360 = load i8*, i8** %18, align 8
  store i8* %360, i8** %17, align 8
  br label %361

361:                                              ; preds = %358, %355
  %362 = load i8*, i8** %14, align 8
  %363 = load i8*, i8** %13, align 8
  %364 = ptrtoint i8* %362 to i64
  %365 = ptrtoint i8* %363 to i64
  %366 = sub i64 %364, %365
  %367 = load i8*, i8** %17, align 8
  %368 = load i8*, i8** %16, align 8
  %369 = ptrtoint i8* %367 to i64
  %370 = ptrtoint i8* %368 to i64
  %371 = sub i64 %369, %370
  %372 = icmp slt i64 %366, %371
  br i1 %372, label %373, label %376

373:                                              ; preds = %361
  %374 = load i8*, i8** %15, align 8
  store i8* %374, i8** %14, align 8
  %375 = load i8*, i8** %18, align 8
  store i8* %375, i8** %17, align 8
  br label %376

376:                                              ; preds = %373, %361
  br label %377

377:                                              ; preds = %376, %320
  %378 = load i32, i32* @EL_CAN_DELETE, align 4
  %379 = icmp ne i32 %378, 0
  br i1 %379, label %410, label %380

380:                                              ; preds = %377
  %381 = load i32, i32* %23, align 4
  %382 = icmp slt i32 %381, 0
  br i1 %382, label %383, label %388

383:                                              ; preds = %380
  %384 = load i8*, i8** %14, align 8
  store i8* %384, i8** %19, align 8
  %385 = load i8*, i8** %14, align 8
  store i8* %385, i8** %20, align 8
  %386 = load i8*, i8** %17, align 8
  store i8* %386, i8** %21, align 8
  %387 = load i8*, i8** %17, align 8
  store i8* %387, i8** %22, align 8
  br label %388

388:                                              ; preds = %383, %380
  %389 = load i32, i32* %24, align 4
  %390 = icmp slt i32 %389, 0
  br i1 %390, label %391, label %394

391:                                              ; preds = %388
  %392 = load i8*, i8** %15, align 8
  store i8* %392, i8** %14, align 8
  %393 = load i8*, i8** %18, align 8
  store i8* %393, i8** %17, align 8
  br label %394

394:                                              ; preds = %391, %388
  %395 = load i8*, i8** %14, align 8
  %396 = load i8*, i8** %13, align 8
  %397 = ptrtoint i8* %395 to i64
  %398 = ptrtoint i8* %396 to i64
  %399 = sub i64 %397, %398
  %400 = load i8*, i8** %17, align 8
  %401 = load i8*, i8** %16, align 8
  %402 = ptrtoint i8* %400 to i64
  %403 = ptrtoint i8* %401 to i64
  %404 = sub i64 %402, %403
  %405 = icmp sgt i64 %399, %404
  br i1 %405, label %406, label %409

406:                                              ; preds = %394
  %407 = load i8*, i8** %15, align 8
  store i8* %407, i8** %14, align 8
  %408 = load i8*, i8** %18, align 8
  store i8* %408, i8** %17, align 8
  br label %409

409:                                              ; preds = %406, %394
  br label %410

410:                                              ; preds = %409, %377
  %411 = load i8*, i8** %20, align 8
  %412 = load i8*, i8** %19, align 8
  %413 = ptrtoint i8* %411 to i64
  %414 = ptrtoint i8* %412 to i64
  %415 = sub i64 %413, %414
  %416 = load i32, i32* @MIN_END_KEEP, align 4
  %417 = sext i32 %416 to i64
  %418 = icmp slt i64 %415, %417
  br i1 %418, label %419, label %424

419:                                              ; preds = %410
  %420 = load i8*, i8** %14, align 8
  store i8* %420, i8** %19, align 8
  %421 = load i8*, i8** %14, align 8
  store i8* %421, i8** %20, align 8
  %422 = load i8*, i8** %17, align 8
  store i8* %422, i8** %21, align 8
  %423 = load i8*, i8** %17, align 8
  store i8* %423, i8** %22, align 8
  br label %424

424:                                              ; preds = %419, %410
  %425 = load i8*, i8** %21, align 8
  %426 = load i8*, i8** %16, align 8
  %427 = ptrtoint i8* %425 to i64
  %428 = ptrtoint i8* %426 to i64
  %429 = sub i64 %427, %428
  %430 = load i8*, i8** %19, align 8
  %431 = load i8*, i8** %13, align 8
  %432 = ptrtoint i8* %430 to i64
  %433 = ptrtoint i8* %431 to i64
  %434 = sub i64 %432, %433
  %435 = sub nsw i64 %429, %434
  %436 = trunc i64 %435 to i32
  store i32 %436, i32* %23, align 4
  %437 = load i8*, i8** %17, align 8
  %438 = load i8*, i8** %22, align 8
  %439 = ptrtoint i8* %437 to i64
  %440 = ptrtoint i8* %438 to i64
  %441 = sub i64 %439, %440
  %442 = load i8*, i8** %14, align 8
  %443 = load i8*, i8** %20, align 8
  %444 = ptrtoint i8* %442 to i64
  %445 = ptrtoint i8* %443 to i64
  %446 = sub i64 %444, %445
  %447 = sub nsw i64 %441, %446
  %448 = trunc i64 %447 to i32
  store i32 %448, i32* %24, align 4
  %449 = load i32, i32* @__F, align 4
  %450 = load i32, i32* %23, align 4
  %451 = load i32, i32* %24, align 4
  %452 = call i32 @ELRE_DEBUG(i32 1, i32 %451)
  %453 = load i32, i32* @__F, align 4
  %454 = load i8*, i8** %13, align 8
  %455 = load i8*, i8** %6, align 8
  %456 = ptrtoint i8* %454 to i64
  %457 = ptrtoint i8* %455 to i64
  %458 = sub i64 %456, %457
  %459 = load i8*, i8** %19, align 8
  %460 = load i8*, i8** %6, align 8
  %461 = ptrtoint i8* %459 to i64
  %462 = ptrtoint i8* %460 to i64
  %463 = sub i64 %461, %462
  %464 = load i8*, i8** %20, align 8
  %465 = load i8*, i8** %6, align 8
  %466 = ptrtoint i8* %464 to i64
  %467 = ptrtoint i8* %465 to i64
  %468 = sub i64 %466, %467
  %469 = load i8*, i8** %14, align 8
  %470 = load i8*, i8** %6, align 8
  %471 = ptrtoint i8* %469 to i64
  %472 = ptrtoint i8* %470 to i64
  %473 = sub i64 %471, %472
  %474 = load i8*, i8** %15, align 8
  %475 = load i8*, i8** %6, align 8
  %476 = ptrtoint i8* %474 to i64
  %477 = ptrtoint i8* %475 to i64
  %478 = sub i64 %476, %477
  %479 = trunc i64 %478 to i32
  %480 = call i32 @ELRE_DEBUG(i32 1, i32 %479)
  %481 = load i32, i32* @__F, align 4
  %482 = load i8*, i8** %16, align 8
  %483 = load i8*, i8** %7, align 8
  %484 = ptrtoint i8* %482 to i64
  %485 = ptrtoint i8* %483 to i64
  %486 = sub i64 %484, %485
  %487 = load i8*, i8** %21, align 8
  %488 = load i8*, i8** %7, align 8
  %489 = ptrtoint i8* %487 to i64
  %490 = ptrtoint i8* %488 to i64
  %491 = sub i64 %489, %490
  %492 = load i8*, i8** %22, align 8
  %493 = load i8*, i8** %7, align 8
  %494 = ptrtoint i8* %492 to i64
  %495 = ptrtoint i8* %493 to i64
  %496 = sub i64 %494, %495
  %497 = load i8*, i8** %17, align 8
  %498 = load i8*, i8** %7, align 8
  %499 = ptrtoint i8* %497 to i64
  %500 = ptrtoint i8* %498 to i64
  %501 = sub i64 %499, %500
  %502 = load i8*, i8** %18, align 8
  %503 = load i8*, i8** %7, align 8
  %504 = ptrtoint i8* %502 to i64
  %505 = ptrtoint i8* %503 to i64
  %506 = sub i64 %504, %505
  %507 = trunc i64 %506 to i32
  %508 = call i32 @ELRE_DEBUG(i32 1, i32 %507)
  %509 = load i32, i32* @__F, align 4
  %510 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([54 x i8]* @.str.4 to i32))
  %511 = load i32, i32* @__F, align 4
  %512 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([54 x i8]* @.str.5 to i32))
  %513 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %514 = load i32, i32* %8, align 4
  %515 = call i32 @terminal_move_to_line(%struct.TYPE_16__* %513, i32 %514)
  %516 = load i8*, i8** %14, align 8
  %517 = load i8*, i8** %15, align 8
  %518 = icmp ne i8* %516, %517
  br i1 %518, label %519, label %521

519:                                              ; preds = %424
  %520 = load i8*, i8** %15, align 8
  br label %523

521:                                              ; preds = %424
  %522 = load i8*, i8** %20, align 8
  br label %523

523:                                              ; preds = %521, %519
  %524 = phi i8* [ %520, %519 ], [ %522, %521 ]
  store i8* %524, i8** %11, align 8
  %525 = load i8*, i8** %21, align 8
  %526 = load i8*, i8** %16, align 8
  %527 = icmp ne i8* %525, %526
  br i1 %527, label %528, label %642

528:                                              ; preds = %523
  %529 = load i32, i32* %23, align 4
  %530 = icmp sgt i32 %529, 0
  br i1 %530, label %531, label %642

531:                                              ; preds = %528
  %532 = load i8*, i8** %11, align 8
  %533 = load i8*, i8** %6, align 8
  %534 = ptrtoint i8* %532 to i64
  %535 = ptrtoint i8* %533 to i64
  %536 = sub i64 %534, %535
  %537 = load i32, i32* %23, align 4
  %538 = sext i32 %537 to i64
  %539 = add nsw i64 %536, %538
  %540 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %541 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %540, i32 0, i32 0
  %542 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %541, i32 0, i32 0
  %543 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %542, i32 0, i32 0
  %544 = load i32, i32* %543, align 4
  %545 = sext i32 %544 to i64
  %546 = icmp sle i64 %539, %545
  br i1 %546, label %547, label %642

547:                                              ; preds = %531
  %548 = load i32, i32* @__F, align 4
  %549 = load i8*, i8** %16, align 8
  %550 = load i8*, i8** %7, align 8
  %551 = ptrtoint i8* %549 to i64
  %552 = ptrtoint i8* %550 to i64
  %553 = sub i64 %551, %552
  %554 = trunc i64 %553 to i32
  %555 = call i32 @ELRE_DEBUG(i32 1, i32 %554)
  %556 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %557 = load i8*, i8** %16, align 8
  %558 = load i8*, i8** %7, align 8
  %559 = ptrtoint i8* %557 to i64
  %560 = ptrtoint i8* %558 to i64
  %561 = sub i64 %559, %560
  %562 = trunc i64 %561 to i32
  %563 = call i32 @terminal_move_to_char(%struct.TYPE_16__* %556, i32 %562)
  %564 = load i8*, i8** %21, align 8
  %565 = load i8*, i8** %18, align 8
  %566 = icmp ne i8* %564, %565
  br i1 %566, label %567, label %625

567:                                              ; preds = %547
  %568 = load i32, i32* @__F, align 4
  %569 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([28 x i8]* @.str.7 to i32))
  %570 = load i32, i32* %23, align 4
  %571 = icmp sgt i32 %570, 0
  br i1 %571, label %572, label %599

572:                                              ; preds = %567
  %573 = load i32, i32* @EL_CAN_INSERT, align 4
  %574 = icmp ne i32 %573, 0
  %575 = xor i1 %574, true
  %576 = zext i1 %575 to i32
  %577 = load i32, i32* @__F, align 4
  %578 = call i32 @ELRE_DEBUG(i32 %576, i32 ptrtoint ([42 x i8]* @.str.8 to i32))
  %579 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %580 = load i8*, i8** %16, align 8
  %581 = load i32, i32* %23, align 4
  %582 = call i32 @terminal_insertwrite(%struct.TYPE_16__* %579, i8* %580, i32 %581)
  %583 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %584 = load i8*, i8** %6, align 8
  %585 = load i8*, i8** %13, align 8
  %586 = load i8*, i8** %6, align 8
  %587 = ptrtoint i8* %585 to i64
  %588 = ptrtoint i8* %586 to i64
  %589 = sub i64 %587, %588
  %590 = trunc i64 %589 to i32
  %591 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %592 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %591, i32 0, i32 0
  %593 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %592, i32 0, i32 0
  %594 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %593, i32 0, i32 0
  %595 = load i32, i32* %594, align 4
  %596 = load i8*, i8** %16, align 8
  %597 = load i32, i32* %23, align 4
  %598 = call i32 @re_insert(%struct.TYPE_16__* %583, i8* %584, i32 %590, i32 %595, i8* %596, i32 %597)
  br label %599

599:                                              ; preds = %572, %567
  %600 = load i8*, i8** %21, align 8
  %601 = load i8*, i8** %16, align 8
  %602 = ptrtoint i8* %600 to i64
  %603 = ptrtoint i8* %601 to i64
  %604 = sub i64 %602, %603
  %605 = load i32, i32* %23, align 4
  %606 = sext i32 %605 to i64
  %607 = sub nsw i64 %604, %606
  store i64 %607, i64* %25, align 8
  %608 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %609 = load i8*, i8** %16, align 8
  %610 = load i32, i32* %23, align 4
  %611 = sext i32 %610 to i64
  %612 = getelementptr inbounds i8, i8* %609, i64 %611
  %613 = load i64, i64* %25, align 8
  %614 = call i32 @terminal_overwrite(%struct.TYPE_16__* %608, i8* %612, i64 %613)
  %615 = load i8*, i8** %13, align 8
  %616 = load i32, i32* %23, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds i8, i8* %615, i64 %617
  %619 = load i8*, i8** %16, align 8
  %620 = load i32, i32* %23, align 4
  %621 = sext i32 %620 to i64
  %622 = getelementptr inbounds i8, i8* %619, i64 %621
  %623 = load i64, i64* %25, align 8
  %624 = call i32 @re__strncopy(i8* %618, i8* %622, i64 %623)
  br label %641

625:                                              ; preds = %547
  %626 = load i32, i32* @__F, align 4
  %627 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([27 x i8]* @.str.9 to i32))
  %628 = load i8*, i8** %21, align 8
  %629 = load i8*, i8** %16, align 8
  %630 = ptrtoint i8* %628 to i64
  %631 = ptrtoint i8* %629 to i64
  %632 = sub i64 %630, %631
  store i64 %632, i64* %25, align 8
  %633 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %634 = load i8*, i8** %16, align 8
  %635 = load i64, i64* %25, align 8
  %636 = call i32 @terminal_overwrite(%struct.TYPE_16__* %633, i8* %634, i64 %635)
  %637 = load i8*, i8** %13, align 8
  %638 = load i8*, i8** %16, align 8
  %639 = load i64, i64* %25, align 8
  %640 = call i32 @re__strncopy(i8* %637, i8* %638, i64 %639)
  br label %1034

641:                                              ; preds = %599
  br label %741

642:                                              ; preds = %531, %528, %523
  %643 = load i32, i32* %23, align 4
  %644 = icmp slt i32 %643, 0
  br i1 %644, label %645, label %739

645:                                              ; preds = %642
  %646 = load i32, i32* @__F, align 4
  %647 = load i8*, i8** %13, align 8
  %648 = load i8*, i8** %6, align 8
  %649 = ptrtoint i8* %647 to i64
  %650 = ptrtoint i8* %648 to i64
  %651 = sub i64 %649, %650
  %652 = trunc i64 %651 to i32
  %653 = call i32 @ELRE_DEBUG(i32 1, i32 %652)
  %654 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %655 = load i8*, i8** %13, align 8
  %656 = load i8*, i8** %6, align 8
  %657 = ptrtoint i8* %655 to i64
  %658 = ptrtoint i8* %656 to i64
  %659 = sub i64 %657, %658
  %660 = trunc i64 %659 to i32
  %661 = call i32 @terminal_move_to_char(%struct.TYPE_16__* %654, i32 %660)
  %662 = load i8*, i8** %19, align 8
  %663 = load i8*, i8** %15, align 8
  %664 = icmp ne i8* %662, %663
  br i1 %664, label %665, label %711

665:                                              ; preds = %645
  %666 = load i32, i32* @__F, align 4
  %667 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([28 x i8]* @.str.11 to i32))
  %668 = load i32, i32* %23, align 4
  %669 = icmp slt i32 %668, 0
  br i1 %669, label %670, label %697

670:                                              ; preds = %665
  %671 = load i32, i32* @EL_CAN_DELETE, align 4
  %672 = icmp ne i32 %671, 0
  %673 = xor i1 %672, true
  %674 = zext i1 %673 to i32
  %675 = load i32, i32* @__F, align 4
  %676 = call i32 @ELRE_DEBUG(i32 %674, i32 ptrtoint ([36 x i8]* @.str.12 to i32))
  %677 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %678 = load i32, i32* %23, align 4
  %679 = sub nsw i32 0, %678
  %680 = call i32 @terminal_deletechars(%struct.TYPE_16__* %677, i32 %679)
  %681 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %682 = load i8*, i8** %6, align 8
  %683 = load i8*, i8** %13, align 8
  %684 = load i8*, i8** %6, align 8
  %685 = ptrtoint i8* %683 to i64
  %686 = ptrtoint i8* %684 to i64
  %687 = sub i64 %685, %686
  %688 = trunc i64 %687 to i32
  %689 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %690 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %689, i32 0, i32 0
  %691 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %690, i32 0, i32 0
  %692 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %691, i32 0, i32 0
  %693 = load i32, i32* %692, align 4
  %694 = load i32, i32* %23, align 4
  %695 = sub nsw i32 0, %694
  %696 = call i32 @re_delete(%struct.TYPE_16__* %681, i8* %682, i32 %688, i32 %693, i32 %695)
  br label %697

697:                                              ; preds = %670, %665
  %698 = load i8*, i8** %21, align 8
  %699 = load i8*, i8** %16, align 8
  %700 = ptrtoint i8* %698 to i64
  %701 = ptrtoint i8* %699 to i64
  %702 = sub i64 %700, %701
  store i64 %702, i64* %25, align 8
  %703 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %704 = load i8*, i8** %16, align 8
  %705 = load i64, i64* %25, align 8
  %706 = call i32 @terminal_overwrite(%struct.TYPE_16__* %703, i8* %704, i64 %705)
  %707 = load i8*, i8** %13, align 8
  %708 = load i8*, i8** %16, align 8
  %709 = load i64, i64* %25, align 8
  %710 = call i32 @re__strncopy(i8* %707, i8* %708, i64 %709)
  br label %738

711:                                              ; preds = %645
  %712 = load i32, i32* @__F, align 4
  %713 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([32 x i8]* @.str.13 to i32))
  %714 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %715 = load i8*, i8** %16, align 8
  %716 = load i8*, i8** %21, align 8
  %717 = load i8*, i8** %16, align 8
  %718 = ptrtoint i8* %716 to i64
  %719 = ptrtoint i8* %717 to i64
  %720 = sub i64 %718, %719
  %721 = call i32 @terminal_overwrite(%struct.TYPE_16__* %714, i8* %715, i64 %720)
  %722 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %723 = load i32, i32* %23, align 4
  %724 = load i32, i32* %24, align 4
  %725 = load i8*, i8** %15, align 8
  %726 = load i8*, i8** %6, align 8
  %727 = ptrtoint i8* %725 to i64
  %728 = ptrtoint i8* %726 to i64
  %729 = sub i64 %727, %728
  %730 = load i8*, i8** %18, align 8
  %731 = load i8*, i8** %7, align 8
  %732 = ptrtoint i8* %730 to i64
  %733 = ptrtoint i8* %731 to i64
  %734 = sub i64 %732, %733
  %735 = sub nsw i64 %729, %734
  %736 = trunc i64 %735 to i32
  %737 = call i32 @re_clear_eol(%struct.TYPE_16__* %722, i32 %723, i32 %724, i32 %736)
  br label %1034

738:                                              ; preds = %697
  br label %740

739:                                              ; preds = %642
  store i32 0, i32* %23, align 4
  br label %740

740:                                              ; preds = %739, %738
  br label %741

741:                                              ; preds = %740, %641
  %742 = load i32, i32* %24, align 4
  %743 = icmp slt i32 %742, 0
  br i1 %743, label %744, label %839

744:                                              ; preds = %741
  %745 = load i8*, i8** %20, align 8
  %746 = load i8*, i8** %6, align 8
  %747 = ptrtoint i8* %745 to i64
  %748 = ptrtoint i8* %746 to i64
  %749 = sub i64 %747, %748
  %750 = load i32, i32* %23, align 4
  %751 = sext i32 %750 to i64
  %752 = add nsw i64 %749, %751
  %753 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %754 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %753, i32 0, i32 0
  %755 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %754, i32 0, i32 0
  %756 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %755, i32 0, i32 0
  %757 = load i32, i32* %756, align 4
  %758 = sext i32 %757 to i64
  %759 = icmp slt i64 %752, %758
  br i1 %759, label %760, label %839

760:                                              ; preds = %744
  %761 = load i32, i32* @__F, align 4
  %762 = load i8*, i8** %20, align 8
  %763 = load i8*, i8** %6, align 8
  %764 = ptrtoint i8* %762 to i64
  %765 = ptrtoint i8* %763 to i64
  %766 = sub i64 %764, %765
  %767 = load i32, i32* %23, align 4
  %768 = sext i32 %767 to i64
  %769 = add nsw i64 %766, %768
  %770 = trunc i64 %769 to i32
  %771 = call i32 @ELRE_DEBUG(i32 1, i32 %770)
  %772 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %773 = load i8*, i8** %20, align 8
  %774 = load i8*, i8** %6, align 8
  %775 = ptrtoint i8* %773 to i64
  %776 = ptrtoint i8* %774 to i64
  %777 = sub i64 %775, %776
  %778 = load i32, i32* %23, align 4
  %779 = sext i32 %778 to i64
  %780 = add nsw i64 %777, %779
  %781 = trunc i64 %780 to i32
  %782 = call i32 @terminal_move_to_char(%struct.TYPE_16__* %772, i32 %781)
  %783 = load i8*, i8** %14, align 8
  %784 = load i8*, i8** %15, align 8
  %785 = icmp ne i8* %783, %784
  br i1 %785, label %786, label %811

786:                                              ; preds = %760
  %787 = load i32, i32* @__F, align 4
  %788 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([28 x i8]* @.str.11 to i32))
  %789 = load i32, i32* %24, align 4
  %790 = icmp slt i32 %789, 0
  br i1 %790, label %791, label %802

791:                                              ; preds = %786
  %792 = load i32, i32* @EL_CAN_DELETE, align 4
  %793 = icmp ne i32 %792, 0
  %794 = xor i1 %793, true
  %795 = zext i1 %794 to i32
  %796 = load i32, i32* @__F, align 4
  %797 = call i32 @ELRE_DEBUG(i32 %795, i32 ptrtoint ([37 x i8]* @.str.15 to i32))
  %798 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %799 = load i32, i32* %24, align 4
  %800 = sub nsw i32 0, %799
  %801 = call i32 @terminal_deletechars(%struct.TYPE_16__* %798, i32 %800)
  br label %802

802:                                              ; preds = %791, %786
  %803 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %804 = load i8*, i8** %22, align 8
  %805 = load i8*, i8** %17, align 8
  %806 = load i8*, i8** %22, align 8
  %807 = ptrtoint i8* %805 to i64
  %808 = ptrtoint i8* %806 to i64
  %809 = sub i64 %807, %808
  %810 = call i32 @terminal_overwrite(%struct.TYPE_16__* %803, i8* %804, i64 %809)
  br label %838

811:                                              ; preds = %760
  %812 = load i32, i32* @__F, align 4
  %813 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([32 x i8]* @.str.13 to i32))
  %814 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %815 = load i8*, i8** %22, align 8
  %816 = load i8*, i8** %17, align 8
  %817 = load i8*, i8** %22, align 8
  %818 = ptrtoint i8* %816 to i64
  %819 = ptrtoint i8* %817 to i64
  %820 = sub i64 %818, %819
  %821 = call i32 @terminal_overwrite(%struct.TYPE_16__* %814, i8* %815, i64 %820)
  %822 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %823 = load i32, i32* %23, align 4
  %824 = load i32, i32* %24, align 4
  %825 = load i8*, i8** %15, align 8
  %826 = load i8*, i8** %6, align 8
  %827 = ptrtoint i8* %825 to i64
  %828 = ptrtoint i8* %826 to i64
  %829 = sub i64 %827, %828
  %830 = load i8*, i8** %18, align 8
  %831 = load i8*, i8** %7, align 8
  %832 = ptrtoint i8* %830 to i64
  %833 = ptrtoint i8* %831 to i64
  %834 = sub i64 %832, %833
  %835 = sub nsw i64 %829, %834
  %836 = trunc i64 %835 to i32
  %837 = call i32 @re_clear_eol(%struct.TYPE_16__* %822, i32 %823, i32 %824, i32 %836)
  br label %838

838:                                              ; preds = %811, %802
  br label %839

839:                                              ; preds = %838, %744, %741
  %840 = load i8*, i8** %21, align 8
  %841 = load i8*, i8** %16, align 8
  %842 = icmp ne i8* %840, %841
  br i1 %842, label %843, label %965

843:                                              ; preds = %839
  %844 = load i8*, i8** %19, align 8
  %845 = load i8*, i8** %13, align 8
  %846 = ptrtoint i8* %844 to i64
  %847 = ptrtoint i8* %845 to i64
  %848 = sub i64 %846, %847
  %849 = load i8*, i8** %21, align 8
  %850 = load i8*, i8** %16, align 8
  %851 = ptrtoint i8* %849 to i64
  %852 = ptrtoint i8* %850 to i64
  %853 = sub i64 %851, %852
  %854 = icmp sle i64 %848, %853
  br i1 %854, label %855, label %965

855:                                              ; preds = %843
  %856 = load i32, i32* %23, align 4
  %857 = icmp eq i32 %856, 0
  br i1 %857, label %858, label %965

858:                                              ; preds = %855
  %859 = load i32, i32* @__F, align 4
  %860 = load i8*, i8** %16, align 8
  %861 = load i8*, i8** %7, align 8
  %862 = ptrtoint i8* %860 to i64
  %863 = ptrtoint i8* %861 to i64
  %864 = sub i64 %862, %863
  %865 = trunc i64 %864 to i32
  %866 = call i32 @ELRE_DEBUG(i32 1, i32 %865)
  %867 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %868 = load i8*, i8** %16, align 8
  %869 = load i8*, i8** %7, align 8
  %870 = ptrtoint i8* %868 to i64
  %871 = ptrtoint i8* %869 to i64
  %872 = sub i64 %870, %871
  %873 = trunc i64 %872 to i32
  %874 = call i32 @terminal_move_to_char(%struct.TYPE_16__* %867, i32 %873)
  %875 = load i8*, i8** %21, align 8
  %876 = load i8*, i8** %18, align 8
  %877 = icmp ne i8* %875, %876
  br i1 %877, label %878, label %948

878:                                              ; preds = %858
  %879 = load i32, i32* @__F, align 4
  %880 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([28 x i8]* @.str.7 to i32))
  %881 = load i8*, i8** %21, align 8
  %882 = load i8*, i8** %16, align 8
  %883 = ptrtoint i8* %881 to i64
  %884 = ptrtoint i8* %882 to i64
  %885 = sub i64 %883, %884
  %886 = load i8*, i8** %19, align 8
  %887 = load i8*, i8** %13, align 8
  %888 = ptrtoint i8* %886 to i64
  %889 = ptrtoint i8* %887 to i64
  %890 = sub i64 %888, %889
  %891 = sub nsw i64 %885, %890
  %892 = trunc i64 %891 to i32
  store i32 %892, i32* %23, align 4
  %893 = load i32, i32* %23, align 4
  %894 = icmp sgt i32 %893, 0
  br i1 %894, label %895, label %922

895:                                              ; preds = %878
  %896 = load i32, i32* @EL_CAN_INSERT, align 4
  %897 = icmp ne i32 %896, 0
  %898 = xor i1 %897, true
  %899 = zext i1 %898 to i32
  %900 = load i32, i32* @__F, align 4
  %901 = call i32 @ELRE_DEBUG(i32 %899, i32 ptrtoint ([41 x i8]* @.str.17 to i32))
  %902 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %903 = load i8*, i8** %16, align 8
  %904 = load i32, i32* %23, align 4
  %905 = call i32 @terminal_insertwrite(%struct.TYPE_16__* %902, i8* %903, i32 %904)
  %906 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %907 = load i8*, i8** %6, align 8
  %908 = load i8*, i8** %13, align 8
  %909 = load i8*, i8** %6, align 8
  %910 = ptrtoint i8* %908 to i64
  %911 = ptrtoint i8* %909 to i64
  %912 = sub i64 %910, %911
  %913 = trunc i64 %912 to i32
  %914 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %915 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %914, i32 0, i32 0
  %916 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %915, i32 0, i32 0
  %917 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %916, i32 0, i32 0
  %918 = load i32, i32* %917, align 4
  %919 = load i8*, i8** %16, align 8
  %920 = load i32, i32* %23, align 4
  %921 = call i32 @re_insert(%struct.TYPE_16__* %906, i8* %907, i32 %913, i32 %918, i8* %919, i32 %920)
  br label %922

922:                                              ; preds = %895, %878
  %923 = load i8*, i8** %21, align 8
  %924 = load i8*, i8** %16, align 8
  %925 = ptrtoint i8* %923 to i64
  %926 = ptrtoint i8* %924 to i64
  %927 = sub i64 %925, %926
  %928 = load i32, i32* %23, align 4
  %929 = sext i32 %928 to i64
  %930 = sub nsw i64 %927, %929
  store i64 %930, i64* %25, align 8
  %931 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %932 = load i8*, i8** %16, align 8
  %933 = load i32, i32* %23, align 4
  %934 = sext i32 %933 to i64
  %935 = getelementptr inbounds i8, i8* %932, i64 %934
  %936 = load i64, i64* %25, align 8
  %937 = call i32 @terminal_overwrite(%struct.TYPE_16__* %931, i8* %935, i64 %936)
  %938 = load i8*, i8** %13, align 8
  %939 = load i32, i32* %23, align 4
  %940 = sext i32 %939 to i64
  %941 = getelementptr inbounds i8, i8* %938, i64 %940
  %942 = load i8*, i8** %16, align 8
  %943 = load i32, i32* %23, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds i8, i8* %942, i64 %944
  %946 = load i64, i64* %25, align 8
  %947 = call i32 @re__strncopy(i8* %941, i8* %945, i64 %946)
  br label %964

948:                                              ; preds = %858
  %949 = load i32, i32* @__F, align 4
  %950 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([27 x i8]* @.str.9 to i32))
  %951 = load i8*, i8** %21, align 8
  %952 = load i8*, i8** %16, align 8
  %953 = ptrtoint i8* %951 to i64
  %954 = ptrtoint i8* %952 to i64
  %955 = sub i64 %953, %954
  store i64 %955, i64* %25, align 8
  %956 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %957 = load i8*, i8** %16, align 8
  %958 = load i64, i64* %25, align 8
  %959 = call i32 @terminal_overwrite(%struct.TYPE_16__* %956, i8* %957, i64 %958)
  %960 = load i8*, i8** %13, align 8
  %961 = load i8*, i8** %16, align 8
  %962 = load i64, i64* %25, align 8
  %963 = call i32 @re__strncopy(i8* %960, i8* %961, i64 %962)
  br label %964

964:                                              ; preds = %948, %922
  br label %965

965:                                              ; preds = %964, %855, %843, %839
  %966 = load i32, i32* %24, align 4
  %967 = icmp sge i32 %966, 0
  br i1 %967, label %968, label %1031

968:                                              ; preds = %965
  %969 = load i32, i32* @__F, align 4
  %970 = load i8*, i8** %22, align 8
  %971 = load i8*, i8** %7, align 8
  %972 = ptrtoint i8* %970 to i64
  %973 = ptrtoint i8* %971 to i64
  %974 = sub i64 %972, %973
  %975 = trunc i64 %974 to i32
  %976 = call i32 @ELRE_DEBUG(i32 1, i32 %975)
  %977 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %978 = load i8*, i8** %22, align 8
  %979 = load i8*, i8** %7, align 8
  %980 = ptrtoint i8* %978 to i64
  %981 = ptrtoint i8* %979 to i64
  %982 = sub i64 %980, %981
  %983 = trunc i64 %982 to i32
  %984 = call i32 @terminal_move_to_char(%struct.TYPE_16__* %977, i32 %983)
  %985 = load i8*, i8** %14, align 8
  %986 = load i8*, i8** %15, align 8
  %987 = icmp ne i8* %985, %986
  br i1 %987, label %988, label %1019

988:                                              ; preds = %968
  %989 = load i32, i32* @__F, align 4
  %990 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([28 x i8]* @.str.7 to i32))
  %991 = load i32, i32* %24, align 4
  %992 = icmp sgt i32 %991, 0
  br i1 %992, label %993, label %1004

993:                                              ; preds = %988
  %994 = load i32, i32* @EL_CAN_INSERT, align 4
  %995 = icmp ne i32 %994, 0
  %996 = xor i1 %995, true
  %997 = zext i1 %996 to i32
  %998 = load i32, i32* @__F, align 4
  %999 = call i32 @ELRE_DEBUG(i32 %997, i32 ptrtoint ([37 x i8]* @.str.19 to i32))
  %1000 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %1001 = load i8*, i8** %22, align 8
  %1002 = load i32, i32* %24, align 4
  %1003 = call i32 @terminal_insertwrite(%struct.TYPE_16__* %1000, i8* %1001, i32 %1002)
  br label %1004

1004:                                             ; preds = %993, %988
  %1005 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %1006 = load i8*, i8** %22, align 8
  %1007 = load i32, i32* %24, align 4
  %1008 = sext i32 %1007 to i64
  %1009 = getelementptr inbounds i8, i8* %1006, i64 %1008
  %1010 = load i8*, i8** %17, align 8
  %1011 = load i8*, i8** %22, align 8
  %1012 = ptrtoint i8* %1010 to i64
  %1013 = ptrtoint i8* %1011 to i64
  %1014 = sub i64 %1012, %1013
  %1015 = load i32, i32* %24, align 4
  %1016 = sext i32 %1015 to i64
  %1017 = sub nsw i64 %1014, %1016
  %1018 = call i32 @terminal_overwrite(%struct.TYPE_16__* %1005, i8* %1009, i64 %1017)
  br label %1030

1019:                                             ; preds = %968
  %1020 = load i32, i32* @__F, align 4
  %1021 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([27 x i8]* @.str.9 to i32))
  %1022 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %1023 = load i8*, i8** %22, align 8
  %1024 = load i8*, i8** %17, align 8
  %1025 = load i8*, i8** %22, align 8
  %1026 = ptrtoint i8* %1024 to i64
  %1027 = ptrtoint i8* %1025 to i64
  %1028 = sub i64 %1026, %1027
  %1029 = call i32 @terminal_overwrite(%struct.TYPE_16__* %1022, i8* %1023, i64 %1028)
  br label %1030

1030:                                             ; preds = %1019, %1004
  br label %1031

1031:                                             ; preds = %1030, %965
  %1032 = load i32, i32* @__F, align 4
  %1033 = call i32 @ELRE_DEBUG(i32 1, i32 ptrtoint ([8 x i8]* @.str.20 to i32))
  br label %1034

1034:                                             ; preds = %1031, %711, %625, %111
  ret void
}

declare dso_local i32 @ELRE_DEBUG(i32, i32) #1

declare dso_local i32 @terminal_move_to_line(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @terminal_move_to_char(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @terminal_insertwrite(%struct.TYPE_16__*, i8*, i32) #1

declare dso_local i32 @re_insert(%struct.TYPE_16__*, i8*, i32, i32, i8*, i32) #1

declare dso_local i32 @terminal_overwrite(%struct.TYPE_16__*, i8*, i64) #1

declare dso_local i32 @re__strncopy(i8*, i8*, i64) #1

declare dso_local i32 @terminal_deletechars(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @re_delete(%struct.TYPE_16__*, i8*, i32, i32, i32) #1

declare dso_local i32 @re_clear_eol(%struct.TYPE_16__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
