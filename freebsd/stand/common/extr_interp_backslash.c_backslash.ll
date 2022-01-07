; ModuleID = '/home/carl/AnghaBench/freebsd/stand/common/extr_interp_backslash.c_backslash.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/common/extr_interp_backslash.c_backslash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @backslash(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i8* @strdup(i8* %8)
  store i8* %9, i8** %4, align 8
  %10 = icmp eq i8* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %265

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %249, %12
  %14 = load i8*, i8** %3, align 8
  %15 = load i8, i8* %14, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %17, label %250

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %231

20:                                               ; preds = %17
  store i32 0, i32* %5, align 4
  %21 = load i8*, i8** %3, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  switch i32 %23, label %221 [
    i32 92, label %24
    i32 39, label %32
    i32 34, label %32
    i32 36, label %32
    i32 98, label %46
    i32 102, label %54
    i32 114, label %62
    i32 110, label %70
    i32 115, label %78
    i32 116, label %86
    i32 118, label %94
    i32 122, label %102
    i32 48, label %105
    i32 49, label %105
    i32 50, label %105
    i32 51, label %105
    i32 52, label %105
    i32 53, label %105
    i32 54, label %105
    i32 55, label %105
    i32 56, label %105
    i32 57, label %105
  ]

24:                                               ; preds = %20
  %25 = load i8*, i8** %4, align 8
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, i8* %25, i64 %28
  store i8 92, i8* %29, align 1
  %30 = load i8*, i8** %3, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %3, align 8
  br label %230

32:                                               ; preds = %20, %20, %20
  %33 = load i8*, i8** %4, align 8
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = sext i32 %34 to i64
  %37 = getelementptr inbounds i8, i8* %33, i64 %36
  store i8 92, i8* %37, align 1
  %38 = load i8*, i8** %3, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %3, align 8
  %40 = load i8, i8* %38, align 1
  %41 = load i8*, i8** %4, align 8
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %6, align 4
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds i8, i8* %41, i64 %44
  store i8 %40, i8* %45, align 1
  br label %230

46:                                               ; preds = %20
  %47 = load i8*, i8** %4, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %6, align 4
  %50 = sext i32 %48 to i64
  %51 = getelementptr inbounds i8, i8* %47, i64 %50
  store i8 8, i8* %51, align 1
  %52 = load i8*, i8** %3, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %3, align 8
  br label %230

54:                                               ; preds = %20
  %55 = load i8*, i8** %4, align 8
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  %58 = sext i32 %56 to i64
  %59 = getelementptr inbounds i8, i8* %55, i64 %58
  store i8 12, i8* %59, align 1
  %60 = load i8*, i8** %3, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 1
  store i8* %61, i8** %3, align 8
  br label %230

62:                                               ; preds = %20
  %63 = load i8*, i8** %4, align 8
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds i8, i8* %63, i64 %66
  store i8 13, i8* %67, align 1
  %68 = load i8*, i8** %3, align 8
  %69 = getelementptr inbounds i8, i8* %68, i32 1
  store i8* %69, i8** %3, align 8
  br label %230

70:                                               ; preds = %20
  %71 = load i8*, i8** %4, align 8
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %6, align 4
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i8, i8* %71, i64 %74
  store i8 10, i8* %75, align 1
  %76 = load i8*, i8** %3, align 8
  %77 = getelementptr inbounds i8, i8* %76, i32 1
  store i8* %77, i8** %3, align 8
  br label %230

78:                                               ; preds = %20
  %79 = load i8*, i8** %4, align 8
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i8, i8* %79, i64 %82
  store i8 32, i8* %83, align 1
  %84 = load i8*, i8** %3, align 8
  %85 = getelementptr inbounds i8, i8* %84, i32 1
  store i8* %85, i8** %3, align 8
  br label %230

86:                                               ; preds = %20
  %87 = load i8*, i8** %4, align 8
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %6, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %87, i64 %90
  store i8 9, i8* %91, align 1
  %92 = load i8*, i8** %3, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %3, align 8
  br label %230

94:                                               ; preds = %20
  %95 = load i8*, i8** %4, align 8
  %96 = load i32, i32* %6, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %6, align 4
  %98 = sext i32 %96 to i64
  %99 = getelementptr inbounds i8, i8* %95, i64 %98
  store i8 11, i8* %99, align 1
  %100 = load i8*, i8** %3, align 8
  %101 = getelementptr inbounds i8, i8* %100, i32 1
  store i8* %101, i8** %3, align 8
  br label %230

