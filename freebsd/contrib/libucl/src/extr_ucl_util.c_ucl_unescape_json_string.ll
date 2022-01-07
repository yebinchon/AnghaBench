; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_unescape_json_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/src/extr_ucl_util.c_ucl_unescape_json_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ucl_unescape_json_string(i8* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %6, align 8
  %11 = load i8*, i8** %4, align 8
  store i8* %11, i8** %7, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp ule i64 %12, 1
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  store i64 %15, i64* %3, align 8
  br label %257

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %249, %222, %30, %16
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %250

20:                                               ; preds = %17
  %21 = load i8*, i8** %7, align 8
  %22 = load i8, i8* %21, align 1
  %23 = sext i8 %22 to i32
  %24 = icmp eq i32 %23, 92
  br i1 %24, label %25, label %237

25:                                               ; preds = %20
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 1
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load i64, i64* %5, align 8
  %32 = add i64 %31, -1
  store i64 %32, i64* %5, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %6, align 8
  store i8 92, i8* %33, align 1
  br label %17

35:                                               ; preds = %25
  %36 = load i8*, i8** %7, align 8
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  switch i32 %38, label %227 [
    i32 110, label %39
    i32 114, label %42
    i32 98, label %45
    i32 116, label %48
    i32 102, label %51
    i32 92, label %54
    i32 34, label %57
    i32 117, label %60
  ]

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = getelementptr inbounds i8, i8* %40, i32 1
  store i8* %41, i8** %6, align 8
  store i8 10, i8* %40, align 1
  br label %232

42:                                               ; preds = %35
  %43 = load i8*, i8** %6, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %6, align 8
  store i8 13, i8* %43, align 1
  br label %232

45:                                               ; preds = %35
  %46 = load i8*, i8** %6, align 8
  %47 = getelementptr inbounds i8, i8* %46, i32 1
  store i8* %47, i8** %6, align 8
  store i8 8, i8* %46, align 1
  br label %232

48:                                               ; preds = %35
  %49 = load i8*, i8** %6, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %6, align 8
  store i8 9, i8* %49, align 1
  br label %232

51:                                               ; preds = %35
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr inbounds i8, i8* %52, i32 1
  store i8* %53, i8** %6, align 8
  store i8 12, i8* %52, align 1
  br label %232

54:                                               ; preds = %35
  %55 = load i8*, i8** %6, align 8
  %56 = getelementptr inbounds i8, i8* %55, i32 1
  store i8* %56, i8** %6, align 8
  store i8 92, i8* %55, align 1
  br label %232

57:                                               ; preds = %35
  %58 = load i8*, i8** %6, align 8
  %59 = getelementptr inbounds i8, i8* %58, i32 1
  store i8* %59, i8** %6, align 8
  store i8 34, i8* %58, align 1
  br label %232

60:                                               ; preds = %35
  store i32 0, i32* %9, align 4
  %61 = load i8*, i8** %7, align 8
  %62 = getelementptr inbounds i8, i8* %61, i32 1
  store i8* %62, i8** %7, align 8
  %63 = load i64, i64* %5, align 8
  %64 = add i64 %63, -1
  store i64 %64, i64* %5, align 8
  %65 = load i64, i64* %5, align 8
  %66 = icmp ugt i64 %65, 3
  br i1 %66, label %67, label %223

67:                                               ; preds = %60
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %149, %67
  %69 = load i32, i32* %8, align 4
  %70 = icmp slt i32 %69, 4
  br i1 %70, label %71, label %152

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = shl i32 %72, 4
  store i32 %73, i32* %9, align 4
  %74 = load i8*, i8** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i8, i8* %74, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = call i32 @isdigit(i8 signext %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %71
  %82 = load i8*, i8** %7, align 8
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = sext i8 %86 to i32
  %88 = sub nsw i32 %87, 48
  %89 = load i32, i32* %9, align 4
  %90 = add nsw i32 %89, %88
  store i32 %90, i32* %9, align 4
  br label %148

91:                                               ; preds = %71
  %92 = load i8*, i8** %7, align 8
  %93 = load i32, i32* %8, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i8, i8* %92, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp sge i32 %97, 97
  br i1 %98, label %99, label %118

99:                                               ; preds = %91
  %100 = load i8*, i8** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = icmp sle i32 %105, 102
  br i1 %106, label %107, label %118

107:                                              ; preds = %99
  %108 = load i8*, i8** %7, align 8
  %109 = load i32, i32* %8, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i8, i8* %108, i64 %110
  %112 = load i8, i8* %111, align 1
  %113 = sext i8 %112 to i32
  %114 = sub nsw i32 %113, 97
  %115 = add nsw i32 %114, 10
  %116 = load i32, i32* %9, align 4
  %117 = add nsw i32 %116, %115
  store i32 %117, i32* %9, align 4
  br label %147

118:                                              ; preds = %99, %91
  %119 = load i8*, i8** %7, align 8
  %120 = load i32, i32* %8, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i8, i8* %119, i64 %121
  %123 = load i8, i8* %122, align 1
  %124 = sext i8 %123 to i32
  %125 = icmp sge i32 %124, 65
  br i1 %125, label %126, label %145

126:                                              ; preds = %118
  %127 = load i8*, i8** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %127, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp sle i32 %132, 70
  br i1 %133, label %134, label %145

134:                                              ; preds = %126
  %135 = load i8*, i8** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i8, i8* %135, i64 %137
  %139 = load i8, i8* %138, align 1
  %140 = sext i8 %139 to i32
  %141 = sub nsw i32 %140, 65
  %142 = add nsw i32 %141, 10
  %143 = load i32, i32* %9, align 4
  %144 = add nsw i32 %143, %142
  store i32 %144, i32* %9, align 4
  br label %146

145:                                              ; preds = %126, %118
  br label %152

146:                                              ; preds = %134
  br label %147

147:                                              ; preds = %146, %107
  br label %148

148:                                              ; preds = %147, %81
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %8, align 4
  br label %68

152:                                              ; preds = %145, %68
  %153 = load i32, i32* %9, align 4
  %154 = icmp slt i32 %153, 128
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load i32, i32* %9, align 4
  %157 = trunc i32 %156 to i8
  %158 = load i8*, i8** %6, align 8
  %159 = getelementptr inbounds i8, i8* %158, i64 0
  store i8 %157, i8* %159, align 1
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %6, align 8
  br label %212

162:                                              ; preds = %152
  %163 = load i32, i32* %9, align 4
  %164 = icmp slt i32 %163, 2048
  br i1 %164, label %165, label %181

165:                                              ; preds = %162
  %166 = load i32, i32* %9, align 4
  %167 = and i32 %166, 1984
  %168 = ashr i32 %167, 6
  %169 = add nsw i32 192, %168
  %170 = trunc i32 %169 to i8
  %171 = load i8*, i8** %6, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 0
  store i8 %170, i8* %172, align 1
  %173 = load i32, i32* %9, align 4
  %174 = and i32 %173, 63
  %175 = add nsw i32 128, %174
  %176 = trunc i32 %175 to i8
  %177 = load i8*, i8** %6, align 8
  %178 = getelementptr inbounds i8, i8* %177, i64 1
  store i8 %176, i8* %178, align 1
  %179 = load i8*, i8** %6, align 8
  %180 = getelementptr inbounds i8, i8* %179, i64 2
  store i8* %180, i8** %6, align 8
  br label %211

181:                                              ; preds = %162
  %182 = load i32, i32* %9, align 4
  %183 = icmp slt i32 %182, 65536
  br i1 %183, label %184, label %207

184:                                              ; preds = %181
  %185 = load i32, i32* %9, align 4
  %186 = and i32 %185, 61440
  %187 = ashr i32 %186, 12
  %188 = add nsw i32 224, %187
  %189 = trunc i32 %188 to i8
  %190 = load i8*, i8** %6, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 0
  store i8 %189, i8* %191, align 1
  %192 = load i32, i32* %9, align 4
  %193 = and i32 %192, 4032
  %194 = ashr i32 %193, 6
  %195 = add nsw i32 128, %194
  %196 = trunc i32 %195 to i8
  %197 = load i8*, i8** %6, align 8
  %198 = getelementptr inbounds i8, i8* %197, i64 1
  store i8 %196, i8* %198, align 1
  %199 = load i32, i32* %9, align 4
  %200 = and i32 %199, 63
  %201 = add nsw i32 128, %200
  %202 = trunc i32 %201 to i8
  %203 = load i8*, i8** %6, align 8
  %204 = getelementptr inbounds i8, i8* %203, i64 2
  store i8 %202, i8* %204, align 1
  %205 = load i8*, i8** %6, align 8
  %206 = getelementptr inbounds i8, i8* %205, i64 3
  store i8* %206, i8** %6, align 8
  br label %210

207:                                              ; preds = %181
  %208 = load i8*, i8** %6, align 8
  %209 = getelementptr inbounds i8, i8* %208, i32 1
  store i8* %209, i8** %6, align 8
  store i8 63, i8* %208, align 1
  br label %210

210:                                              ; preds = %207, %184
  br label %211

211:                                              ; preds = %210, %165
  br label %212

212:                                              ; preds = %211, %155
  %213 = load i8*, i8** %7, align 8
  %214 = getelementptr inbounds i8, i8* %213, i64 4
  store i8* %214, i8** %7, align 8
  %215 = load i64, i64* %5, align 8
  %216 = sub i64 %215, 4
  store i64 %216, i64* %5, align 8
  %217 = load i64, i64* %5, align 8
  %218 = icmp ugt i64 %217, 0
  br i1 %218, label %219, label %222

219:                                              ; preds = %212
  %220 = load i64, i64* %5, align 8
  %221 = add i64 %220, -1
  store i64 %221, i64* %5, align 8
  br label %222

222:                                              ; preds = %219, %212
  br label %17

223:                                              ; preds = %60
  %224 = load i8*, i8** %6, align 8
  %225 = getelementptr inbounds i8, i8* %224, i32 1
  store i8* %225, i8** %6, align 8
  store i8 117, i8* %224, align 1
  br label %226

226:                                              ; preds = %223
  br label %232

227:                                              ; preds = %35
  %228 = load i8*, i8** %7, align 8
  %229 = load i8, i8* %228, align 1
  %230 = load i8*, i8** %6, align 8
  %231 = getelementptr inbounds i8, i8* %230, i32 1
  store i8* %231, i8** %6, align 8
  store i8 %229, i8* %230, align 1
  br label %232

232:                                              ; preds = %227, %226, %57, %54, %51, %48, %45, %42, %39
  %233 = load i8*, i8** %7, align 8
  %234 = getelementptr inbounds i8, i8* %233, i32 1
  store i8* %234, i8** %7, align 8
  %235 = load i64, i64* %5, align 8
  %236 = add i64 %235, -1
  store i64 %236, i64* %5, align 8
  br label %243

237:                                              ; preds = %20
  %238 = load i8*, i8** %7, align 8
  %239 = getelementptr inbounds i8, i8* %238, i32 1
  store i8* %239, i8** %7, align 8
  %240 = load i8, i8* %238, align 1
  %241 = load i8*, i8** %6, align 8
  %242 = getelementptr inbounds i8, i8* %241, i32 1
  store i8* %242, i8** %6, align 8
  store i8 %240, i8* %241, align 1
  br label %243

243:                                              ; preds = %237, %232
  %244 = load i64, i64* %5, align 8
  %245 = icmp ugt i64 %244, 0
  br i1 %245, label %246, label %249

246:                                              ; preds = %243
  %247 = load i64, i64* %5, align 8
  %248 = add i64 %247, -1
  store i64 %248, i64* %5, align 8
  br label %249

249:                                              ; preds = %246, %243
  br label %17

250:                                              ; preds = %17
  %251 = load i8*, i8** %6, align 8
  store i8 0, i8* %251, align 1
  %252 = load i8*, i8** %6, align 8
  %253 = load i8*, i8** %4, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  store i64 %256, i64* %3, align 8
  br label %257

257:                                              ; preds = %250, %14
  %258 = load i64, i64* %3, align 8
  ret i64 %258
}

declare dso_local i32 @isdigit(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
