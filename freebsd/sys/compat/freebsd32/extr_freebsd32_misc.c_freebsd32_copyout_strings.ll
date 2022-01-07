; ModuleID = '/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_copyout_strings.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/compat/freebsd32/extr_freebsd32_misc.c_freebsd32_copyout_strings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.image_params = type { i8*, i64, i64, i32, i64, i32, %struct.TYPE_11__*, %struct.TYPE_10__*, i32*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { i64, i32, i32, i8* }
%struct.TYPE_10__ = type { i32 (%struct.image_params*, i32*)*, i32 (%struct.image_params*, i32*)* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i32*, i8* }
%struct.freebsd32_ps_strings = type { i32, i32, i32, i32 }

@MAXPAGESIZES = common dso_local global i32 0, align 4
@curproc = common dso_local global %struct.TYPE_12__* null, align 8
@pagesizes = common dso_local global i32* null, align 8
@ARG_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @freebsd32_copyout_strings(%struct.image_params* %0) #0 {
  %2 = alloca %struct.image_params*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.freebsd32_ps_strings*, align 8
  %11 = alloca [64 x i8], align 16
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.image_params* %0, %struct.image_params** %2, align 8
  %16 = load i32, i32* @MAXPAGESIZES, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.image_params*, %struct.image_params** %2, align 8
  %21 = getelementptr inbounds %struct.image_params, %struct.image_params* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %24, label %36

24:                                               ; preds = %1
  %25 = load %struct.image_params*, %struct.image_params** %2, align 8
  %26 = getelementptr inbounds %struct.image_params, %struct.image_params* %25, i32 0, i32 8
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.image_params*, %struct.image_params** %2, align 8
  %31 = getelementptr inbounds %struct.image_params, %struct.image_params* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strlen(i8* %32)
  %34 = add nsw i32 %33, 1
  %35 = sext i32 %34 to i64
  store i64 %35, i64* %14, align 8
  br label %37

36:                                               ; preds = %24, %1
  store i64 0, i64* %14, align 8
  br label %37

37:                                               ; preds = %36, %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** @curproc, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.freebsd32_ps_strings*
  store %struct.freebsd32_ps_strings* %43, %struct.freebsd32_ps_strings** %10, align 8
  %44 = load %struct.image_params*, %struct.image_params** %2, align 8
  %45 = getelementptr inbounds %struct.image_params, %struct.image_params* %44, i32 0, i32 9
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %37
  %53 = load %struct.image_params*, %struct.image_params** %2, align 8
  %54 = getelementptr inbounds %struct.image_params, %struct.image_params* %53, i32 0, i32 9
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %15, align 4
  br label %62

61:                                               ; preds = %37
  store i32 0, i32* %15, align 4
  br label %62

62:                                               ; preds = %61, %52
  %63 = load %struct.freebsd32_ps_strings*, %struct.freebsd32_ps_strings** %10, align 8
  %64 = ptrtoint %struct.freebsd32_ps_strings* %63 to i64
  store i64 %64, i64* %8, align 8
  %65 = load i32, i32* %15, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %86

67:                                               ; preds = %62
  %68 = load i32, i32* %15, align 4
  %69 = sext i32 %68 to i64
  %70 = load i64, i64* %8, align 8
  %71 = sub i64 %70, %69
  store i64 %71, i64* %8, align 8
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @rounddown2(i64 %72, i32 1)
  store i64 %73, i64* %8, align 8
  %74 = load %struct.image_params*, %struct.image_params** %2, align 8
  %75 = getelementptr inbounds %struct.image_params, %struct.image_params* %74, i32 0, i32 9
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %78, i32 0, i32 2
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* %8, align 8
  %82 = inttoptr i64 %81 to i8*
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = call i32 @copyout(i8* %80, i8* %82, i64 %84)
  br label %86

86:                                               ; preds = %67, %62
  %87 = load i64, i64* %14, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %103

89:                                               ; preds = %86
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* %8, align 8
  %92 = sub i64 %91, %90
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load %struct.image_params*, %struct.image_params** %2, align 8
  %95 = getelementptr inbounds %struct.image_params, %struct.image_params* %94, i32 0, i32 1
  store i64 %93, i64* %95, align 8
  %96 = load %struct.image_params*, %struct.image_params** %2, align 8
  %97 = getelementptr inbounds %struct.image_params, %struct.image_params* %96, i32 0, i32 0
  %98 = load i8*, i8** %97, align 8
  %99 = load i64, i64* %8, align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = load i64, i64* %14, align 8
  %102 = call i32 @copyout(i8* %98, i8* %100, i64 %101)
  br label %103

