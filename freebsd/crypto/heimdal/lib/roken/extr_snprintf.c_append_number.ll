; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf.c_append_number.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/heimdal/lib/roken/extr_snprintf.c_append_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snprintf_state = type { i32 (%struct.snprintf_state*, i8)* }

@zero_flag = common dso_local global i32 0, align 4
@plus_flag = common dso_local global i32 0, align 4
@space_flag = common dso_local global i32 0, align 4
@alternate_flag = common dso_local global i32 0, align 4
@minus_flag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snprintf_state*, i32, i32, i8*, i32, i32, i32, i32)* @append_number to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @append_number(%struct.snprintf_state* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.snprintf_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca [64 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8, align 1
  store %struct.snprintf_state* %0, %struct.snprintf_state** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %23 = load i32, i32* %10, align 4
  store i32 %23, i32* %18, align 4
  %24 = load i32, i32* %14, align 4
  %25 = icmp ne i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %8
  %27 = load i32, i32* @zero_flag, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %15, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %15, align 4
  br label %32

31:                                               ; preds = %8
  store i32 1, i32* %14, align 4
  br label %32

32:                                               ; preds = %31, %26
  store i32 64, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %33 = load i32, i32* %20, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %20, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %35
  store i8 0, i8* %36, align 1
  br label %37

37:                                               ; preds = %58, %32
  %38 = load i32, i32* %20, align 4
  %39 = icmp sgt i32 %38, 0
  %40 = zext i1 %39 to i32
  %41 = call i32 @assert(i32 %40)
  %42 = load i8*, i8** %12, align 8
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %11, align 4
  %45 = urem i32 %43, %44
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %42, i64 %46
  %48 = load i8, i8* %47, align 1
  %49 = load i32, i32* %20, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %20, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %51
  store i8 %48, i8* %52, align 1
  %53 = load i32, i32* %21, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* %18, align 4
  %57 = udiv i32 %56, %55
  store i32 %57, i32* %18, align 4
  br label %58

58:                                               ; preds = %37
  %59 = load i32, i32* %18, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %37, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %14, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %64
  %68 = load i32, i32* %21, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %21, align 4
  %70 = load i32, i32* %20, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %20, align 4
  br label %72

72:                                               ; preds = %67, %64, %61
  %73 = load i32, i32* %16, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i8 45, i8* %22, align 1
  br label %91

76:                                               ; preds = %72
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* @plus_flag, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76
  store i8 43, i8* %22, align 1
  br label %90

82:                                               ; preds = %76
  %83 = load i32, i32* %15, align 4
  %84 = load i32, i32* @space_flag, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i8 32, i8* %22, align 1
  br label %89

88:                                               ; preds = %82
  store i8 0, i8* %22, align 1
  br label %89

89:                                               ; preds = %88, %87
  br label %90

90:                                               ; preds = %89, %81
  br label %91

91:                                               ; preds = %90, %75
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @alternate_flag, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %121

96:                                               ; preds = %91
  %97 = load i32, i32* %11, align 4
  %98 = icmp eq i32 %97, 8
  br i1 %98, label %99, label %121

99:                                               ; preds = %96
  %100 = load i32, i32* %14, align 4
  %101 = load i32, i32* %21, align 4
  %102 = icmp sle i32 %100, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %99
  %104 = load i32, i32* %20, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %105
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = icmp ne i32 %108, 48
  br i1 %109, label %110, label %120

110:                                              ; preds = %103
  %111 = load i32, i32* %20, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %112
  %114 = load i8, i8* %113, align 1
  %115 = sext i8 %114 to i32
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %110
  %118 = load i32, i32* %21, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %120

120:                                              ; preds = %117, %110, %103, %99
  br label %121

121:                                              ; preds = %120, %96, %91
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @minus_flag, align 4
  %124 = load i32, i32* @zero_flag, align 4
  %125 = or i32 %123, %124
  %126 = and i32 %122, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %164, label %128

128:                                              ; preds = %121
  %129 = load i32, i32* %14, align 4
  %130 = load i32, i32* %21, align 4
  %131 = icmp sgt i32 %129, %130
  br i1 %131, label %132, label %136

132:                                              ; preds = %128
  %133 = load i32, i32* %14, align 4
  %134 = load i32, i32* %13, align 4
  %135 = sub nsw i32 %134, %133
  store i32 %135, i32* %13, align 4
  br label %140

136:                                              ; preds = %128
  %137 = load i32, i32* %21, align 4
  %138 = load i32, i32* %13, align 4
  %139 = sub nsw i32 %138, %137
  store i32 %139, i32* %13, align 4
  br label %140

140:                                              ; preds = %136, %132
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %11, align 4
  %144 = call i64 @use_alternative(i32 %141, i32 %142, i32 %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %140
  %147 = load i32, i32* %13, align 4
  %148 = sub nsw i32 %147, 2
  store i32 %148, i32* %13, align 4
  br label %149

149:                                              ; preds = %146, %140
  %150 = load i8, i8* %22, align 1
  %151 = sext i8 %150 to i32
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %156

153:                                              ; preds = %149
  %154 = load i32, i32* %13, align 4
  %155 = add nsw i32 %154, -1
  store i32 %155, i32* %13, align 4
  br label %156

156:                                              ; preds = %153, %149
  %157 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %158 = load i32, i32* %13, align 4
  %159 = call i64 @pad(%struct.snprintf_state* %157, i32 %158, i8 signext 32)
  %160 = load i32, i32* %17, align 4
  %161 = sext i32 %160 to i64
  %162 = add nsw i64 %161, %159
  %163 = trunc i64 %162 to i32
  store i32 %163, i32* %17, align 4
  br label %164

164:                                              ; preds = %156, %121
  %165 = load i8, i8* %22, align 1
  %166 = sext i8 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %177

168:                                              ; preds = %164
  %169 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %170 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %169, i32 0, i32 0
  %171 = load i32 (%struct.snprintf_state*, i8)*, i32 (%struct.snprintf_state*, i8)** %170, align 8
  %172 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %173 = load i8, i8* %22, align 1
  %174 = call i32 %171(%struct.snprintf_state* %172, i8 signext %173)
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %168, %164
  %178 = load i32, i32* %15, align 4
  %179 = load i32, i32* %10, align 4
  %180 = load i32, i32* %11, align 4
  %181 = call i64 @use_alternative(i32 %178, i32 %179, i32 %180)
  %182 = icmp ne i64 %181, 0
  br i1 %182, label %183, label %202

183:                                              ; preds = %177
  %184 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %185 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %184, i32 0, i32 0
  %186 = load i32 (%struct.snprintf_state*, i8)*, i32 (%struct.snprintf_state*, i8)** %185, align 8
  %187 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %188 = call i32 %186(%struct.snprintf_state* %187, i8 signext 48)
  %189 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %190 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %189, i32 0, i32 0
  %191 = load i32 (%struct.snprintf_state*, i8)*, i32 (%struct.snprintf_state*, i8)** %190, align 8
  %192 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = getelementptr inbounds i8, i8* %193, i64 10
  %195 = load i8, i8* %194, align 1
  %196 = sext i8 %195 to i32
  %197 = add nsw i32 %196, 23
  %198 = trunc i32 %197 to i8
  %199 = call i32 %191(%struct.snprintf_state* %192, i8 signext %198)
  %200 = load i32, i32* %17, align 4
  %201 = add nsw i32 %200, 2
  store i32 %201, i32* %17, align 4
  br label %202

202:                                              ; preds = %183, %177
  %203 = load i32, i32* %15, align 4
  %204 = load i32, i32* @zero_flag, align 4
  %205 = and i32 %203, %204
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %240

207:                                              ; preds = %202
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* %21, align 4
  %210 = sub nsw i32 %208, %209
  %211 = load i32, i32* %13, align 4
  %212 = load i32, i32* %17, align 4
  %213 = sub nsw i32 %211, %212
  %214 = load i32, i32* %21, align 4
  %215 = sub nsw i32 %213, %214
  %216 = icmp sgt i32 %210, %215
  br i1 %216, label %217, label %227

217:                                              ; preds = %207
  %218 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %21, align 4
  %221 = sub nsw i32 %219, %220
  %222 = call i64 @pad(%struct.snprintf_state* %218, i32 %221, i8 signext 48)
  %223 = load i32, i32* %17, align 4
  %224 = sext i32 %223 to i64
  %225 = add nsw i64 %224, %222
  %226 = trunc i64 %225 to i32
  store i32 %226, i32* %17, align 4
  br label %239

227:                                              ; preds = %207
  %228 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %17, align 4
  %231 = sub nsw i32 %229, %230
  %232 = load i32, i32* %21, align 4
  %233 = sub nsw i32 %231, %232
  %234 = call i64 @pad(%struct.snprintf_state* %228, i32 %233, i8 signext 48)
  %235 = load i32, i32* %17, align 4
  %236 = sext i32 %235 to i64
  %237 = add nsw i64 %236, %234
  %238 = trunc i64 %237 to i32
  store i32 %238, i32* %17, align 4
  br label %239

239:                                              ; preds = %227, %217
  br label %250

240:                                              ; preds = %202
  %241 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %242 = load i32, i32* %14, align 4
  %243 = load i32, i32* %21, align 4
  %244 = sub nsw i32 %242, %243
  %245 = call i64 @pad(%struct.snprintf_state* %241, i32 %244, i8 signext 48)
  %246 = load i32, i32* %17, align 4
  %247 = sext i32 %246 to i64
  %248 = add nsw i64 %247, %245
  %249 = trunc i64 %248 to i32
  store i32 %249, i32* %17, align 4
  br label %250

250:                                              ; preds = %240, %239
  br label %251

251:                                              ; preds = %258, %250
  %252 = load i32, i32* %20, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %253
  %255 = load i8, i8* %254, align 1
  %256 = sext i8 %255 to i32
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %271

258:                                              ; preds = %251
  %259 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %260 = getelementptr inbounds %struct.snprintf_state, %struct.snprintf_state* %259, i32 0, i32 0
  %261 = load i32 (%struct.snprintf_state*, i8)*, i32 (%struct.snprintf_state*, i8)** %260, align 8
  %262 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %263 = load i32, i32* %20, align 4
  %264 = add nsw i32 %263, 1
  store i32 %264, i32* %20, align 4
  %265 = sext i32 %263 to i64
  %266 = getelementptr inbounds [64 x i8], [64 x i8]* %19, i64 0, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = call i32 %261(%struct.snprintf_state* %262, i8 signext %267)
  %269 = load i32, i32* %17, align 4
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* %17, align 4
  br label %251

271:                                              ; preds = %251
  %272 = load i32, i32* %15, align 4
  %273 = load i32, i32* @minus_flag, align 4
  %274 = and i32 %272, %273
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %271
  %277 = load %struct.snprintf_state*, %struct.snprintf_state** %9, align 8
  %278 = load i32, i32* %13, align 4
  %279 = load i32, i32* %17, align 4
  %280 = sub nsw i32 %278, %279
  %281 = call i64 @pad(%struct.snprintf_state* %277, i32 %280, i8 signext 32)
  %282 = load i32, i32* %17, align 4
  %283 = sext i32 %282 to i64
  %284 = add nsw i64 %283, %281
  %285 = trunc i64 %284 to i32
  store i32 %285, i32* %17, align 4
  br label %286

286:                                              ; preds = %276, %271
  %287 = load i32, i32* %17, align 4
  ret i32 %287
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @use_alternative(i32, i32, i32) #1

declare dso_local i64 @pad(%struct.snprintf_state*, i32, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
