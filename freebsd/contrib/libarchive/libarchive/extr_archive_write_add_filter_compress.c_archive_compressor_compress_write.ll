; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_compressor_compress_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libarchive/libarchive/extr_archive_write_add_filter_compress.c_archive_compressor_compress_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.archive_write_filter = type { i64 }
%struct.private_data = type { i32, i32, i32, i32*, i32*, i64, i64, i32, i32, i32 }

@ARCHIVE_OK = common dso_local global i32 0, align 4
@HSHIFT = common dso_local global i32 0, align 4
@HSIZE = common dso_local global i32 0, align 4
@CHECK_GAP = common dso_local global i32 0, align 4
@FIRST = common dso_local global i64 0, align 8
@CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.archive_write_filter*, i8*, i64)* @archive_compressor_compress_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @archive_compressor_compress_write(%struct.archive_write_filter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.archive_write_filter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.private_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.archive_write_filter* %0, %struct.archive_write_filter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %16 = getelementptr inbounds %struct.archive_write_filter, %struct.archive_write_filter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.private_data*
  store %struct.private_data* %18, %struct.private_data** %8, align 8
  %19 = load i64, i64* %7, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %22, i32* %4, align 4
  br label %277

23:                                               ; preds = %3
  %24 = load i8*, i8** %6, align 8
  store i8* %24, i8** %14, align 8
  %25 = load %struct.private_data*, %struct.private_data** %8, align 8
  %26 = getelementptr inbounds %struct.private_data, %struct.private_data* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i8*, i8** %14, align 8
  %31 = getelementptr inbounds i8, i8* %30, i32 1
  store i8* %31, i8** %14, align 8
  %32 = load i8, i8* %30, align 1
  %33 = zext i8 %32 to i32
  %34 = load %struct.private_data*, %struct.private_data** %8, align 8
  %35 = getelementptr inbounds %struct.private_data, %struct.private_data* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.private_data*, %struct.private_data** %8, align 8
  %37 = getelementptr inbounds %struct.private_data, %struct.private_data* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %40, -1
  store i64 %41, i64* %7, align 8
  br label %42

42:                                               ; preds = %29, %23
  br label %43

43:                                               ; preds = %274, %204, %175, %132, %82, %42
  %44 = load i64, i64* %7, align 8
  %45 = add i64 %44, -1
  store i64 %45, i64* %7, align 8
  %46 = icmp ne i64 %44, 0
  br i1 %46, label %47, label %275

47:                                               ; preds = %43
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds i8, i8* %48, i32 1
  store i8* %49, i8** %14, align 8
  %50 = load i8, i8* %48, align 1
  %51 = zext i8 %50 to i32
  store i32 %51, i32* %11, align 4
  %52 = load %struct.private_data*, %struct.private_data** %8, align 8
  %53 = getelementptr inbounds %struct.private_data, %struct.private_data* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* %11, align 4
  %57 = shl i32 %56, 16
  %58 = load %struct.private_data*, %struct.private_data** %8, align 8
  %59 = getelementptr inbounds %struct.private_data, %struct.private_data* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %57, %60
  %62 = load %struct.private_data*, %struct.private_data** %8, align 8
  %63 = getelementptr inbounds %struct.private_data, %struct.private_data* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @HSHIFT, align 4
  %66 = shl i32 %64, %65
  %67 = load %struct.private_data*, %struct.private_data** %8, align 8
  %68 = getelementptr inbounds %struct.private_data, %struct.private_data* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %66, %69
  store i32 %70, i32* %9, align 4
  %71 = load %struct.private_data*, %struct.private_data** %8, align 8
  %72 = getelementptr inbounds %struct.private_data, %struct.private_data* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %9, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.private_data*, %struct.private_data** %8, align 8
  %79 = getelementptr inbounds %struct.private_data, %struct.private_data* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = icmp eq i32 %77, %80
  br i1 %81, label %82, label %92

82:                                               ; preds = %47
  %83 = load %struct.private_data*, %struct.private_data** %8, align 8
  %84 = getelementptr inbounds %struct.private_data, %struct.private_data* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %9, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.private_data*, %struct.private_data** %8, align 8
  %91 = getelementptr inbounds %struct.private_data, %struct.private_data* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 4
  br label %43

92:                                               ; preds = %47
  %93 = load %struct.private_data*, %struct.private_data** %8, align 8
  %94 = getelementptr inbounds %struct.private_data, %struct.private_data* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %9, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %92
  br label %153

102:                                              ; preds = %92
  %103 = load i32, i32* %9, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i32 1, i32* %12, align 4
  br label %110

106:                                              ; preds = %102
  %107 = load i32, i32* @HSIZE, align 4
  %108 = load i32, i32* %9, align 4
  %109 = sub nsw i32 %107, %108
  store i32 %109, i32* %12, align 4
  br label %110

110:                                              ; preds = %106, %105
  br label %111

111:                                              ; preds = %151, %110
  %112 = load i32, i32* %12, align 4
  %113 = load i32, i32* %9, align 4
  %114 = sub nsw i32 %113, %112
  store i32 %114, i32* %9, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %111
  %117 = load i32, i32* @HSIZE, align 4
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %120

120:                                              ; preds = %116, %111
  %121 = load %struct.private_data*, %struct.private_data** %8, align 8
  %122 = getelementptr inbounds %struct.private_data, %struct.private_data* %121, i32 0, i32 3
  %123 = load i32*, i32** %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.private_data*, %struct.private_data** %8, align 8
  %129 = getelementptr inbounds %struct.private_data, %struct.private_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = icmp eq i32 %127, %130
  br i1 %131, label %132, label %142

132:                                              ; preds = %120
  %133 = load %struct.private_data*, %struct.private_data** %8, align 8
  %134 = getelementptr inbounds %struct.private_data, %struct.private_data* %133, i32 0, i32 4
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.private_data*, %struct.private_data** %8, align 8
  %141 = getelementptr inbounds %struct.private_data, %struct.private_data* %140, i32 0, i32 1
  store i32 %139, i32* %141, align 4
  br label %43

142:                                              ; preds = %120
  %143 = load %struct.private_data*, %struct.private_data** %8, align 8
  %144 = getelementptr inbounds %struct.private_data, %struct.private_data* %143, i32 0, i32 3
  %145 = load i32*, i32** %144, align 8
  %146 = load i32, i32* %9, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i32, i32* %145, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = icmp sge i32 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %142
  br label %111

152:                                              ; preds = %142
  br label %153

153:                                              ; preds = %152, %101
  %154 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %155 = load %struct.private_data*, %struct.private_data** %8, align 8
  %156 = getelementptr inbounds %struct.private_data, %struct.private_data* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @output_code(%struct.archive_write_filter* %154, i32 %157)
  store i32 %158, i32* %13, align 4
  %159 = load i32, i32* %13, align 4
  %160 = load i32, i32* @ARCHIVE_OK, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %153
  %163 = load i32, i32* %13, align 4
  store i32 %163, i32* %4, align 4
  br label %277

164:                                              ; preds = %153
  %165 = load i32, i32* %11, align 4
  %166 = load %struct.private_data*, %struct.private_data** %8, align 8
  %167 = getelementptr inbounds %struct.private_data, %struct.private_data* %166, i32 0, i32 1
  store i32 %165, i32* %167, align 4
  %168 = load %struct.private_data*, %struct.private_data** %8, align 8
  %169 = getelementptr inbounds %struct.private_data, %struct.private_data* %168, i32 0, i32 5
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.private_data*, %struct.private_data** %8, align 8
  %172 = getelementptr inbounds %struct.private_data, %struct.private_data* %171, i32 0, i32 6
  %173 = load i64, i64* %172, align 8
  %174 = icmp slt i64 %170, %173
  br i1 %174, label %175, label %196

175:                                              ; preds = %164
  %176 = load %struct.private_data*, %struct.private_data** %8, align 8
  %177 = getelementptr inbounds %struct.private_data, %struct.private_data* %176, i32 0, i32 5
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, 1
  store i64 %179, i64* %177, align 8
  %180 = trunc i64 %178 to i32
  %181 = load %struct.private_data*, %struct.private_data** %8, align 8
  %182 = getelementptr inbounds %struct.private_data, %struct.private_data* %181, i32 0, i32 4
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %9, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  store i32 %180, i32* %186, align 4
  %187 = load %struct.private_data*, %struct.private_data** %8, align 8
  %188 = getelementptr inbounds %struct.private_data, %struct.private_data* %187, i32 0, i32 2
  %189 = load i32, i32* %188, align 8
  %190 = load %struct.private_data*, %struct.private_data** %8, align 8
  %191 = getelementptr inbounds %struct.private_data, %struct.private_data* %190, i32 0, i32 3
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  store i32 %189, i32* %195, align 4
  br label %43

196:                                              ; preds = %164
  %197 = load %struct.private_data*, %struct.private_data** %8, align 8
  %198 = getelementptr inbounds %struct.private_data, %struct.private_data* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.private_data*, %struct.private_data** %8, align 8
  %201 = getelementptr inbounds %struct.private_data, %struct.private_data* %200, i32 0, i32 7
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %205

204:                                              ; preds = %196
  br label %43

205:                                              ; preds = %196
  %206 = load %struct.private_data*, %struct.private_data** %8, align 8
  %207 = getelementptr inbounds %struct.private_data, %struct.private_data* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @CHECK_GAP, align 4
  %210 = add nsw i32 %208, %209
  %211 = load %struct.private_data*, %struct.private_data** %8, align 8
  %212 = getelementptr inbounds %struct.private_data, %struct.private_data* %211, i32 0, i32 7
  store i32 %210, i32* %212, align 8
  %213 = load %struct.private_data*, %struct.private_data** %8, align 8
  %214 = getelementptr inbounds %struct.private_data, %struct.private_data* %213, i32 0, i32 0
  %215 = load i32, i32* %214, align 8
  %216 = icmp sle i32 %215, 8388607
  br i1 %216, label %217, label %231

217:                                              ; preds = %205
  %218 = load %struct.private_data*, %struct.private_data** %8, align 8
  %219 = getelementptr inbounds %struct.private_data, %struct.private_data* %218, i32 0, i32 8
  %220 = load i32, i32* %219, align 4
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %222, label %231

222:                                              ; preds = %217
  %223 = load %struct.private_data*, %struct.private_data** %8, align 8
  %224 = getelementptr inbounds %struct.private_data, %struct.private_data* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = mul nsw i32 %225, 256
  %227 = load %struct.private_data*, %struct.private_data** %8, align 8
  %228 = getelementptr inbounds %struct.private_data, %struct.private_data* %227, i32 0, i32 8
  %229 = load i32, i32* %228, align 4
  %230 = sdiv i32 %226, %229
  store i32 %230, i32* %10, align 4
  br label %245

231:                                              ; preds = %217, %205
  %232 = load %struct.private_data*, %struct.private_data** %8, align 8
  %233 = getelementptr inbounds %struct.private_data, %struct.private_data* %232, i32 0, i32 8
  %234 = load i32, i32* %233, align 4
  %235 = sdiv i32 %234, 256
  store i32 %235, i32* %10, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %238

237:                                              ; preds = %231
  store i32 2147483647, i32* %10, align 4
  br label %244

238:                                              ; preds = %231
  %239 = load %struct.private_data*, %struct.private_data** %8, align 8
  %240 = getelementptr inbounds %struct.private_data, %struct.private_data* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* %10, align 4
  %243 = sdiv i32 %241, %242
  store i32 %243, i32* %10, align 4
  br label %244

244:                                              ; preds = %238, %237
  br label %245

245:                                              ; preds = %244, %222
  %246 = load i32, i32* %10, align 4
  %247 = load %struct.private_data*, %struct.private_data** %8, align 8
  %248 = getelementptr inbounds %struct.private_data, %struct.private_data* %247, i32 0, i32 9
  %249 = load i32, i32* %248, align 8
  %250 = icmp sgt i32 %246, %249
  br i1 %250, label %251, label %255

251:                                              ; preds = %245
  %252 = load i32, i32* %10, align 4
  %253 = load %struct.private_data*, %struct.private_data** %8, align 8
  %254 = getelementptr inbounds %struct.private_data, %struct.private_data* %253, i32 0, i32 9
  store i32 %252, i32* %254, align 8
  br label %274

255:                                              ; preds = %245
  %256 = load %struct.private_data*, %struct.private_data** %8, align 8
  %257 = getelementptr inbounds %struct.private_data, %struct.private_data* %256, i32 0, i32 9
  store i32 0, i32* %257, align 8
  %258 = load %struct.private_data*, %struct.private_data** %8, align 8
  %259 = getelementptr inbounds %struct.private_data, %struct.private_data* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = call i32 @memset(i32* %260, i32 255, i32 8)
  %262 = load i64, i64* @FIRST, align 8
  %263 = load %struct.private_data*, %struct.private_data** %8, align 8
  %264 = getelementptr inbounds %struct.private_data, %struct.private_data* %263, i32 0, i32 5
  store i64 %262, i64* %264, align 8
  %265 = load %struct.archive_write_filter*, %struct.archive_write_filter** %5, align 8
  %266 = load i32, i32* @CLEAR, align 4
  %267 = call i32 @output_code(%struct.archive_write_filter* %265, i32 %266)
  store i32 %267, i32* %13, align 4
  %268 = load i32, i32* %13, align 4
  %269 = load i32, i32* @ARCHIVE_OK, align 4
  %270 = icmp ne i32 %268, %269
  br i1 %270, label %271, label %273

271:                                              ; preds = %255
  %272 = load i32, i32* %13, align 4
  store i32 %272, i32* %4, align 4
  br label %277

273:                                              ; preds = %255
  br label %274

274:                                              ; preds = %273, %251
  br label %43

275:                                              ; preds = %43
  %276 = load i32, i32* @ARCHIVE_OK, align 4
  store i32 %276, i32* %4, align 4
  br label %277

277:                                              ; preds = %275, %271, %162, %21
  %278 = load i32, i32* %4, align 4
  ret i32 %278
}

declare dso_local i32 @output_code(%struct.archive_write_filter*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
