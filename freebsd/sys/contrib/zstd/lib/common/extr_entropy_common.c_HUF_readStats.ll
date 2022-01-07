; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/common/extr_entropy_common.c_HUF_readStats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/zstd/lib/common/extr_entropy_common.c_HUF_readStats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_readStats(i32* %0, i64 %1, i64* %2, i64* %3, i64* %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i64*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64* %2, i64** %11, align 8
  store i64* %3, i64** %12, align 8
  store i64* %4, i64** %13, align 8
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %17, align 8
  %32 = load i64, i64* %15, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %7
  %35 = load i32, i32* @srcSize_wrong, align 4
  %36 = call i64 @ERROR(i32 %35)
  store i64 %36, i64* %8, align 8
  br label %241

37:                                               ; preds = %7
  %38 = load i32*, i32** %17, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %18, align 8
  %43 = icmp uge i64 %42, 128
  br i1 %43, label %44, label %95

44:                                               ; preds = %37
  %45 = load i64, i64* %18, align 8
  %46 = sub i64 %45, 127
  store i64 %46, i64* %19, align 8
  %47 = load i64, i64* %19, align 8
  %48 = add i64 %47, 1
  %49 = udiv i64 %48, 2
  store i64 %49, i64* %18, align 8
  %50 = load i64, i64* %18, align 8
  %51 = add i64 %50, 1
  %52 = load i64, i64* %15, align 8
  %53 = icmp ugt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %44
  %55 = load i32, i32* @srcSize_wrong, align 4
  %56 = call i64 @ERROR(i32 %55)
  store i64 %56, i64* %8, align 8
  br label %241

57:                                               ; preds = %44
  %58 = load i64, i64* %19, align 8
  %59 = load i64, i64* %10, align 8
  %60 = icmp uge i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %57
  %62 = load i32, i32* @corruption_detected, align 4
  %63 = call i64 @ERROR(i32 %62)
  store i64 %63, i64* %8, align 8
  br label %241

64:                                               ; preds = %57
  %65 = load i32*, i32** %17, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32* %66, i32** %17, align 8
  store i64 0, i64* %20, align 8
  br label %67

67:                                               ; preds = %91, %64
  %68 = load i64, i64* %20, align 8
  %69 = load i64, i64* %19, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %94

71:                                               ; preds = %67
  %72 = load i32*, i32** %17, align 8
  %73 = load i64, i64* %20, align 8
  %74 = udiv i64 %73, 2
  %75 = getelementptr inbounds i32, i32* %72, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 4
  %78 = load i32*, i32** %9, align 8
  %79 = load i64, i64* %20, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  %81 = load i32*, i32** %17, align 8
  %82 = load i64, i64* %20, align 8
  %83 = udiv i64 %82, 2
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 15
  %87 = load i32*, i32** %9, align 8
  %88 = load i64, i64* %20, align 8
  %89 = add i64 %88, 1
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  store i32 %86, i32* %90, align 4
  br label %91

91:                                               ; preds = %71
  %92 = load i64, i64* %20, align 8
  %93 = add i64 %92, 2
  store i64 %93, i64* %20, align 8
  br label %67

94:                                               ; preds = %67
  br label %125

95:                                               ; preds = %37
  %96 = call i32 @FSE_DTABLE_SIZE_U32(i32 6)
  %97 = zext i32 %96 to i64
  %98 = call i8* @llvm.stacksave()
  store i8* %98, i8** %21, align 8
  %99 = alloca i32, i64 %97, align 16
  store i64 %97, i64* %22, align 8
  %100 = load i64, i64* %18, align 8
  %101 = add i64 %100, 1
  %102 = load i64, i64* %15, align 8
  %103 = icmp ugt i64 %101, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %95
  %105 = load i32, i32* @srcSize_wrong, align 4
  %106 = call i64 @ERROR(i32 %105)
  store i64 %106, i64* %8, align 8
  store i32 1, i32* %23, align 4
  br label %121

107:                                              ; preds = %95
  %108 = load i32*, i32** %9, align 8
  %109 = load i64, i64* %10, align 8
  %110 = sub i64 %109, 1
  %111 = load i32*, i32** %17, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i64, i64* %18, align 8
  %114 = call i64 @FSE_decompress_wksp(i32* %108, i64 %110, i32* %112, i64 %113, i32* %99, i32 6)
  store i64 %114, i64* %19, align 8
  %115 = load i64, i64* %19, align 8
  %116 = call i64 @FSE_isError(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %107
  %119 = load i64, i64* %19, align 8
  store i64 %119, i64* %8, align 8
  store i32 1, i32* %23, align 4
  br label %121

120:                                              ; preds = %107
  store i32 0, i32* %23, align 4
  br label %121

121:                                              ; preds = %120, %118, %104
  %122 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %122)
  %123 = load i32, i32* %23, align 4
  switch i32 %123, label %243 [
    i32 0, label %124
    i32 1, label %241
  ]

124:                                              ; preds = %121
  br label %125

125:                                              ; preds = %124, %94
  %126 = load i64*, i64** %11, align 8
  %127 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %128 = add nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = mul i64 %129, 8
  %131 = trunc i64 %130 to i32
  %132 = call i32 @memset(i64* %126, i32 0, i32 %131)
  store i64 0, i64* %16, align 8
  store i64 0, i64* %24, align 8
  br label %133

133:                                              ; preds = %166, %125
  %134 = load i64, i64* %24, align 8
  %135 = load i64, i64* %19, align 8
  %136 = icmp ult i64 %134, %135
  br i1 %136, label %137, label %169

137:                                              ; preds = %133
  %138 = load i32*, i32** %9, align 8
  %139 = load i64, i64* %24, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %143 = icmp sge i32 %141, %142
  br i1 %143, label %144, label %147

144:                                              ; preds = %137
  %145 = load i32, i32* @corruption_detected, align 4
  %146 = call i64 @ERROR(i32 %145)
  store i64 %146, i64* %8, align 8
  br label %241

147:                                              ; preds = %137
  %148 = load i64*, i64** %11, align 8
  %149 = load i32*, i32** %9, align 8
  %150 = load i64, i64* %24, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %148, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = add i64 %155, 1
  store i64 %156, i64* %154, align 8
  %157 = load i32*, i32** %9, align 8
  %158 = load i64, i64* %24, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = shl i32 1, %160
  %162 = ashr i32 %161, 1
  %163 = sext i32 %162 to i64
  %164 = load i64, i64* %16, align 8
  %165 = add i64 %164, %163
  store i64 %165, i64* %16, align 8
  br label %166

166:                                              ; preds = %147
  %167 = load i64, i64* %24, align 8
  %168 = add i64 %167, 1
  store i64 %168, i64* %24, align 8
  br label %133

169:                                              ; preds = %133
  %170 = load i64, i64* %16, align 8
  %171 = icmp eq i64 %170, 0
  br i1 %171, label %172, label %175

172:                                              ; preds = %169
  %173 = load i32, i32* @corruption_detected, align 4
  %174 = call i64 @ERROR(i32 %173)
  store i64 %174, i64* %8, align 8
  br label %241

175:                                              ; preds = %169
  %176 = load i64, i64* %16, align 8
  %177 = call i32 @BIT_highbit32(i64 %176)
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  store i64 %179, i64* %25, align 8
  %180 = load i64, i64* %25, align 8
  %181 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp ugt i64 %180, %182
  br i1 %183, label %184, label %187

184:                                              ; preds = %175
  %185 = load i32, i32* @corruption_detected, align 4
  %186 = call i64 @ERROR(i32 %185)
  store i64 %186, i64* %8, align 8
  br label %241

187:                                              ; preds = %175
  %188 = load i64, i64* %25, align 8
  %189 = load i64*, i64** %13, align 8
  store i64 %188, i64* %189, align 8
  %190 = load i64, i64* %25, align 8
  %191 = trunc i64 %190 to i32
  %192 = shl i32 1, %191
  %193 = sext i32 %192 to i64
  store i64 %193, i64* %26, align 8
  %194 = load i64, i64* %26, align 8
  %195 = load i64, i64* %16, align 8
  %196 = sub i64 %194, %195
  store i64 %196, i64* %27, align 8
  %197 = load i64, i64* %27, align 8
  %198 = call i32 @BIT_highbit32(i64 %197)
  %199 = shl i32 1, %198
  %200 = sext i32 %199 to i64
  store i64 %200, i64* %28, align 8
  %201 = load i64, i64* %27, align 8
  %202 = call i32 @BIT_highbit32(i64 %201)
  %203 = add nsw i32 %202, 1
  %204 = sext i32 %203 to i64
  store i64 %204, i64* %29, align 8
  %205 = load i64, i64* %28, align 8
  %206 = load i64, i64* %27, align 8
  %207 = icmp ne i64 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %187
  %209 = load i32, i32* @corruption_detected, align 4
  %210 = call i64 @ERROR(i32 %209)
  store i64 %210, i64* %8, align 8
  br label %241

211:                                              ; preds = %187
  %212 = load i64, i64* %29, align 8
  %213 = trunc i64 %212 to i32
  %214 = load i32*, i32** %9, align 8
  %215 = load i64, i64* %19, align 8
  %216 = getelementptr inbounds i32, i32* %214, i64 %215
  store i32 %213, i32* %216, align 4
  %217 = load i64*, i64** %11, align 8
  %218 = load i64, i64* %29, align 8
  %219 = getelementptr inbounds i64, i64* %217, i64 %218
  %220 = load i64, i64* %219, align 8
  %221 = add i64 %220, 1
  store i64 %221, i64* %219, align 8
  %222 = load i64*, i64** %11, align 8
  %223 = getelementptr inbounds i64, i64* %222, i64 1
  %224 = load i64, i64* %223, align 8
  %225 = icmp ult i64 %224, 2
  br i1 %225, label %232, label %226

226:                                              ; preds = %211
  %227 = load i64*, i64** %11, align 8
  %228 = getelementptr inbounds i64, i64* %227, i64 1
  %229 = load i64, i64* %228, align 8
  %230 = and i64 %229, 1
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %235

232:                                              ; preds = %226, %211
  %233 = load i32, i32* @corruption_detected, align 4
  %234 = call i64 @ERROR(i32 %233)
  store i64 %234, i64* %8, align 8
  br label %241

235:                                              ; preds = %226
  %236 = load i64, i64* %19, align 8
  %237 = add i64 %236, 1
  %238 = load i64*, i64** %12, align 8
  store i64 %237, i64* %238, align 8
  %239 = load i64, i64* %18, align 8
  %240 = add i64 %239, 1
  store i64 %240, i64* %8, align 8
  br label %241

241:                                              ; preds = %235, %232, %208, %184, %172, %144, %121, %61, %54, %34
  %242 = load i64, i64* %8, align 8
  ret i64 %242

243:                                              ; preds = %121
  unreachable
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @FSE_DTABLE_SIZE_U32(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @FSE_decompress_wksp(i32*, i64, i32*, i64, i32*, i32) #1

declare dso_local i64 @FSE_isError(i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @BIT_highbit32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
