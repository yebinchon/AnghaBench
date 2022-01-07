; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/net/extr_base64.c___b64_ntop.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/net/extr_base64.c___b64_ntop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Base64 = common dso_local global i8* null, align 8
@Pad64 = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b64_ntop(i32* %0, i64 %1, i8* %2, i64 %3) #0 {
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
  br label %14

14:                                               ; preds = %83, %4
  %15 = load i64, i64* %7, align 8
  %16 = icmp ult i64 2, %15
  br i1 %16, label %17, label %124

17:                                               ; preds = %14
  %18 = load i32*, i32** %6, align 8
  %19 = getelementptr inbounds i32, i32* %18, i32 1
  store i32* %19, i32** %6, align 8
  %20 = load i32, i32* %18, align 4
  %21 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  %24 = load i32, i32* %22, align 4
  %25 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %6, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %6, align 8
  %28 = load i32, i32* %26, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 %28, i32* %29, align 4
  %30 = load i64, i64* %7, align 8
  %31 = sub i64 %30, 3
  store i64 %31, i64* %7, align 8
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 2
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %34, i32* %35, align 16
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 3
  %39 = shl i32 %38, 4
  %40 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 4
  %43 = add nsw i32 %39, %42
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %43, i32* %44, align 4
  %45 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 15
  %48 = shl i32 %47, 2
  %49 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = ashr i32 %50, 6
  %52 = add nsw i32 %48, %51
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %52, i32* %53, align 8
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, 63
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  store i32 %56, i32* %57, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %59 = load i32, i32* %58, align 16
  %60 = icmp slt i32 %59, 64
  %61 = zext i1 %60 to i32
  %62 = call i32 @Assert(i32 %61)
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp slt i32 %64, 64
  %66 = zext i1 %65 to i32
  %67 = call i32 @Assert(i32 %66)
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp slt i32 %69, 64
  %71 = zext i1 %70 to i32
  %72 = call i32 @Assert(i32 %71)
  %73 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %74 = load i32, i32* %73, align 4
  %75 = icmp slt i32 %74, 64
  %76 = zext i1 %75 to i32
  %77 = call i32 @Assert(i32 %76)
  %78 = load i64, i64* %10, align 8
  %79 = add i64 %78, 4
  %80 = load i64, i64* %9, align 8
  %81 = icmp ugt i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %244

83:                                               ; preds = %17
  %84 = load i8*, i8** @Base64, align 8
  %85 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %84, i64 %87
  %89 = load i8, i8* %88, align 1
  %90 = load i8*, i8** %8, align 8
  %91 = load i64, i64* %10, align 8
  %92 = add i64 %91, 1
  store i64 %92, i64* %10, align 8
  %93 = getelementptr inbounds i8, i8* %90, i64 %91
  store i8 %89, i8* %93, align 1
  %94 = load i8*, i8** @Base64, align 8
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %96 = load i32, i32* %95, align 4
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
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %106 = load i32, i32* %105, align 8
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
  %115 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 3
  %116 = load i32, i32* %115, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i8, i8* %114, i64 %117
  %119 = load i8, i8* %118, align 1
  %120 = load i8*, i8** %8, align 8
  %121 = load i64, i64* %10, align 8
  %122 = add i64 %121, 1
  store i64 %122, i64* %10, align 8
  %123 = getelementptr inbounds i8, i8* %120, i64 %121
  store i8 %119, i8* %123, align 1
  br label %14

124:                                              ; preds = %14
  %125 = load i64, i64* %7, align 8
  %126 = icmp ne i64 0, %125
  br i1 %126, label %127, label %233

127:                                              ; preds = %124
  %128 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  store i32 0, i32* %128, align 4
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  store i32 0, i32* %129, align 4
  %130 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  store i32 0, i32* %130, align 4
  store i64 0, i64* %13, align 8
  br label %131

131:                                              ; preds = %141, %127
  %132 = load i64, i64* %13, align 8
  %133 = load i64, i64* %7, align 8
  %134 = icmp ult i64 %132, %133
  br i1 %134, label %135, label %144

135:                                              ; preds = %131
  %136 = load i32*, i32** %6, align 8
  %137 = getelementptr inbounds i32, i32* %136, i32 1
  store i32* %137, i32** %6, align 8
  %138 = load i32, i32* %136, align 4
  %139 = load i64, i64* %13, align 8
  %140 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 %139
  store i32 %138, i32* %140, align 4
  br label %141

141:                                              ; preds = %135
  %142 = load i64, i64* %13, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %13, align 8
  br label %131