102:                                              ; preds = %20
  %103 = load i8*, i8** %3, align 8
  %104 = getelementptr inbounds i8, i8* %103, i32 1
  store i8* %104, i8** %3, align 8
  br label %230

105:                                              ; preds = %20, %20, %20, %20, %20, %20, %20, %20, %20, %20
  %106 = load i8*, i8** %3, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp sge i32 %108, 48
  br i1 %109, label %110, label %164

110:                                              ; preds = %105
  %111 = load i8*, i8** %3, align 8
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = icmp sle i32 %113, 51
  br i1 %114, label %115, label %164

115:                                              ; preds = %110
  %116 = load i8*, i8** %3, align 8
  %117 = getelementptr inbounds i8, i8* %116, i64 1
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp sge i32 %119, 48
  br i1 %120, label %121, label %164

121:                                              ; preds = %115
  %122 = load i8*, i8** %3, align 8
  %123 = getelementptr inbounds i8, i8* %122, i64 1
  %124 = load i8, i8* %123, align 1
  %125 = sext i8 %124 to i32
  %126 = icmp sle i32 %125, 55
  br i1 %126, label %127, label %164

127:                                              ; preds = %121
  %128 = load i8*, i8** %3, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp sge i32 %131, 48
  br i1 %132, label %133, label %164

133:                                              ; preds = %127
  %134 = load i8*, i8** %3, align 8
  %135 = getelementptr inbounds i8, i8* %134, i64 2
  %136 = load i8, i8* %135, align 1
  %137 = sext i8 %136 to i32
  %138 = icmp sle i32 %137, 55
  br i1 %138, label %139, label %164

139:                                              ; preds = %133
  %140 = load i8*, i8** %3, align 8
  %141 = load i8, i8* %140, align 1
  %142 = call i32 @DIGIT(i8 signext %141)
  %143 = shl i32 %142, 6
  %144 = load i8*, i8** %3, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 1
  %146 = load i8, i8* %145, align 1
  %147 = call i32 @DIGIT(i8 signext %146)
  %148 = shl i32 %147, 3
  %149 = add nsw i32 %143, %148
  %150 = load i8*, i8** %3, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 2
  %152 = load i8, i8* %151, align 1
  %153 = call i32 @DIGIT(i8 signext %152)
  %154 = add nsw i32 %149, %153
  %155 = trunc i32 %154 to i8
  store i8 %155, i8* %7, align 1
  %156 = load i8, i8* %7, align 1
  %157 = load i8*, i8** %4, align 8
  %158 = load i32, i32* %6, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %6, align 4
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i8, i8* %157, i64 %160
  store i8 %156, i8* %161, align 1
  %162 = load i8*, i8** %3, align 8
  %163 = getelementptr inbounds i8, i8* %162, i64 3
  store i8* %163, i8** %3, align 8
  br label %230

164:                                              ; preds = %133, %127, %121, %115, %110, %105
  %165 = load i8*, i8** %3, align 8
  %166 = load i8, i8* %165, align 1
  %167 = sext i8 %166 to i32
  %168 = icmp eq i32 %167, 48
  br i1 %168, label %169, label %220

169:                                              ; preds = %164
  %170 = load i8*, i8** %3, align 8
  %171 = getelementptr inbounds i8, i8* %170, i64 1
  %172 = load i8, i8* %171, align 1
  %173 = sext i8 %172 to i32
  %174 = icmp eq i32 %173, 120
  br i1 %174, label %181, label %175

175:                                              ; preds = %169
  %176 = load i8*, i8** %3, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 1
  %178 = load i8, i8* %177, align 1
  %179 = sext i8 %178 to i32
  %180 = icmp eq i32 %179, 88
  br i1 %180, label %181, label %220

181:                                              ; preds = %175, %169
  %182 = load i8*, i8** %3, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 2
  %184 = load i8, i8* %183, align 1
  %185 = call i32 @isxdigit(i8 signext %184)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %220

