; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_mfp_mul.c_mfp_mul.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ntp/libparse/extr_mfp_mul.c_mfp_mul.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LOW_MASK = common dso_local global i32 0, align 4
@HIGH_MASK = common dso_local global i32 0, align 4
@FRACTION_PREC = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mfp_mul(i32* %0, i32* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [4 x i32], align 16
  %17 = alloca [4 x i32], align 16
  %18 = alloca [5 x i32], align 16
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %20, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %6
  store i32 1, i32* %20, align 4
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 @M_NEG(i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %6
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %32
  %36 = load i32, i32* %20, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  store i32 %39, i32* %20, align 4
  %40 = load i32, i32* %11, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @M_NEG(i32 %40, i32 %41)
  br label %43

43:                                               ; preds = %35, %32
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @LOW_MASK, align 4
  %46 = and i32 %44, %45
  %47 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 0
  store i32 %46, i32* %47, align 16
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @HIGH_MASK, align 4
  %50 = and i32 %48, %49
  %51 = load i32, i32* @FRACTION_PREC, align 4
  %52 = sdiv i32 %51, 2
  %53 = ashr i32 %50, %52
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @LOW_MASK, align 4
  %57 = and i32 %55, %56
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 2
  store i32 %57, i32* %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @HIGH_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load i32, i32* @FRACTION_PREC, align 4
  %63 = sdiv i32 %62, 2
  %64 = ashr i32 %61, %63
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 3
  store i32 %64, i32* %65, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @LOW_MASK, align 4
  %68 = and i32 %66, %67
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 0
  store i32 %68, i32* %69, align 16
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @HIGH_MASK, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @FRACTION_PREC, align 4
  %74 = sdiv i32 %73, 2
  %75 = ashr i32 %72, %74
  %76 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 1
  store i32 %75, i32* %76, align 4
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* @LOW_MASK, align 4
  %79 = and i32 %77, %78
  %80 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 2
  store i32 %79, i32* %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* @HIGH_MASK, align 4
  %83 = and i32 %81, %82
  %84 = load i32, i32* @FRACTION_PREC, align 4
  %85 = sdiv i32 %84, 2
  %86 = ashr i32 %83, %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 3
  store i32 %86, i32* %87, align 4
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 4
  store i32 0, i32* %88, align 16
  %89 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 3
  store i32 0, i32* %89, align 4
  %90 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 2
  store i32 0, i32* %90, align 8
  %91 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 1
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 0
  store i32 0, i32* %92, align 16
  store i32 0, i32* %13, align 4
  br label %93

93:                                               ; preds = %211, %43
  %94 = load i32, i32* %13, align 4
  %95 = icmp slt i32 %94, 4
  br i1 %95, label %96, label %214

96:                                               ; preds = %93
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %207, %96
  %98 = load i32, i32* %14, align 4
  %99 = icmp slt i32 %98, 4
  br i1 %99, label %100, label %210

100:                                              ; preds = %97
  %101 = load i32, i32* %13, align 4
  %102 = load i32, i32* %14, align 4
  %103 = add nsw i32 %101, %102
  %104 = sdiv i32 %103, 2
  store i32 %104, i32* %23, align 4
  %105 = load i32, i32* %23, align 4
  %106 = add nsw i32 1, %105
  store i32 %106, i32* %24, align 4
  %107 = load i32, i32* %24, align 4
  %108 = add nsw i32 1, %107
  store i32 %108, i32* %25, align 4
  %109 = load i32, i32* %13, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [4 x i32], [4 x i32]* %16, i64 0, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %14, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %17, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = mul nsw i32 %112, %116
  store i32 %117, i32* %21, align 4
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %118, %119
  %121 = and i32 %120, 1
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %135

123:                                              ; preds = %100
  %124 = load i32, i32* %21, align 4
  %125 = load i32, i32* @FRACTION_PREC, align 4
  %126 = sdiv i32 %125, 2
  %127 = ashr i32 %124, %126
  store i32 %127, i32* %22, align 4
  %128 = load i32, i32* @FRACTION_PREC, align 4
  %129 = sdiv i32 %128, 2
  %130 = load i32, i32* %21, align 4
  %131 = shl i32 %130, %129
  store i32 %131, i32* %21, align 4
  %132 = load i32, i32* @FRACTION_PREC, align 4
  %133 = sdiv i32 %132, 2
  %134 = shl i32 1, %133
  store i32 %134, i32* %19, align 4
  br label %136

135:                                              ; preds = %100
  store i32 0, i32* %22, align 4
  store i32 1, i32* %19, align 4
  br label %136

136:                                              ; preds = %135, %123
  %137 = load i32, i32* %23, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = ashr i32 %140, 1
  %142 = load i32, i32* %21, align 4
  %143 = ashr i32 %142, 1
  %144 = add nsw i32 %141, %143
  %145 = load i32, i32* %23, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %21, align 4
  %150 = and i32 %148, %149
  %151 = load i32, i32* %19, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  %154 = zext i1 %153 to i32
  %155 = add nsw i32 %144, %154
  %156 = load i32, i32* @FRACTION_PREC, align 4
  %157 = sub nsw i32 %156, 1
  %158 = shl i32 1, %157
  %159 = and i32 %155, %158
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %164

161:                                              ; preds = %136
  %162 = load i32, i32* %22, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %22, align 4
  br label %164

164:                                              ; preds = %161, %136
  %165 = load i32, i32* %21, align 4
  %166 = load i32, i32* %23, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %169, %165
  store i32 %170, i32* %168, align 4
  %171 = load i32, i32* %24, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %174, 1
  %176 = load i32, i32* %22, align 4
  %177 = ashr i32 %176, 1
  %178 = add nsw i32 %175, %177
  %179 = load i32, i32* %24, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* %22, align 4
  %184 = and i32 %182, %183
  %185 = and i32 %184, 1
  %186 = icmp ne i32 %185, 0
  %187 = zext i1 %186 to i32
  %188 = add nsw i32 %178, %187
  %189 = load i32, i32* @FRACTION_PREC, align 4
  %190 = sub nsw i32 %189, 1
  %191 = shl i32 1, %190
  %192 = and i32 %188, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %200

194:                                              ; preds = %164
  %195 = load i32, i32* %25, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %196
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %197, align 4
  br label %200

200:                                              ; preds = %194, %164
  %201 = load i32, i32* %22, align 4
  %202 = load i32, i32* %24, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 %203
  %205 = load i32, i32* %204, align 4
  %206 = add nsw i32 %205, %201
  store i32 %206, i32* %204, align 4
  br label %207

207:                                              ; preds = %200
  %208 = load i32, i32* %14, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %14, align 4
  br label %97

210:                                              ; preds = %97
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %13, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %13, align 4
  br label %93

214:                                              ; preds = %93
  %215 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 3
  %216 = load i32, i32* %215, align 4
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %214
  %219 = load i32, i32* @FRACTION_PREC, align 4
  %220 = sub nsw i32 %219, 1
  %221 = shl i32 1, %220
  %222 = sub i32 %221, 1
  store i32 %222, i32* %13, align 4
  store i32 -1, i32* %15, align 4
  br label %228

223:                                              ; preds = %214
  %224 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 2
  %225 = load i32, i32* %224, align 8
  store i32 %225, i32* %13, align 4
  %226 = getelementptr inbounds [5 x i32], [5 x i32]* %18, i64 0, i64 1
  %227 = load i32, i32* %226, align 4
  store i32 %227, i32* %15, align 4
  br label %228

228:                                              ; preds = %223, %218
  %229 = load i32, i32* %20, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228
  %232 = load i32, i32* %13, align 4
  %233 = load i32, i32* %15, align 4
  %234 = call i32 @M_NEG(i32 %232, i32 %233)
  br label %235

235:                                              ; preds = %231, %228
  %236 = load i32, i32* %13, align 4
  %237 = load i32*, i32** %7, align 8
  store i32 %236, i32* %237, align 4
  %238 = load i32, i32* %15, align 4
  %239 = load i32*, i32** %8, align 8
  store i32 %238, i32* %239, align 4
  ret void
}

declare dso_local i32 @M_NEG(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
