; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_lcs.c_svn_diff__lcs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/subversion/subversion/libsvn_diff/extr_lcs.c_svn_diff__lcs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_18__*, %struct.TYPE_15__**, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_17__* }
%struct.TYPE_16__ = type { %struct.TYPE_18__*, %struct.TYPE_17__** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_18__* @svn_diff__lcs(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, i64* %2, i64* %3, i64 %4, i32 %5, i32 %6, i32* %7) #0 {
  %9 = alloca %struct.TYPE_18__*, align 8
  %10 = alloca %struct.TYPE_17__*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [2 x i32], align 4
  %19 = alloca [2 x i64*], align 16
  %20 = alloca [2 x i64], align 16
  %21 = alloca i64, align 8
  %22 = alloca %struct.TYPE_16__*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca %struct.TYPE_18__*, align 8
  %27 = alloca %struct.TYPE_18__*, align 8
  %28 = alloca [2 x %struct.TYPE_17__], align 16
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %10, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %11, align 8
  store i64* %2, i64** %12, align 8
  store i64* %3, i64** %13, align 8
  store i64 %4, i64* %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32* %7, i32** %17, align 8
  store i32 0, i32* %25, align 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %27, align 8
  %29 = load i32*, i32** %17, align 8
  %30 = call %struct.TYPE_18__* @apr_palloc(i32* %29, i32 32)
  store %struct.TYPE_18__* %30, %struct.TYPE_18__** %26, align 8
  %31 = load i32*, i32** %17, align 8
  %32 = call i8* @apr_pcalloc(i32* %31, i32 4)
  %33 = bitcast i8* %32 to %struct.TYPE_15__*
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %34, i32 0, i32 2
  %36 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %36, i64 0
  store %struct.TYPE_15__* %33, %struct.TYPE_15__** %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %39 = icmp ne %struct.TYPE_17__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* %16, align 4
  %45 = add nsw i32 %43, %44
  %46 = add nsw i32 %45, 1
  br label %52

47:                                               ; preds = %8
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %16, align 4
  %50 = add nsw i32 %48, %49
  %51 = add nsw i32 %50, 1
  br label %52

52:                                               ; preds = %47, %40
  %53 = phi i32 [ %46, %40 ], [ %51, %47 ]
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %56, i64 0
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 0
  store i32 %53, i32* %59, align 4
  %60 = load i32*, i32** %17, align 8
  %61 = call i8* @apr_pcalloc(i32* %60, i32 4)
  %62 = bitcast i8* %61 to %struct.TYPE_15__*
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 2
  %65 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %65, i64 1
  store %struct.TYPE_15__* %62, %struct.TYPE_15__** %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %68 = icmp ne %struct.TYPE_17__* %67, null
  br i1 %68, label %69, label %76

69:                                               ; preds = %52
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %16, align 4
  %74 = add nsw i32 %72, %73
  %75 = add nsw i32 %74, 1
  br label %81

76:                                               ; preds = %52
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %16, align 4
  %79 = add nsw i32 %77, %78
  %80 = add nsw i32 %79, 1
  br label %81

81:                                               ; preds = %76, %69
  %82 = phi i32 [ %75, %69 ], [ %80, %76 ]
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %85, i64 1
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  store i32 %82, i32* %88, align 4
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 3
  store i32 0, i32* %90, align 8
  %91 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %92 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %91, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %94 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %93, i32 0, i32 1
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %94, align 8
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %96 = icmp eq %struct.TYPE_17__* %95, null
  br i1 %96, label %100, label %97

97:                                               ; preds = %81
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %99 = icmp eq %struct.TYPE_17__* %98, null
  br i1 %99, label %100, label %136

100:                                              ; preds = %97, %81
  %101 = load i32, i32* %16, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %100
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %105 = load i32, i32* %16, align 4
  %106 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %107 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %106, i32 0, i32 2
  %108 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %108, i64 0
  %110 = load %struct.TYPE_15__*, %struct.TYPE_15__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %16, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 2
  %117 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %117, i64 1
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* %16, align 4
  %123 = sub nsw i32 %121, %122
  %124 = load i32*, i32** %17, align 8
  %125 = call %struct.TYPE_18__* @prepend_lcs(%struct.TYPE_18__* %104, i32 %105, i32 %114, i32 %123, i32* %124)
  store %struct.TYPE_18__* %125, %struct.TYPE_18__** %26, align 8
  br label %126

126:                                              ; preds = %103, %100
  %127 = load i32, i32* %15, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %126
  %130 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %17, align 8
  %133 = call %struct.TYPE_18__* @prepend_lcs(%struct.TYPE_18__* %130, i32 %131, i32 1, i32 1, i32* %132)
  store %struct.TYPE_18__* %133, %struct.TYPE_18__** %26, align 8
  br label %134

134:                                              ; preds = %129, %126
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %135, %struct.TYPE_18__** %9, align 8
  br label %407

136:                                              ; preds = %97
  %137 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  store i64 0, i64* %137, align 16
  %138 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  store i64 0, i64* %138, align 8
  store i64 0, i64* %21, align 8
  br label %139

139:                                              ; preds = %172, %136
  %140 = load i64, i64* %21, align 8
  %141 = load i64, i64* %14, align 8
  %142 = icmp ult i64 %140, %141
  br i1 %142, label %143, label %175

143:                                              ; preds = %139
  %144 = load i64*, i64** %12, align 8
  %145 = load i64, i64* %21, align 8
  %146 = getelementptr inbounds i64, i64* %144, i64 %145
  %147 = load i64, i64* %146, align 8
  %148 = icmp eq i64 %147, 0
  br i1 %148, label %149, label %157

149:                                              ; preds = %143
  %150 = load i64*, i64** %13, align 8
  %151 = load i64, i64* %21, align 8
  %152 = getelementptr inbounds i64, i64* %150, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, %153
  store i64 %156, i64* %154, align 8
  br label %157

157:                                              ; preds = %149, %143
  %158 = load i64*, i64** %13, align 8
  %159 = load i64, i64* %21, align 8
  %160 = getelementptr inbounds i64, i64* %158, i64 %159
  %161 = load i64, i64* %160, align 8
  %162 = icmp eq i64 %161, 0
  br i1 %162, label %163, label %171

163:                                              ; preds = %157
  %164 = load i64*, i64** %12, align 8
  %165 = load i64, i64* %21, align 8
  %166 = getelementptr inbounds i64, i64* %164, i64 %165
  %167 = load i64, i64* %166, align 8
  %168 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %169 = load i64, i64* %168, align 16
  %170 = add i64 %169, %167
  store i64 %170, i64* %168, align 16
  br label %171

171:                                              ; preds = %163, %157
  br label %172

172:                                              ; preds = %171
  %173 = load i64, i64* %21, align 8
  %174 = add i64 %173, 1
  store i64 %174, i64* %21, align 8
  br label %139

175:                                              ; preds = %139
  %176 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %177 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 2
  %181 = load %struct.TYPE_17__*, %struct.TYPE_17__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = sub nsw i32 %178, %183
  %185 = add nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 0
  %188 = load i64, i64* %187, align 16
  %189 = sub i64 %186, %188
  %190 = trunc i64 %189 to i32
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  store i32 %190, i32* %191, align 4
  %192 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %193 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = sub nsw i32 %194, %199
  %201 = add nsw i32 %200, 1
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 0, i64 1
  %204 = load i64, i64* %203, align 8
  %205 = sub i64 %202, %204
  %206 = trunc i64 %205 to i32
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  store i32 %206, i32* %207, align 4
  %208 = load i32*, i32** %17, align 8
  %209 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %210 = load i32, i32* %209, align 4
  %211 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %212 = load i32, i32* %211, align 4
  %213 = add nsw i32 %210, %212
  %214 = add nsw i32 %213, 3
  %215 = sext i32 %214 to i64
  %216 = mul i64 16, %215
  %217 = trunc i64 %216 to i32
  %218 = call i8* @apr_pcalloc(i32* %208, i32 %217)
  %219 = bitcast i8* %218 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %219, %struct.TYPE_16__** %22, align 8
  %220 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %221 = load i32, i32* %220, align 4
  %222 = add nsw i32 %221, 1
  %223 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %224 = sext i32 %222 to i64
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %223, i64 %224
  store %struct.TYPE_16__* %225, %struct.TYPE_16__** %22, align 8
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 2
  %228 = load %struct.TYPE_17__*, %struct.TYPE_17__** %227, align 8
  %229 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 0
  %230 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %229, i32 0, i32 2
  store %struct.TYPE_17__* %228, %struct.TYPE_17__** %230, align 8
  %231 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 0
  %232 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %233 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %232, i32 0, i32 2
  store %struct.TYPE_17__* %231, %struct.TYPE_17__** %233, align 8
  %234 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %235 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = add nsw i32 %236, 1
  %238 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 0
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 16
  %240 = load i64*, i64** %12, align 8
  %241 = getelementptr inbounds [2 x i64*], [2 x i64*]* %19, i64 0, i64 0
  store i64* %240, i64** %241, align 16
  %242 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %243 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %242, i32 0, i32 2
  %244 = load %struct.TYPE_17__*, %struct.TYPE_17__** %243, align 8
  %245 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 1
  %246 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %245, i32 0, i32 2
  store %struct.TYPE_17__* %244, %struct.TYPE_17__** %246, align 8
  %247 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 1
  %248 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %249 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %248, i32 0, i32 2
  store %struct.TYPE_17__* %247, %struct.TYPE_17__** %249, align 8
  %250 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %251 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = add nsw i32 %252, 1
  %254 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 1
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 0
  store i32 %253, i32* %255, align 16
  %256 = load i64*, i64** %13, align 8
  %257 = getelementptr inbounds [2 x i64*], [2 x i64*]* %19, i64 0, i64 1
  store i64* %256, i64** %257, align 8
  %258 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 0
  %259 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %258, i32 0, i32 1
  store i32 -1, i32* %259, align 4
  %260 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 1
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 1
  store i32 -2, i32* %261, align 4
  %262 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 0
  %263 = load i32, i32* %262, align 4
  %264 = getelementptr inbounds [2 x i32], [2 x i32]* %18, i64 0, i64 1
  %265 = load i32, i32* %264, align 4
  %266 = sub nsw i32 %263, %265
  store i32 %266, i32* %23, align 4
  %267 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 0
  %268 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %267, i32 0, i32 2
  %269 = load %struct.TYPE_17__*, %struct.TYPE_17__** %268, align 8
  %270 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %271 = load i32, i32* %23, align 4
  %272 = sub nsw i32 %271, 1
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %270, i64 %273
  %275 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %275, align 8
  %277 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %276, i64 0
  store %struct.TYPE_17__* %269, %struct.TYPE_17__** %277, align 8
  %278 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 1
  %279 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %280 = load i32, i32* %23, align 4
  %281 = sub nsw i32 %280, 1
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %279, i64 %282
  %284 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %283, i32 0, i32 1
  %285 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %284, align 8
  %286 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %285, i64 1
  store %struct.TYPE_17__* %278, %struct.TYPE_17__** %286, align 8
  store i32 0, i32* %25, align 4
  br label %287

287:                                              ; preds = %338, %175
  %288 = load i32, i32* %23, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %292

290:                                              ; preds = %287
  %291 = load i32, i32* %23, align 4
  br label %293

292:                                              ; preds = %287
  br label %293

293:                                              ; preds = %292, %290
  %294 = phi i32 [ %291, %290 ], [ 0, %292 ]
  %295 = load i32, i32* %25, align 4
  %296 = sub nsw i32 %294, %295
  store i32 %296, i32* %24, align 4
  br label %297

297:                                              ; preds = %308, %293
  %298 = load i32, i32* %24, align 4
  %299 = icmp slt i32 %298, 0
  br i1 %299, label %300, label %311

300:                                              ; preds = %297
  %301 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %302 = load i32, i32* %24, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %301, i64 %303
  %305 = getelementptr inbounds [2 x i64*], [2 x i64*]* %19, i64 0, i64 0
  %306 = load i32*, i32** %17, align 8
  %307 = call i32 @svn_diff__snake(%struct.TYPE_16__* %304, i64** %305, %struct.TYPE_18__** %27, i32* %306)
  br label %308

308:                                              ; preds = %300
  %309 = load i32, i32* %24, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %24, align 4
  br label %297

311:                                              ; preds = %297
  %312 = load i32, i32* %23, align 4
  %313 = icmp sgt i32 %312, 0
  br i1 %313, label %314, label %316

314:                                              ; preds = %311
  %315 = load i32, i32* %23, align 4
  br label %317

316:                                              ; preds = %311
  br label %317

317:                                              ; preds = %316, %314
  %318 = phi i32 [ %315, %314 ], [ 0, %316 ]
  %319 = load i32, i32* %25, align 4
  %320 = add nsw i32 %318, %319
  store i32 %320, i32* %24, align 4
  br label %321

321:                                              ; preds = %332, %317
  %322 = load i32, i32* %24, align 4
  %323 = icmp sge i32 %322, 0
  br i1 %323, label %324, label %335

324:                                              ; preds = %321
  %325 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %326 = load i32, i32* %24, align 4
  %327 = sext i32 %326 to i64
  %328 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %325, i64 %327
  %329 = getelementptr inbounds [2 x i64*], [2 x i64*]* %19, i64 0, i64 0
  %330 = load i32*, i32** %17, align 8
  %331 = call i32 @svn_diff__snake(%struct.TYPE_16__* %328, i64** %329, %struct.TYPE_18__** %27, i32* %330)
  br label %332

332:                                              ; preds = %324
  %333 = load i32, i32* %24, align 4
  %334 = add nsw i32 %333, -1
  store i32 %334, i32* %24, align 4
  br label %321

335:                                              ; preds = %321
  %336 = load i32, i32* %25, align 4
  %337 = add nsw i32 %336, 1
  store i32 %337, i32* %25, align 4
  br label %338

338:                                              ; preds = %335
  %339 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %340 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %339, i64 0
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %340, i32 0, i32 1
  %342 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %342, i64 1
  %344 = load %struct.TYPE_17__*, %struct.TYPE_17__** %343, align 8
  %345 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 1
  %346 = icmp ne %struct.TYPE_17__* %344, %345
  br i1 %346, label %287, label %347

347:                                              ; preds = %338
  %348 = load i32, i32* %16, align 4
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %350, label %378

350:                                              ; preds = %347
  %351 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %352 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %351, i64 0
  %353 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %352, i32 0, i32 0
  %354 = load %struct.TYPE_18__*, %struct.TYPE_18__** %353, align 8
  %355 = load i32, i32* %16, align 4
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 2
  %358 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %358, i64 0
  %360 = load %struct.TYPE_15__*, %struct.TYPE_15__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %360, i32 0, i32 0
  %362 = load i32, i32* %361, align 4
  %363 = load i32, i32* %16, align 4
  %364 = sub nsw i32 %362, %363
  %365 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %366 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %365, i32 0, i32 2
  %367 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %366, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %367, i64 1
  %369 = load %struct.TYPE_15__*, %struct.TYPE_15__** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %369, i32 0, i32 0
  %371 = load i32, i32* %370, align 4
  %372 = load i32, i32* %16, align 4
  %373 = sub nsw i32 %371, %372
  %374 = load i32*, i32** %17, align 8
  %375 = call %struct.TYPE_18__* @prepend_lcs(%struct.TYPE_18__* %354, i32 %355, i32 %364, i32 %373, i32* %374)
  %376 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %377 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %376, i32 0, i32 1
  store %struct.TYPE_18__* %375, %struct.TYPE_18__** %377, align 8
  br label %385

378:                                              ; preds = %347
  %379 = load %struct.TYPE_16__*, %struct.TYPE_16__** %22, align 8
  %380 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %379, i64 0
  %381 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %380, i32 0, i32 0
  %382 = load %struct.TYPE_18__*, %struct.TYPE_18__** %381, align 8
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 1
  store %struct.TYPE_18__* %382, %struct.TYPE_18__** %384, align 8
  br label %385

385:                                              ; preds = %378, %350
  %386 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %387 = call %struct.TYPE_18__* @svn_diff__lcs_reverse(%struct.TYPE_18__* %386)
  store %struct.TYPE_18__* %387, %struct.TYPE_18__** %26, align 8
  %388 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 0
  %389 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %388, i32 0, i32 2
  %390 = load %struct.TYPE_17__*, %struct.TYPE_17__** %389, align 8
  %391 = load %struct.TYPE_17__*, %struct.TYPE_17__** %10, align 8
  %392 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %391, i32 0, i32 2
  store %struct.TYPE_17__* %390, %struct.TYPE_17__** %392, align 8
  %393 = getelementptr inbounds [2 x %struct.TYPE_17__], [2 x %struct.TYPE_17__]* %28, i64 0, i64 1
  %394 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %393, i32 0, i32 2
  %395 = load %struct.TYPE_17__*, %struct.TYPE_17__** %394, align 8
  %396 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %397 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %396, i32 0, i32 2
  store %struct.TYPE_17__* %395, %struct.TYPE_17__** %397, align 8
  %398 = load i32, i32* %15, align 4
  %399 = icmp ne i32 %398, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %385
  %401 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  %402 = load i32, i32* %15, align 4
  %403 = load i32*, i32** %17, align 8
  %404 = call %struct.TYPE_18__* @prepend_lcs(%struct.TYPE_18__* %401, i32 %402, i32 1, i32 1, i32* %403)
  store %struct.TYPE_18__* %404, %struct.TYPE_18__** %9, align 8
  br label %407

405:                                              ; preds = %385
  %406 = load %struct.TYPE_18__*, %struct.TYPE_18__** %26, align 8
  store %struct.TYPE_18__* %406, %struct.TYPE_18__** %9, align 8
  br label %407

407:                                              ; preds = %405, %400, %134
  %408 = load %struct.TYPE_18__*, %struct.TYPE_18__** %9, align 8
  ret %struct.TYPE_18__* %408
}

declare dso_local %struct.TYPE_18__* @apr_palloc(i32*, i32) #1

declare dso_local i8* @apr_pcalloc(i32*, i32) #1

declare dso_local %struct.TYPE_18__* @prepend_lcs(%struct.TYPE_18__*, i32, i32, i32, i32*) #1

declare dso_local i32 @svn_diff__snake(%struct.TYPE_16__*, i64**, %struct.TYPE_18__**, i32*) #1

declare dso_local %struct.TYPE_18__* @svn_diff__lcs_reverse(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