103:                                              ; preds = %89, %86
  %104 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %105 = call i32 @arc4rand(i8* %104, i32 64, i32 0)
  %106 = load i64, i64* %8, align 8
  %107 = sub i64 %106, 64
  store i64 %107, i64* %8, align 8
  %108 = load i64, i64* %8, align 8
  %109 = load %struct.image_params*, %struct.image_params** %2, align 8
  %110 = getelementptr inbounds %struct.image_params, %struct.image_params* %109, i32 0, i32 2
  store i64 %108, i64* %110, align 8
  %111 = getelementptr inbounds [64 x i8], [64 x i8]* %11, i64 0, i64 0
  %112 = load i64, i64* %8, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = call i32 @copyout(i8* %111, i8* %113, i64 64)
  %115 = load %struct.image_params*, %struct.image_params** %2, align 8
  %116 = getelementptr inbounds %struct.image_params, %struct.image_params* %115, i32 0, i32 3
  store i32 64, i32* %116, align 8
  store i32 0, i32* %5, align 4
  br label %117

117:                                              ; preds = %131, %103
  %118 = load i32, i32* %5, align 4
  %119 = load i32, i32* @MAXPAGESIZES, align 4
  %120 = icmp slt i32 %118, %119
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i32*, i32** @pagesizes, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = trunc i32 %126 to i8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %19, i64 %129
  store i8 %127, i8* %130, align 1
  br label %131

131:                                              ; preds = %121
  %132 = load i32, i32* %5, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %5, align 4
  br label %117

134:                                              ; preds = %117
  %135 = load i64, i64* %8, align 8
  %136 = sub i64 %135, %17
  store i64 %136, i64* %8, align 8
  %137 = load i64, i64* %8, align 8
  %138 = call i64 @rounddown2(i64 %137, i32 1)
  store i64 %138, i64* %8, align 8
  %139 = load i64, i64* %8, align 8
  %140 = load %struct.image_params*, %struct.image_params** %2, align 8
  %141 = getelementptr inbounds %struct.image_params, %struct.image_params* %140, i32 0, i32 4
  store i64 %139, i64* %141, align 8
  %142 = load i64, i64* %8, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = call i32 @copyout(i8* %19, i8* %143, i64 %17)
  %145 = trunc i64 %17 to i32
  %146 = load %struct.image_params*, %struct.image_params** %2, align 8
  %147 = getelementptr inbounds %struct.image_params, %struct.image_params* %146, i32 0, i32 5
  store i32 %145, i32* %147, align 8
  %148 = load i64, i64* @ARG_MAX, align 8
  %149 = load %struct.image_params*, %struct.image_params** %2, align 8
  %150 = getelementptr inbounds %struct.image_params, %struct.image_params* %149, i32 0, i32 6
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = sub i64 %148, %153
  %155 = load i64, i64* %8, align 8
  %156 = sub i64 %155, %154
  store i64 %156, i64* %8, align 8
  %157 = load i64, i64* %8, align 8
  %158 = call i64 @rounddown2(i64 %157, i32 1)
  store i64 %158, i64* %8, align 8
  %159 = load i64, i64* %8, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = bitcast i8* %160 to i32*
  store i32* %161, i32** %6, align 8
  %162 = load %struct.image_params*, %struct.image_params** %2, align 8
  %163 = getelementptr inbounds %struct.image_params, %struct.image_params* %162, i32 0, i32 7
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load i32 (%struct.image_params*, i32*)*, i32 (%struct.image_params*, i32*)** %165, align 8
  %167 = icmp ne i32 (%struct.image_params*, i32*)* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %134
  %169 = load %struct.image_params*, %struct.image_params** %2, align 8
  %170 = getelementptr inbounds %struct.image_params, %struct.image_params* %169, i32 0, i32 7
  %171 = load %struct.TYPE_10__*, %struct.TYPE_10__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %171, i32 0, i32 1
  %173 = load i32 (%struct.image_params*, i32*)*, i32 (%struct.image_params*, i32*)** %172, align 8
  %174 = load %struct.image_params*, %struct.image_params** %2, align 8
  %175 = bitcast i32** %6 to i32*
  %176 = call i32 %173(%struct.image_params* %174, i32* %175)
  br label %177