187:                                              ; preds = %181
  %188 = load i8*, i8** %3, align 8
  %189 = getelementptr inbounds i8, i8* %188, i64 2
  %190 = load i8, i8* %189, align 1
  %191 = call i32 @DIGIT(i8 signext %190)
  %192 = trunc i32 %191 to i8
  store i8 %192, i8* %7, align 1
  %193 = load i8*, i8** %3, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 3
  %195 = load i8, i8* %194, align 1
  %196 = call i32 @isxdigit(i8 signext %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %210

198:                                              ; preds = %187
  %199 = load i8, i8* %7, align 1
  %200 = sext i8 %199 to i32
  %201 = shl i32 %200, 4
  %202 = load i8*, i8** %3, align 8
  %203 = getelementptr inbounds i8, i8* %202, i64 3
  %204 = load i8, i8* %203, align 1
  %205 = call i32 @DIGIT(i8 signext %204)
  %206 = add nsw i32 %201, %205
  %207 = trunc i32 %206 to i8
  store i8 %207, i8* %7, align 1
  %208 = load i8*, i8** %3, align 8
  %209 = getelementptr inbounds i8, i8* %208, i64 4
  store i8* %209, i8** %3, align 8
  br label %213

210:                                              ; preds = %187
  %211 = load i8*, i8** %3, align 8
  %212 = getelementptr inbounds i8, i8* %211, i64 3
  store i8* %212, i8** %3, align 8
  br label %213

213:                                              ; preds = %210, %198
  %214 = load i8, i8* %7, align 1
  %215 = load i8*, i8** %4, align 8
  %216 = load i32, i32* %6, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %6, align 4
  %218 = sext i32 %216 to i64
  %219 = getelementptr inbounds i8, i8* %215, i64 %218
  store i8 %214, i8* %219, align 1
  br label %230

220:                                              ; preds = %181, %175, %164
  br label %230

221:                                              ; preds = %20
  %222 = load i8*, i8** %3, align 8
  %223 = getelementptr inbounds i8, i8* %222, i32 1
  store i8* %223, i8** %3, align 8
  %224 = load i8, i8* %222, align 1
  %225 = load i8*, i8** %4, align 8
  %226 = load i32, i32* %6, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %6, align 4
  %228 = sext i32 %226 to i64
  %229 = getelementptr inbounds i8, i8* %225, i64 %228
  store i8 %224, i8* %229, align 1
  br label %230

230:                                              ; preds = %221, %220, %213, %139, %102, %94, %86, %78, %70, %62, %54, %46, %32, %24
  br label %249

231:                                              ; preds = %17
  %232 = load i8*, i8** %3, align 8
  %233 = load i8, i8* %232, align 1
  %234 = sext i8 %233 to i32
  %235 = icmp eq i32 %234, 92
  br i1 %235, label %236, label %239

236:                                              ; preds = %231
  store i32 1, i32* %5, align 4
  %237 = load i8*, i8** %3, align 8
  %238 = getelementptr inbounds i8, i8* %237, i32 1
  store i8* %238, i8** %3, align 8
  br label %248

239:                                              ; preds = %231
  %240 = load i8*, i8** %3, align 8
  %241 = getelementptr inbounds i8, i8* %240, i32 1
  store i8* %241, i8** %3, align 8
  %242 = load i8, i8* %240, align 1
  %243 = load i8*, i8** %4, align 8
  %244 = load i32, i32* %6, align 4
  %245 = add nsw i32 %244, 1
  store i32 %245, i32* %6, align 4
  %246 = sext i32 %244 to i64
  %247 = getelementptr inbounds i8, i8* %243, i64 %246
  store i8 %242, i8* %247, align 1
  br label %248

248:                                              ; preds = %239, %236
  br label %249

249:                                              ; preds = %248, %230
  br label %13

250:                                              ; preds = %13
  %251 = load i32, i32* %5, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %259

253:                                              ; preds = %250
  %254 = load i8*, i8** %4, align 8
  %255 = load i32, i32* %6, align 4
  %256 = add nsw i32 %255, 1
  store i32 %256, i32* %6, align 4
  %257 = sext i32 %255 to i64
  %258 = getelementptr inbounds i8, i8* %254, i64 %257
  store i8 92, i8* %258, align 1
  br label %259

259:                                              ; preds = %253, %250
  %260 = load i8*, i8** %4, align 8
  %261 = load i32, i32* %6, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i8, i8* %260, i64 %262
  store i8 0, i8* %263, align 1
  %264 = load i8*, i8** %4, align 8
  store i8* %264, i8** %2, align 8
  br label %265

265:                                              ; preds = %259, %11
  %266 = load i8*, i8** %2, align 8
  ret i8* %266
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i32 @DIGIT(i8 signext) #1

declare dso_local i32 @isxdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
