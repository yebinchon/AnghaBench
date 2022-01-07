; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c__utf8_to_unicode.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_string.c__utf8_to_unicode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_utf8_to_unicode.utf8_count = internal constant <{ [245 x i8], [11 x i8] }> <{ [245 x i8] c"\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\03\04\04\04\04\04", [11 x i8] zeroinitializer }>, align 16
@UNICODE_MAX = common dso_local global i32 0, align 4
@UNICODE_R_CHAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64)* @_utf8_to_unicode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_utf8_to_unicode(i32* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load i64, i64* %7, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %246

15:                                               ; preds = %3
  %16 = load i8*, i8** %6, align 8
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  store i32 0, i32* %4, align 4
  br label %246

22:                                               ; preds = %15
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [256 x i8], [256 x i8]* bitcast (<{ [245 x i8], [11 x i8] }>* @_utf8_to_unicode.utf8_count to [256 x i8]*), i64 0, i64 %24
  %26 = load i8, i8* %25, align 1
  %27 = sext i8 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load i64, i64* %7, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %22
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %35

35:                                               ; preds = %51, %32
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %10, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %54

39:                                               ; preds = %35
  %40 = load i8*, i8** %6, align 8
  %41 = load i32, i32* %9, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = sext i8 %44 to i32
  %46 = and i32 %45, 192
  %47 = icmp ne i32 %46, 128
  br i1 %47, label %48, label %50

48:                                               ; preds = %39
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %10, align 4
  br label %54

50:                                               ; preds = %39
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %9, align 4
  br label %35

54:                                               ; preds = %48, %35
  br label %241

55:                                               ; preds = %22
  %56 = load i32, i32* %10, align 4
  switch i32 %56, label %171 [
    i32 1, label %57
    i32 2, label %62
    i32 3, label %82
    i32 4, label %119
  ]

57:                                               ; preds = %55
  %58 = load i32, i32* %8, align 4
  %59 = and i32 %58, 127
  %60 = load i32*, i32** %5, align 8
  store i32 %59, i32* %60, align 4
  %61 = load i32, i32* %10, align 4
  store i32 %61, i32* %4, align 4
  br label %246

62:                                               ; preds = %55
  %63 = load i8*, i8** %6, align 8
  %64 = getelementptr inbounds i8, i8* %63, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = sext i8 %65 to i32
  %67 = and i32 %66, 192
  %68 = icmp ne i32 %67, 128
  br i1 %68, label %69, label %70

69:                                               ; preds = %62
  store i32 1, i32* %10, align 4
  br label %241

70:                                               ; preds = %62
  %71 = load i32, i32* %8, align 4
  %72 = and i32 %71, 31
  %73 = shl i32 %72, 6
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 1
  %76 = load i8, i8* %75, align 1
  %77 = sext i8 %76 to i32
  %78 = and i32 %77, 63
  %79 = or i32 %73, %78
  %80 = load i32*, i32** %5, align 8
  store i32 %79, i32* %80, align 4
  %81 = load i32, i32* %10, align 4
  store i32 %81, i32* %4, align 4
  br label %246

82:                                               ; preds = %55
  %83 = load i8*, i8** %6, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 1
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = and i32 %86, 192
  %88 = icmp ne i32 %87, 128
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %10, align 4
  br label %241

90:                                               ; preds = %82
  %91 = load i8*, i8** %6, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 2
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = and i32 %94, 192
  %96 = icmp ne i32 %95, 128
  br i1 %96, label %97, label %98

97:                                               ; preds = %90
  store i32 2, i32* %10, align 4
  br label %241

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = and i32 %99, 15
  %101 = shl i32 %100, 12
  %102 = load i8*, i8** %6, align 8
  %103 = getelementptr inbounds i8, i8* %102, i64 1
  %104 = load i8, i8* %103, align 1
  %105 = sext i8 %104 to i32
  %106 = and i32 %105, 63
  %107 = shl i32 %106, 6
  %108 = or i32 %101, %107
  %109 = load i8*, i8** %6, align 8
  %110 = getelementptr inbounds i8, i8* %109, i64 2
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = and i32 %112, 63
  %114 = or i32 %108, %113
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp slt i32 %115, 2048
  br i1 %116, label %117, label %118

117:                                              ; preds = %98
  br label %241

118:                                              ; preds = %98
  br label %232

119:                                              ; preds = %55
  %120 = load i8*, i8** %6, align 8
  %121 = getelementptr inbounds i8, i8* %120, i64 1
  %122 = load i8, i8* %121, align 1
  %123 = sext i8 %122 to i32
  %124 = and i32 %123, 192
  %125 = icmp ne i32 %124, 128
  br i1 %125, label %126, label %127

126:                                              ; preds = %119
  store i32 1, i32* %10, align 4
  br label %241

127:                                              ; preds = %119
  %128 = load i8*, i8** %6, align 8
  %129 = getelementptr inbounds i8, i8* %128, i64 2
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = and i32 %131, 192
  %133 = icmp ne i32 %132, 128
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  store i32 2, i32* %10, align 4
  br label %241

135:                                              ; preds = %127
  %136 = load i8*, i8** %6, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 3
  %138 = load i8, i8* %137, align 1
  %139 = sext i8 %138 to i32
  %140 = and i32 %139, 192
  %141 = icmp ne i32 %140, 128
  br i1 %141, label %142, label %143

142:                                              ; preds = %135
  store i32 3, i32* %10, align 4
  br label %241

143:                                              ; preds = %135
  %144 = load i32, i32* %8, align 4
  %145 = and i32 %144, 7
  %146 = shl i32 %145, 18
  %147 = load i8*, i8** %6, align 8
  %148 = getelementptr inbounds i8, i8* %147, i64 1
  %149 = load i8, i8* %148, align 1
  %150 = sext i8 %149 to i32
  %151 = and i32 %150, 63
  %152 = shl i32 %151, 12
  %153 = or i32 %146, %152
  %154 = load i8*, i8** %6, align 8
  %155 = getelementptr inbounds i8, i8* %154, i64 2
  %156 = load i8, i8* %155, align 1
  %157 = sext i8 %156 to i32
  %158 = and i32 %157, 63
  %159 = shl i32 %158, 6
  %160 = or i32 %153, %159
  %161 = load i8*, i8** %6, align 8
  %162 = getelementptr inbounds i8, i8* %161, i64 3
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = and i32 %164, 63
  %166 = or i32 %160, %165
  store i32 %166, i32* %11, align 4
  %167 = load i32, i32* %11, align 4
  %168 = icmp slt i32 %167, 65536
  br i1 %168, label %169, label %170

169:                                              ; preds = %143
  br label %241

170:                                              ; preds = %143
  br label %232

171:                                              ; preds = %55
  %172 = load i32, i32* %8, align 4
  %173 = icmp eq i32 %172, 192
  br i1 %173, label %177, label %174

174:                                              ; preds = %171
  %175 = load i32, i32* %8, align 4
  %176 = icmp eq i32 %175, 193
  br i1 %176, label %177, label %178

177:                                              ; preds = %174, %171
  store i32 2, i32* %10, align 4
  br label %203

178:                                              ; preds = %174
  %179 = load i32, i32* %8, align 4
  %180 = icmp sge i32 %179, 245
  br i1 %180, label %181, label %185

181:                                              ; preds = %178
  %182 = load i32, i32* %8, align 4
  %183 = icmp sle i32 %182, 247
  br i1 %183, label %184, label %185

184:                                              ; preds = %181
  store i32 4, i32* %10, align 4
  br label %202

185:                                              ; preds = %181, %178
  %186 = load i32, i32* %8, align 4
  %187 = icmp sge i32 %186, 248
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load i32, i32* %8, align 4
  %190 = icmp sle i32 %189, 251
  br i1 %190, label %191, label %192

191:                                              ; preds = %188
  store i32 5, i32* %10, align 4
  br label %201

192:                                              ; preds = %188, %185
  %193 = load i32, i32* %8, align 4
  %194 = icmp eq i32 %193, 252
  br i1 %194, label %198, label %195

195:                                              ; preds = %192
  %196 = load i32, i32* %8, align 4
  %197 = icmp eq i32 %196, 253
  br i1 %197, label %198, label %199

198:                                              ; preds = %195, %192
  store i32 6, i32* %10, align 4
  br label %200

199:                                              ; preds = %195
  store i32 1, i32* %10, align 4
  br label %200

200:                                              ; preds = %199, %198
  br label %201

201:                                              ; preds = %200, %191
  br label %202

202:                                              ; preds = %201, %184
  br label %203

203:                                              ; preds = %202, %177
  %204 = load i64, i64* %7, align 8
  %205 = trunc i64 %204 to i32
  %206 = load i32, i32* %10, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i64, i64* %7, align 8
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %10, align 4
  br label %211

211:                                              ; preds = %208, %203
  store i32 1, i32* %9, align 4
  br label %212

212:                                              ; preds = %228, %211
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %10, align 4
  %215 = icmp slt i32 %213, %214
  br i1 %215, label %216, label %231

216:                                              ; preds = %212
  %217 = load i8*, i8** %6, align 8
  %218 = load i32, i32* %9, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = and i32 %222, 192
  %224 = icmp ne i32 %223, 128
  br i1 %224, label %225, label %227

225:                                              ; preds = %216
  %226 = load i32, i32* %9, align 4
  store i32 %226, i32* %10, align 4
  br label %231

227:                                              ; preds = %216
  br label %228

228:                                              ; preds = %227
  %229 = load i32, i32* %9, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %9, align 4
  br label %212

231:                                              ; preds = %225, %212
  br label %241

232:                                              ; preds = %170, %118
  %233 = load i32, i32* %11, align 4
  %234 = load i32, i32* @UNICODE_MAX, align 4
  %235 = icmp sgt i32 %233, %234
  br i1 %235, label %236, label %237

236:                                              ; preds = %232
  br label %241

237:                                              ; preds = %232
  %238 = load i32, i32* %11, align 4
  %239 = load i32*, i32** %5, align 8
  store i32 %238, i32* %239, align 4
  %240 = load i32, i32* %10, align 4
  store i32 %240, i32* %4, align 4
  br label %246

241:                                              ; preds = %236, %231, %169, %142, %134, %126, %117, %97, %89, %69, %54
  %242 = load i32, i32* @UNICODE_R_CHAR, align 4
  %243 = load i32*, i32** %5, align 8
  store i32 %242, i32* %243, align 4
  %244 = load i32, i32* %10, align 4
  %245 = mul nsw i32 %244, -1
  store i32 %245, i32* %4, align 4
  br label %246

246:                                              ; preds = %241, %237, %70, %57, %21, %14
  %247 = load i32, i32* %4, align 4
  ret i32 %247
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