144:                                              ; preds = %131
  %145 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %146 = load i32, i32* %145, align 4
  %147 = ashr i32 %146, 2
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %147, i32* %148, align 16
  %149 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 0
  %150 = load i32, i32* %149, align 4
  %151 = and i32 %150, 3
  %152 = shl i32 %151, 4
  %153 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %154 = load i32, i32* %153, align 4
  %155 = ashr i32 %154, 4
  %156 = add nsw i32 %152, %155
  %157 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  store i32 %156, i32* %157, align 4
  %158 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 1
  %159 = load i32, i32* %158, align 4
  %160 = and i32 %159, 15
  %161 = shl i32 %160, 2
  %162 = getelementptr inbounds [3 x i32], [3 x i32]* %11, i64 0, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = ashr i32 %163, 6
  %165 = add nsw i32 %161, %164
  %166 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  store i32 %165, i32* %166, align 8
  %167 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %168 = load i32, i32* %167, align 16
  %169 = icmp slt i32 %168, 64
  %170 = zext i1 %169 to i32
  %171 = call i32 @Assert(i32 %170)
  %172 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %173 = load i32, i32* %172, align 4
  %174 = icmp slt i32 %173, 64
  %175 = zext i1 %174 to i32
  %176 = call i32 @Assert(i32 %175)
  %177 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %178, 64
  %180 = zext i1 %179 to i32
  %181 = call i32 @Assert(i32 %180)
  %182 = load i64, i64* %10, align 8
  %183 = add i64 %182, 4
  %184 = load i64, i64* %9, align 8
  %185 = icmp ugt i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %144
  store i32 -1, i32* %5, align 4
  br label %244

187:                                              ; preds = %144
  %188 = load i8*, i8** @Base64, align 8
  %189 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %190 = load i32, i32* %189, align 16
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i8, i8* %188, i64 %191
  %193 = load i8, i8* %192, align 1
  %194 = load i8*, i8** %8, align 8
  %195 = load i64, i64* %10, align 8
  %196 = add i64 %195, 1
  store i64 %196, i64* %10, align 8
  %197 = getelementptr inbounds i8, i8* %194, i64 %195
  store i8 %193, i8* %197, align 1
  %198 = load i8*, i8** @Base64, align 8
  %199 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 1
  %200 = load i32, i32* %199, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i8, i8* %198, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = load i8*, i8** %8, align 8
  %205 = load i64, i64* %10, align 8
  %206 = add i64 %205, 1
  store i64 %206, i64* %10, align 8
  %207 = getelementptr inbounds i8, i8* %204, i64 %205
  store i8 %203, i8* %207, align 1
  %208 = load i64, i64* %7, align 8
  %209 = icmp eq i64 %208, 1
  br i1 %209, label %210, label %216

210:                                              ; preds = %187
  %211 = load i8, i8* @Pad64, align 1
  %212 = load i8*, i8** %8, align 8
  %213 = load i64, i64* %10, align 8
  %214 = add i64 %213, 1
  store i64 %214, i64* %10, align 8
  %215 = getelementptr inbounds i8, i8* %212, i64 %213
  store i8 %211, i8* %215, align 1
  br label %227

216:                                              ; preds = %187
  %217 = load i8*, i8** @Base64, align 8
  %218 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 2
  %219 = load i32, i32* %218, align 8
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i8, i8* %217, i64 %220
  %222 = load i8, i8* %221, align 1
  %223 = load i8*, i8** %8, align 8
  %224 = load i64, i64* %10, align 8
  %225 = add i64 %224, 1
  store i64 %225, i64* %10, align 8
  %226 = getelementptr inbounds i8, i8* %223, i64 %224
  store i8 %222, i8* %226, align 1
  br label %227

227:                                              ; preds = %216, %210
  %228 = load i8, i8* @Pad64, align 1
  %229 = load i8*, i8** %8, align 8
  %230 = load i64, i64* %10, align 8
  %231 = add i64 %230, 1
  store i64 %231, i64* %10, align 8
  %232 = getelementptr inbounds i8, i8* %229, i64 %230
  store i8 %228, i8* %232, align 1
  br label %233

233:                                              ; preds = %227, %124
  %234 = load i64, i64* %10, align 8
  %235 = load i64, i64* %9, align 8
  %236 = icmp uge i64 %234, %235
  br i1 %236, label %237, label %238

237:                                              ; preds = %233
  store i32 -1, i32* %5, align 4
  br label %244

238:                                              ; preds = %233
  %239 = load i8*, i8** %8, align 8
  %240 = load i64, i64* %10, align 8
  %241 = getelementptr inbounds i8, i8* %239, i64 %240
  store i8 0, i8* %241, align 1
  %242 = load i64, i64* %10, align 8
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %5, align 4
  br label %244

244:                                              ; preds = %238, %237, %186, %82
  %245 = load i32, i32* %5, align 4
  ret i32 %245
}

declare dso_local i32 @Assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
