; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err.c_get_error_values.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssl/crypto/err/extr_err.c_get_error_values.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i64*, i8**, i32*, i8**, i32* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ERR_R_INTERNAL_ERROR = common dso_local global i64 0, align 8
@ERR_FLAG_CLEAR = common dso_local global i32 0, align 4
@ERR_NUM_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"NA\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i32, i8**, i32*, i8**, i32*)* @get_error_values to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_error_values(i32 %0, i32 %1, i8** %2, i32* %3, i8** %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i8** %2, i8*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32 0, i32* %14, align 4
  %17 = call %struct.TYPE_5__* (...) @ERR_get_state()
  store %struct.TYPE_5__* %17, %struct.TYPE_5__** %15, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %19 = icmp eq %struct.TYPE_5__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %6
  store i64 0, i64* %7, align 8
  br label %250

21:                                               ; preds = %6
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %49

24:                                               ; preds = %21
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i8**, i8*** %10, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27
  %31 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %31, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = load i32*, i32** %11, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32*, i32** %11, align 8
  store i32 0, i32* %36, align 4
  br label %37

37:                                               ; preds = %35, %32
  %38 = load i8**, i8*** %12, align 8
  %39 = icmp ne i8** %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %41, align 8
  br label %42

42:                                               ; preds = %40, %37
  %43 = load i32*, i32** %13, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %47

45:                                               ; preds = %42
  %46 = load i32*, i32** %13, align 8
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %45, %42
  %48 = load i64, i64* @ERR_R_INTERNAL_ERROR, align 8
  store i64 %48, i64* %7, align 8
  br label %250

49:                                               ; preds = %24, %21
  br label %50

50:                                               ; preds = %110, %89, %49
  %51 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %53, %56
  br i1 %57, label %58, label %120

58:                                               ; preds = %50
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @ERR_FLAG_CLEAR, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %93

71:                                               ; preds = %58
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @err_clear(%struct.TYPE_5__* %72, i32 %75)
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %71
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = sub nsw i32 %84, 1
  br label %89

86:                                               ; preds = %71
  %87 = load i32, i32* @ERR_NUM_ERRORS, align 4
  %88 = sub nsw i32 %87, 1
  br label %89

89:                                               ; preds = %86, %81
  %90 = phi i32 [ %85, %81 ], [ %88, %86 ]
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  br label %50

93:                                               ; preds = %58
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, 1
  %98 = load i32, i32* @ERR_NUM_ERRORS, align 4
  %99 = srem i32 %97, %98
  store i32 %99, i32* %14, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 2
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %14, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @ERR_FLAG_CLEAR, align 4
  %108 = and i32 %106, %107
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %119

110:                                              ; preds = %93
  %111 = load i32, i32* %14, align 4
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 8
  %114 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @err_clear(%struct.TYPE_5__* %114, i32 %117)
  br label %50

119:                                              ; preds = %93
  br label %120

120:                                              ; preds = %119, %50
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  store i64 0, i64* %7, align 8
  br label %250

129:                                              ; preds = %120
  %130 = load i32, i32* %9, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %129
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  store i32 %135, i32* %14, align 4
  br label %143

136:                                              ; preds = %129
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  %141 = load i32, i32* @ERR_NUM_ERRORS, align 4
  %142 = srem i32 %140, %141
  store i32 %142, i32* %14, align 4
  br label %143

143:                                              ; preds = %136, %132
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load i64*, i64** %145, align 8
  %147 = load i32, i32* %14, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i64, i64* %146, i64 %148
  %150 = load i64, i64* %149, align 8
  store i64 %150, i64* %16, align 8
  %151 = load i32, i32* %8, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %163

153:                                              ; preds = %143
  %154 = load i32, i32* %14, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i32 %154, i32* %156, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %14, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  store i64 0, i64* %162, align 8
  br label %163

163:                                              ; preds = %153, %143
  %164 = load i8**, i8*** %10, align 8
  %165 = icmp ne i8** %164, null
  br i1 %165, label %166, label %199

166:                                              ; preds = %163
  %167 = load i32*, i32** %11, align 8
  %168 = icmp ne i32* %167, null
  br i1 %168, label %169, label %199

169:                                              ; preds = %166
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 4
  %172 = load i8**, i8*** %171, align 8
  %173 = load i32, i32* %14, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i8*, i8** %172, i64 %174
  %176 = load i8*, i8** %175, align 8
  %177 = icmp eq i8* %176, null
  br i1 %177, label %178, label %181

178:                                              ; preds = %169
  %179 = load i8**, i8*** %10, align 8
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8** %179, align 8
  %180 = load i32*, i32** %11, align 8
  store i32 0, i32* %180, align 4
  br label %198

181:                                              ; preds = %169
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %182, i32 0, i32 4
  %184 = load i8**, i8*** %183, align 8
  %185 = load i32, i32* %14, align 4
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i8*, i8** %184, i64 %186
  %188 = load i8*, i8** %187, align 8
  %189 = load i8**, i8*** %10, align 8
  store i8* %188, i8** %189, align 8
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 5
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %14, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load i32*, i32** %11, align 8
  store i32 %196, i32* %197, align 4
  br label %198

198:                                              ; preds = %181, %178
  br label %199

199:                                              ; preds = %198, %166, %163
  %200 = load i8**, i8*** %12, align 8
  %201 = icmp eq i8** %200, null
  br i1 %201, label %202, label %210

202:                                              ; preds = %199
  %203 = load i32, i32* %8, align 4
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %202
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %207 = load i32, i32* %14, align 4
  %208 = call i32 @err_clear_data(%struct.TYPE_5__* %206, i32 %207)
  br label %209

209:                                              ; preds = %205, %202
  br label %248

210:                                              ; preds = %199
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %212 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %211, i32 0, i32 6
  %213 = load i8**, i8*** %212, align 8
  %214 = load i32, i32* %14, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds i8*, i8** %213, i64 %215
  %217 = load i8*, i8** %216, align 8
  %218 = icmp eq i8* %217, null
  br i1 %218, label %219, label %226

219:                                              ; preds = %210
  %220 = load i8**, i8*** %12, align 8
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %220, align 8
  %221 = load i32*, i32** %13, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i32*, i32** %13, align 8
  store i32 0, i32* %224, align 4
  br label %225

225:                                              ; preds = %223, %219
  br label %247

226:                                              ; preds = %210
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 6
  %229 = load i8**, i8*** %228, align 8
  %230 = load i32, i32* %14, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i8*, i8** %229, i64 %231
  %233 = load i8*, i8** %232, align 8
  %234 = load i8**, i8*** %12, align 8
  store i8* %233, i8** %234, align 8
  %235 = load i32*, i32** %13, align 8
  %236 = icmp ne i32* %235, null
  br i1 %236, label %237, label %246

237:                                              ; preds = %226
  %238 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %238, i32 0, i32 7
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %14, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load i32*, i32** %13, align 8
  store i32 %244, i32* %245, align 4
  br label %246

246:                                              ; preds = %237, %226
  br label %247

247:                                              ; preds = %246, %225
  br label %248

248:                                              ; preds = %247, %209
  %249 = load i64, i64* %16, align 8
  store i64 %249, i64* %7, align 8
  br label %250

250:                                              ; preds = %248, %128, %47, %20
  %251 = load i64, i64* %7, align 8
  ret i64 %251
}

declare dso_local %struct.TYPE_5__* @ERR_get_state(...) #1

declare dso_local i32 @err_clear(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @err_clear_data(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