177:                                              ; preds = %168, %134
  %178 = load %struct.image_params*, %struct.image_params** %2, align 8
  %179 = getelementptr inbounds %struct.image_params, %struct.image_params* %178, i32 0, i32 8
  %180 = load i32*, i32** %179, align 8
  %181 = icmp ne i32* %180, null
  br i1 %181, label %182, label %191

182:                                              ; preds = %177
  %183 = load %struct.image_params*, %struct.image_params** %2, align 8
  %184 = getelementptr inbounds %struct.image_params, %struct.image_params* %183, i32 0, i32 7
  %185 = load %struct.TYPE_10__*, %struct.TYPE_10__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %185, i32 0, i32 0
  %187 = load i32 (%struct.image_params*, i32*)*, i32 (%struct.image_params*, i32*)** %186, align 8
  %188 = load %struct.image_params*, %struct.image_params** %2, align 8
  %189 = bitcast i32** %6 to i32*
  %190 = call i32 %187(%struct.image_params* %188, i32* %189)
  br label %191

191:                                              ; preds = %182, %177
  %192 = load %struct.image_params*, %struct.image_params** %2, align 8
  %193 = getelementptr inbounds %struct.image_params, %struct.image_params* %192, i32 0, i32 6
  %194 = load %struct.TYPE_11__*, %struct.TYPE_11__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  %198 = load %struct.image_params*, %struct.image_params** %2, align 8
  %199 = getelementptr inbounds %struct.image_params, %struct.image_params* %198, i32 0, i32 6
  %200 = load %struct.TYPE_11__*, %struct.TYPE_11__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = add nsw i32 %197, %202
  %204 = add nsw i32 %203, 1
  %205 = load i32*, i32** %6, align 8
  %206 = sext i32 %204 to i64
  %207 = sub i64 0, %206
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32* %208, i32** %6, align 8
  %209 = load i32*, i32** %6, align 8
  store i32* %209, i32** %9, align 8
  %210 = load %struct.image_params*, %struct.image_params** %2, align 8
  %211 = getelementptr inbounds %struct.image_params, %struct.image_params* %210, i32 0, i32 6
  %212 = load %struct.TYPE_11__*, %struct.TYPE_11__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 3
  %214 = load i8*, i8** %213, align 8
  store i8* %214, i8** %7, align 8
  %215 = load %struct.image_params*, %struct.image_params** %2, align 8
  %216 = getelementptr inbounds %struct.image_params, %struct.image_params* %215, i32 0, i32 6
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  store i32 %219, i32* %3, align 4
  %220 = load %struct.image_params*, %struct.image_params** %2, align 8
  %221 = getelementptr inbounds %struct.image_params, %struct.image_params* %220, i32 0, i32 6
  %222 = load %struct.TYPE_11__*, %struct.TYPE_11__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 4
  store i32 %224, i32* %4, align 4
  %225 = load i8*, i8** %7, align 8
  %226 = load i64, i64* %8, align 8
  %227 = inttoptr i64 %226 to i8*
  %228 = load i64, i64* @ARG_MAX, align 8
  %229 = load %struct.image_params*, %struct.image_params** %2, align 8
  %230 = getelementptr inbounds %struct.image_params, %struct.image_params* %229, i32 0, i32 6
  %231 = load %struct.TYPE_11__*, %struct.TYPE_11__** %230, align 8
  %232 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = sub i64 %228, %233
  %235 = call i32 @copyout(i8* %225, i8* %227, i64 %234)
  %236 = load %struct.freebsd32_ps_strings*, %struct.freebsd32_ps_strings** %10, align 8
  %237 = getelementptr inbounds %struct.freebsd32_ps_strings, %struct.freebsd32_ps_strings* %236, i32 0, i32 0
  %238 = load i32*, i32** %6, align 8
  %239 = ptrtoint i32* %238 to i64
  %240 = trunc i64 %239 to i32
  %241 = call i32 @suword32(i32* %237, i32 %240)
  %242 = load %struct.freebsd32_ps_strings*, %struct.freebsd32_ps_strings** %10, align 8
  %243 = getelementptr inbounds %struct.freebsd32_ps_strings, %struct.freebsd32_ps_strings* %242, i32 0, i32 1
  %244 = load i32, i32* %3, align 4
  %245 = call i32 @suword32(i32* %243, i32 %244)
  br label %246

