; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_utils.c_sa_search.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libdivsufsort/lib/extr_utils.c_sa_search.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @sa_search(i32* %0, i64 %1, i32* %2, i64 %3, i64* %4, i64 %5, i64* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i32* %2, i32** %11, align 8
  store i64 %3, i64* %12, align 8
  store i64* %4, i64** %13, align 8
  store i64 %5, i64* %14, align 8
  store i64* %6, i64** %15, align 8
  %31 = load i64*, i64** %15, align 8
  %32 = icmp ne i64* %31, null
  br i1 %32, label %33, label %35

33:                                               ; preds = %7
  %34 = load i64*, i64** %15, align 8
  store i64 -1, i64* %34, align 8
  br label %35

35:                                               ; preds = %33, %7
  %36 = load i32*, i32** %9, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %53, label %38

38:                                               ; preds = %35
  %39 = load i32*, i32** %11, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %53, label %41

41:                                               ; preds = %38
  %42 = load i64*, i64** %13, align 8
  %43 = icmp eq i64* %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %41
  %45 = load i64, i64* %10, align 8
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %53, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %12, align 8
  %49 = icmp slt i64 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* %14, align 8
  %52 = icmp slt i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50, %47, %44, %41, %38, %35
  store i64 -1, i64* %8, align 8
  br label %233

54:                                               ; preds = %50
  %55 = load i64, i64* %10, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %54
  %58 = load i64, i64* %14, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %57, %54
  store i64 0, i64* %8, align 8
  br label %233

61:                                               ; preds = %57
  %62 = load i64, i64* %12, align 8
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %61
  %65 = load i64*, i64** %15, align 8
  %66 = icmp ne i64* %65, null
  br i1 %66, label %67, label %69

67:                                               ; preds = %64
  %68 = load i64*, i64** %15, align 8
  store i64 0, i64* %68, align 8
  br label %69

69:                                               ; preds = %67, %64
  %70 = load i64, i64* %14, align 8
  store i64 %70, i64* %8, align 8
  br label %233

71:                                               ; preds = %61
  store i64 0, i64* %29, align 8
  store i64 0, i64* %28, align 8
  store i64 0, i64* %27, align 8
  store i64 0, i64* %22, align 8
  store i64 0, i64* %21, align 8
  %72 = load i64, i64* %14, align 8
  store i64 %72, i64* %16, align 8
  %73 = load i64, i64* %16, align 8
  %74 = ashr i64 %73, 1
  store i64 %74, i64* %19, align 8
  br label %75

75:                                               ; preds = %210, %71
  %76 = load i64, i64* %16, align 8
  %77 = icmp slt i64 0, %76
  br i1 %77, label %78, label %214

78:                                               ; preds = %75
  %79 = load i64, i64* %21, align 8
  %80 = load i64, i64* %22, align 8
  %81 = call i64 @MIN(i64 %79, i64 %80)
  store i64 %81, i64* %20, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i64, i64* %10, align 8
  %84 = load i32*, i32** %11, align 8
  %85 = load i64, i64* %12, align 8
  %86 = load i64*, i64** %13, align 8
  %87 = load i64, i64* %27, align 8
  %88 = load i64, i64* %19, align 8
  %89 = add nsw i64 %87, %88
  %90 = getelementptr inbounds i64, i64* %86, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = call i64 @_compare(i32* %82, i64 %83, i32* %84, i64 %85, i64 %91, i64* %20)
  store i64 %92, i64* %30, align 8
  %93 = load i64, i64* %30, align 8
  %94 = icmp slt i64 %93, 0
  br i1 %94, label %95, label %106

95:                                               ; preds = %78
  %96 = load i64, i64* %19, align 8
  %97 = add nsw i64 %96, 1
  %98 = load i64, i64* %27, align 8
  %99 = add nsw i64 %98, %97
  store i64 %99, i64* %27, align 8
  %100 = load i64, i64* %16, align 8
  %101 = and i64 %100, 1
  %102 = xor i64 %101, 1
  %103 = load i64, i64* %19, align 8
  %104 = sub nsw i64 %103, %102
  store i64 %104, i64* %19, align 8
  %105 = load i64, i64* %20, align 8
  store i64 %105, i64* %21, align 8
  br label %209

106:                                              ; preds = %78
  %107 = load i64, i64* %30, align 8
  %108 = icmp sgt i64 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64, i64* %20, align 8
  store i64 %110, i64* %22, align 8
  br label %208

111:                                              ; preds = %106
  %112 = load i64, i64* %19, align 8
  store i64 %112, i64* %17, align 8
  %113 = load i64, i64* %27, align 8
  store i64 %113, i64* %28, align 8
  %114 = load i64, i64* %16, align 8
  %115 = load i64, i64* %19, align 8
  %116 = sub nsw i64 %114, %115
  %117 = sub nsw i64 %116, 1
  store i64 %117, i64* %18, align 8
  %118 = load i64, i64* %27, align 8
  %119 = load i64, i64* %19, align 8
  %120 = add nsw i64 %118, %119
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %29, align 8
  %122 = load i64, i64* %21, align 8
  store i64 %122, i64* %23, align 8
  %123 = load i64, i64* %20, align 8
  store i64 %123, i64* %24, align 8
  %124 = load i64, i64* %17, align 8
  %125 = ashr i64 %124, 1
  store i64 %125, i64* %19, align 8
  br label %126

126:                                              ; preds = %160, %111
  %127 = load i64, i64* %17, align 8
  %128 = icmp slt i64 0, %127
  br i1 %128, label %129, label %164

129:                                              ; preds = %126
  %130 = load i64, i64* %23, align 8
  %131 = load i64, i64* %24, align 8
  %132 = call i64 @MIN(i64 %130, i64 %131)
  store i64 %132, i64* %21, align 8
  %133 = load i32*, i32** %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i64*, i64** %13, align 8
  %138 = load i64, i64* %28, align 8
  %139 = load i64, i64* %19, align 8
  %140 = add nsw i64 %138, %139
  %141 = getelementptr inbounds i64, i64* %137, i64 %140
  %142 = load i64, i64* %141, align 8
  %143 = call i64 @_compare(i32* %133, i64 %134, i32* %135, i64 %136, i64 %142, i64* %21)
  store i64 %143, i64* %30, align 8
  %144 = load i64, i64* %30, align 8
  %145 = icmp slt i64 %144, 0
  br i1 %145, label %146, label %157

146:                                              ; preds = %129
  %147 = load i64, i64* %19, align 8
  %148 = add nsw i64 %147, 1
  %149 = load i64, i64* %28, align 8
  %150 = add nsw i64 %149, %148
  store i64 %150, i64* %28, align 8
  %151 = load i64, i64* %17, align 8
  %152 = and i64 %151, 1
  %153 = xor i64 %152, 1
  %154 = load i64, i64* %19, align 8
  %155 = sub nsw i64 %154, %153
  store i64 %155, i64* %19, align 8
  %156 = load i64, i64* %21, align 8
  store i64 %156, i64* %23, align 8
  br label %159

157:                                              ; preds = %129
  %158 = load i64, i64* %21, align 8
  store i64 %158, i64* %24, align 8
  br label %159

159:                                              ; preds = %157, %146
  br label %160

160:                                              ; preds = %159
  %161 = load i64, i64* %19, align 8
  store i64 %161, i64* %17, align 8
  %162 = load i64, i64* %19, align 8
  %163 = ashr i64 %162, 1
  store i64 %163, i64* %19, align 8
  br label %126

164:                                              ; preds = %126
  %165 = load i64, i64* %20, align 8
  store i64 %165, i64* %25, align 8
  %166 = load i64, i64* %22, align 8
  store i64 %166, i64* %26, align 8
  %167 = load i64, i64* %18, align 8
  %168 = ashr i64 %167, 1
  store i64 %168, i64* %19, align 8
  br label %169

169:                                              ; preds = %203, %164
  %170 = load i64, i64* %18, align 8
  %171 = icmp slt i64 0, %170
  br i1 %171, label %172, label %207

172:                                              ; preds = %169
  %173 = load i64, i64* %25, align 8
  %174 = load i64, i64* %26, align 8
  %175 = call i64 @MIN(i64 %173, i64 %174)
  store i64 %175, i64* %22, align 8
  %176 = load i32*, i32** %9, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = load i64, i64* %12, align 8
  %180 = load i64*, i64** %13, align 8
  %181 = load i64, i64* %29, align 8
  %182 = load i64, i64* %19, align 8
  %183 = add nsw i64 %181, %182
  %184 = getelementptr inbounds i64, i64* %180, i64 %183
  %185 = load i64, i64* %184, align 8
  %186 = call i64 @_compare(i32* %176, i64 %177, i32* %178, i64 %179, i64 %185, i64* %22)
  store i64 %186, i64* %30, align 8
  %187 = load i64, i64* %30, align 8
  %188 = icmp sle i64 %187, 0
  br i1 %188, label %189, label %200

189:                                              ; preds = %172
  %190 = load i64, i64* %19, align 8
  %191 = add nsw i64 %190, 1
  %192 = load i64, i64* %29, align 8
  %193 = add nsw i64 %192, %191
  store i64 %193, i64* %29, align 8
  %194 = load i64, i64* %18, align 8
  %195 = and i64 %194, 1
  %196 = xor i64 %195, 1
  %197 = load i64, i64* %19, align 8
  %198 = sub nsw i64 %197, %196
  store i64 %198, i64* %19, align 8
  %199 = load i64, i64* %22, align 8
  store i64 %199, i64* %25, align 8
  br label %202

200:                                              ; preds = %172
  %201 = load i64, i64* %22, align 8
  store i64 %201, i64* %26, align 8
  br label %202

202:                                              ; preds = %200, %189
  br label %203

203:                                              ; preds = %202
  %204 = load i64, i64* %19, align 8
  store i64 %204, i64* %18, align 8
  %205 = load i64, i64* %19, align 8
  %206 = ashr i64 %205, 1
  store i64 %206, i64* %19, align 8
  br label %169

207:                                              ; preds = %169
  br label %214

208:                                              ; preds = %109
  br label %209

209:                                              ; preds = %208, %95
  br label %210

210:                                              ; preds = %209
  %211 = load i64, i64* %19, align 8
  store i64 %211, i64* %16, align 8
  %212 = load i64, i64* %19, align 8
  %213 = ashr i64 %212, 1
  store i64 %213, i64* %19, align 8
  br label %75

214:                                              ; preds = %207, %75
  %215 = load i64*, i64** %15, align 8
  %216 = icmp ne i64* %215, null
  br i1 %216, label %217, label %229

217:                                              ; preds = %214
  %218 = load i64, i64* %29, align 8
  %219 = load i64, i64* %28, align 8
  %220 = sub nsw i64 %218, %219
  %221 = icmp slt i64 0, %220
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = load i64, i64* %28, align 8
  br label %226

224:                                              ; preds = %217
  %225 = load i64, i64* %27, align 8
  br label %226

226:                                              ; preds = %224, %222
  %227 = phi i64 [ %223, %222 ], [ %225, %224 ]
  %228 = load i64*, i64** %15, align 8
  store i64 %227, i64* %228, align 8
  br label %229

229:                                              ; preds = %226, %214
  %230 = load i64, i64* %29, align 8
  %231 = load i64, i64* %28, align 8
  %232 = sub nsw i64 %230, %231
  store i64 %232, i64* %8, align 8
  br label %233

233:                                              ; preds = %229, %69, %60, %53
  %234 = load i64, i64* %8, align 8
  ret i64 %234
}

declare dso_local i64 @MIN(i64, i64) #1

declare dso_local i64 @_compare(i32*, i64, i32*, i64, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
