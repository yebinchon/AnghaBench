; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_b64_ntop.c_ldns_b64_ntop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/ldns/compat/extr_b64_ntop.c_ldns_b64_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Base64 = common dso_local global i8* null, align 8
@Pad64 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ldns_b64_ntop(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca [3 x i32], align 4
  %12 = alloca [4 x i32], align 16
  %13 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i64, i64* %9, align 8
  %18 = icmp ugt i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i8*, i8** %8, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 0
  store i8 0, i8* %21, align 1
  store i32 0, i32* %5, align 4
  br label %254

22:                                               ; preds = %16
  store i32 -1, i32* %5, align 4
  br label %254

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %93, %23
  %25 = load i64, i64* %7, align 8
  %26 = icmp ult i64 2, %25
  br i1 %26, label %27, label %134

27:                                               ; preds = %24
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = load i32, i32* %28, align 4
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %6, align 8
  %34 = load i32, i32* %32, align 4
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  %38 = load i32, i32* %36, align 4
  %39 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %38, i32* %39, align 4
  %40 = load i64, i64* %7, align 8
  %41 = sub i64 %40, 3
  store i64 %41, i64* %7, align 8
  %42 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 2
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %44, i32* %45, align 16
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, 3
  %49 = shl i32 %48, 4
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = ashr i32 %51, 4
  %53 = add nsw i32 %49, %52
  %54 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %53, i32* %54, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 15
  %58 = shl i32 %57, 2
  %59 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 6
  %62 = add nsw i32 %58, %61
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %62, i32* %63, align 8
  %64 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 63
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %66, i32* %67, align 4
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %69 = load i32, i32* %68, align 16
  %70 = icmp slt i32 %69, 64
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 64
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %79, 64
  %81 = zext i1 %80 to i32
  %82 = call i32 @assert(i32 %81)
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %84, 64
  %86 = zext i1 %85 to i32
  %87 = call i32 @assert(i32 %86)
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, 4
  %90 = load i64, i64* %9, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %27
  store i32 -1, i32* %5, align 4
  br label %254

93:                                               ; preds = %27
  %94 = load i8*, i8** @Base64, align 8
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %96 = load i32, i32* %95, align 16
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i8, i8* %94, i64 %97
  %99 = load i8, i8* %98, align 1
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %10, align 8
  %103 = getelementptr inbounds i8, i8* %100, i64 %101
  store i8 %99, i8* %103, align 1
  %104 = load i8*, i8** @Base64, align 8
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %106 = load i32, i32* %105, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8, i8* %104, i64 %107
  %109 = load i8, i8* %108, align 1
  %110 = load i8*, i8** %8, align 8
  %111 = load i64, i64* %10, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %10, align 8
  %113 = getelementptr inbounds i8, i8* %110, i64 %111
  store i8 %109, i8* %113, align 1
  %114 = load i8*, i8** @Base64, align 8
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %116 = load i32, i32* %115, align 8
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %10, align 8
  %123 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 %119, i8* %123, align 1
  %124 = load i8*, i8** @Base64, align 8
  %125 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %126 = load i32, i32* %125, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i8, i8* %124, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = load i8*, i8** %8, align 8
  %131 = load i64, i64* %10, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %10, align 8
  %133 = getelementptr inbounds i8, i8* %130, i64 %131
  store i8 %129, i8* %133, align 1
  br label %24

134:                                              ; preds = %24
  %135 = load i64, i64* %7, align 8
  %136 = icmp ne i64 0, %135
  br i1 %136, label %137, label %243

137:                                              ; preds = %134
  %138 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %139, align 4
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %140, align 4
  store i64 0, i64* %13, align 8
  br label %141

141:                                              ; preds = %151, %137
  %142 = load i64, i64* %13, align 8
  %143 = load i64, i64* %7, align 8
  %144 = icmp ult i64 %142, %143
  br i1 %144, label %145, label %154

145:                                              ; preds = %141
  %146 = load i32*, i32** %6, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %6, align 8
  %148 = load i32, i32* %146, align 4
  %149 = load i64, i64* %13, align 8
  %150 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %149
  store i32 %148, i32* %150, align 4
  br label %151

151:                                              ; preds = %145
  %152 = load i64, i64* %13, align 8
  %153 = add i64 %152, 1
  store i64 %153, i64* %13, align 8
  br label %141

154:                                              ; preds = %141
  %155 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %156 = load i32, i32* %155, align 4
  %157 = ashr i32 %156, 2
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %157, i32* %158, align 16
  %159 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %160 = load i32, i32* %159, align 4
  %161 = and i32 %160, 3
  %162 = shl i32 %161, 4
  %163 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = ashr i32 %164, 4
  %166 = add nsw i32 %162, %165
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 15
  %171 = shl i32 %170, 2
  %172 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = ashr i32 %173, 6
  %175 = add nsw i32 %171, %174
  %176 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %175, i32* %176, align 8
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %178 = load i32, i32* %177, align 16
  %179 = icmp slt i32 %178, 64
  %180 = zext i1 %179 to i32
  %181 = call i32 @assert(i32 %180)
  %182 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %183 = load i32, i32* %182, align 4
  %184 = icmp slt i32 %183, 64
  %185 = zext i1 %184 to i32
  %186 = call i32 @assert(i32 %185)
  %187 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp slt i32 %188, 64
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i64, i64* %10, align 8
  %193 = add i64 %192, 4
  %194 = load i64, i64* %9, align 8
  %195 = icmp ugt i64 %193, %194
  br i1 %195, label %196, label %197

196:                                              ; preds = %154
  store i32 -2, i32* %5, align 4
  br label %254

197:                                              ; preds = %154
  %198 = load i8*, i8** @Base64, align 8
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %200 = load i32, i32* %199, align 16
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = load i8*, i8** %8, align 8
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %10, align 8
  %207 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 %203, i8* %207, align 1
  %208 = load i8*, i8** @Base64, align 8
  %209 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i8, i8* %208, i64 %211
  %213 = load i8, i8* %212, align 1
  %214 = load i8*, i8** %8, align 8
  %215 = load i64, i64* %10, align 8
  %216 = add i64 %215, 1
  store i64 %216, i64* %10, align 8
  %217 = getelementptr inbounds i8, i8* %214, i64 %215
  store i8 %213, i8* %217, align 1
  %218 = load i64, i64* %7, align 8
  %219 = icmp eq i64 %218, 1
  br i1 %219, label %220, label %226

220:                                              ; preds = %197
  %221 = load i8, i8* @Pad64, align 1
  %222 = load i8*, i8** %8, align 8
  %223 = load i64, i64* %10, align 8
  %224 = add i64 %223, 1
  store i64 %224, i64* %10, align 8
  %225 = getelementptr inbounds i8, i8* %222, i64 %223
  store i8 %221, i8* %225, align 1
  br label %237

226:                                              ; preds = %197
  %227 = load i8*, i8** @Base64, align 8
  %228 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %229 = load i32, i32* %228, align 8
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i8, i8* %227, i64 %230
  %232 = load i8, i8* %231, align 1
  %233 = load i8*, i8** %8, align 8
  %234 = load i64, i64* %10, align 8
  %235 = add i64 %234, 1
  store i64 %235, i64* %10, align 8
  %236 = getelementptr inbounds i8, i8* %233, i64 %234
  store i8 %232, i8* %236, align 1
  br label %237

237:                                              ; preds = %226, %220
  %238 = load i8, i8* @Pad64, align 1
  %239 = load i8*, i8** %8, align 8
  %240 = load i64, i64* %10, align 8
  %241 = add i64 %240, 1
  store i64 %241, i64* %10, align 8
  %242 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8 %238, i8* %242, align 1
  br label %243

243:                                              ; preds = %237, %134
  %244 = load i64, i64* %10, align 8
  %245 = load i64, i64* %9, align 8
  %246 = icmp uge i64 %244, %245
  br i1 %246, label %247, label %248

247:                                              ; preds = %243
  store i32 -3, i32* %5, align 4
  br label %254

248:                                              ; preds = %243
  %249 = load i8*, i8** %8, align 8
  %250 = load i64, i64* %10, align 8
  %251 = getelementptr inbounds i8, i8* %249, i64 %250
  store i8 0, i8* %251, align 1
  %252 = load i64, i64* %10, align 8
  %253 = trunc i64 %252 to i32
  store i32 %253, i32* %5, align 4
  br label %254

254:                                              ; preds = %248, %247, %196, %92, %22, %19
  %255 = load i32, i32* %5, align 4
  ret i32 %255
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