246:                                              ; preds = %267, %191
  %247 = load i32, i32* %3, align 4
  %248 = icmp sgt i32 %247, 0
  br i1 %248, label %249, label %270

249:                                              ; preds = %246
  %250 = load i32*, i32** %6, align 8
  %251 = getelementptr inbounds i32, i32* %250, i32 1
  store i32* %251, i32** %6, align 8
  %252 = load i64, i64* %8, align 8
  %253 = trunc i64 %252 to i32
  %254 = call i32 @suword32(i32* %250, i32 %253)
  br label %255

255:                                              ; preds = %261, %249
  %256 = load i8*, i8** %7, align 8
  %257 = getelementptr inbounds i8, i8* %256, i32 1
  store i8* %257, i8** %7, align 8
  %258 = load i8, i8* %256, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %255
  %262 = load i64, i64* %8, align 8
  %263 = add i64 %262, 1
  store i64 %263, i64* %8, align 8
  br label %255

264:                                              ; preds = %255
  %265 = load i64, i64* %8, align 8
  %266 = add i64 %265, 1
  store i64 %266, i64* %8, align 8
  br label %267

267:                                              ; preds = %264
  %268 = load i32, i32* %3, align 4
  %269 = add nsw i32 %268, -1
  store i32 %269, i32* %3, align 4
  br label %246

270:                                              ; preds = %246
  %271 = load i32*, i32** %6, align 8
  %272 = getelementptr inbounds i32, i32* %271, i32 1
  store i32* %272, i32** %6, align 8
  %273 = call i32 @suword32(i32* %271, i32 0)
  %274 = load %struct.freebsd32_ps_strings*, %struct.freebsd32_ps_strings** %10, align 8
  %275 = getelementptr inbounds %struct.freebsd32_ps_strings, %struct.freebsd32_ps_strings* %274, i32 0, i32 2
  %276 = load i32*, i32** %6, align 8
  %277 = ptrtoint i32* %276 to i64
  %278 = trunc i64 %277 to i32
  %279 = call i32 @suword32(i32* %275, i32 %278)
  %280 = load %struct.freebsd32_ps_strings*, %struct.freebsd32_ps_strings** %10, align 8
  %281 = getelementptr inbounds %struct.freebsd32_ps_strings, %struct.freebsd32_ps_strings* %280, i32 0, i32 3
  %282 = load i32, i32* %4, align 4
  %283 = call i32 @suword32(i32* %281, i32 %282)
  br label %284

284:                                              ; preds = %305, %270
  %285 = load i32, i32* %4, align 4
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %308

287:                                              ; preds = %284
  %288 = load i32*, i32** %6, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 1
  store i32* %289, i32** %6, align 8
  %290 = load i64, i64* %8, align 8
  %291 = trunc i64 %290 to i32
  %292 = call i32 @suword32(i32* %288, i32 %291)
  br label %293

293:                                              ; preds = %299, %287
  %294 = load i8*, i8** %7, align 8
  %295 = getelementptr inbounds i8, i8* %294, i32 1
  store i8* %295, i8** %7, align 8
  %296 = load i8, i8* %294, align 1
  %297 = sext i8 %296 to i32
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %302

299:                                              ; preds = %293
  %300 = load i64, i64* %8, align 8
  %301 = add i64 %300, 1
  store i64 %301, i64* %8, align 8
  br label %293

302:                                              ; preds = %293
  %303 = load i64, i64* %8, align 8
  %304 = add i64 %303, 1
  store i64 %304, i64* %8, align 8
  br label %305

305:                                              ; preds = %302
  %306 = load i32, i32* %4, align 4
  %307 = add nsw i32 %306, -1
  store i32 %307, i32* %4, align 4
  br label %284

308:                                              ; preds = %284
  %309 = load i32*, i32** %6, align 8
  %310 = call i32 @suword32(i32* %309, i32 0)
  %311 = load i32*, i32** %9, align 8
  %312 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %312)
  ret i32* %311
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strlen(i8*) #2

declare dso_local i64 @rounddown2(i64, i32) #2

declare dso_local i32 @copyout(i8*, i8*, i64) #2

declare dso_local i32 @arc4rand(i8*, i32, i32) #2

declare dso_local i32 @suword32(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
