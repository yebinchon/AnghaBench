; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print_string.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_valprint.c_val_print_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ui_file = type { i32 }
%struct.cleanup = type { i32 }

@print_max = common dso_local global i32 0, align 4
@null_cleanup = common dso_local global i32 0, align 4
@xfree = common dso_local global i32 0, align 4
@QUIT = common dso_local global i32 0, align 4
@addressprint = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c" <Address \00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c" out of bounds>\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c" <Error reading address \00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c": %s>\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @val_print_string(i32 %0, i32 %1, i32 %2, %struct.ui_file* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ui_file*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca %struct.cleanup*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.ui_file* %3, %struct.ui_file** %8, align 8
  store i32 0, i32* %9, align 4
  store i8* null, i8** %14, align 8
  store %struct.cleanup* null, %struct.cleanup** %17, align 8
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, -1
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @print_max, align 4
  br label %30

26:                                               ; preds = %4
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @print_max, align 4
  %29 = call i32 @min(i32 %27, i32 %28)
  br label %30

30:                                               ; preds = %26, %24
  %31 = phi i32 [ %25, %24 ], [ %29, %26 ]
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp eq i32 %32, -1
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @min(i32 8, i32 %35)
  br label %39

37:                                               ; preds = %30
  %38 = load i32, i32* %11, align 4
  br label %39

39:                                               ; preds = %37, %34
  %40 = phi i32 [ %36, %34 ], [ %38, %37 ]
  store i32 %40, i32* %13, align 4
  store i32 0, i32* %18, align 4
  %41 = load i32, i32* @null_cleanup, align 4
  %42 = call %struct.cleanup* @make_cleanup(i32 %41, i8* null)
  store %struct.cleanup* %42, %struct.cleanup** %17, align 8
  %43 = load i32, i32* %6, align 4
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %74

45:                                               ; preds = %39
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = mul nsw i32 %46, %47
  %49 = call i64 @xmalloc(i32 %48)
  %50 = inttoptr i64 %49 to i8*
  store i8* %50, i8** %14, align 8
  %51 = load i8*, i8** %14, align 8
  store i8* %51, i8** %15, align 8
  %52 = load i32, i32* @xfree, align 4
  %53 = load i8*, i8** %14, align 8
  %54 = call %struct.cleanup* @make_cleanup(i32 %52, i8* %53)
  store %struct.cleanup* %54, %struct.cleanup** %17, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i8*, i8** %15, align 8
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* %7, align 4
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @partial_memory_read(i32 %55, i8* %56, i32 %59, i32* %10)
  %61 = load i32, i32* %7, align 4
  %62 = sdiv i32 %60, %61
  store i32 %62, i32* %12, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %7, align 4
  %65 = mul i32 %63, %64
  %66 = load i32, i32* %5, align 4
  %67 = add i32 %66, %65
  store i32 %67, i32* %5, align 4
  %68 = load i32, i32* %12, align 4
  %69 = load i32, i32* %7, align 4
  %70 = mul i32 %68, %69
  %71 = load i8*, i8** %15, align 8
  %72 = zext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %15, align 8
  br label %180

74:                                               ; preds = %39
  %75 = load i32, i32* %6, align 4
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %77, label %178

77:                                               ; preds = %74
  store i64 0, i64* %19, align 8
  br label %78

78:                                               ; preds = %175, %77
  %79 = load i32, i32* @QUIT, align 4
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %11, align 4
  %82 = zext i32 %81 to i64
  %83 = load i64, i64* %19, align 8
  %84 = sub i64 %82, %83
  %85 = trunc i64 %84 to i32
  %86 = call i32 @min(i32 %80, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i8*, i8** %14, align 8
  %88 = icmp eq i8* %87, null
  br i1 %88, label %89, label %95

89:                                               ; preds = %78
  %90 = load i32, i32* %12, align 4
  %91 = load i32, i32* %7, align 4
  %92 = mul i32 %90, %91
  %93 = call i64 @xmalloc(i32 %92)
  %94 = inttoptr i64 %93 to i8*
  store i8* %94, i8** %14, align 8
  br label %109

95:                                               ; preds = %78
  %96 = load %struct.cleanup*, %struct.cleanup** %17, align 8
  %97 = call i32 @discard_cleanups(%struct.cleanup* %96)
  %98 = load i8*, i8** %14, align 8
  %99 = load i32, i32* %12, align 4
  %100 = zext i32 %99 to i64
  %101 = load i64, i64* %19, align 8
  %102 = add i64 %100, %101
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = mul i64 %102, %104
  %106 = trunc i64 %105 to i32
  %107 = call i64 @xrealloc(i8* %98, i32 %106)
  %108 = inttoptr i64 %107 to i8*
  store i8* %108, i8** %14, align 8
  br label %109

109:                                              ; preds = %95, %89
  %110 = load i32, i32* @xfree, align 4
  %111 = load i8*, i8** %14, align 8
  %112 = call %struct.cleanup* @make_cleanup(i32 %110, i8* %111)
  store %struct.cleanup* %112, %struct.cleanup** %17, align 8
  %113 = load i8*, i8** %14, align 8
  %114 = load i64, i64* %19, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = mul i64 %114, %116
  %118 = getelementptr inbounds i8, i8* %113, i64 %117
  store i8* %118, i8** %15, align 8
  %119 = load i32, i32* %12, align 4
  %120 = zext i32 %119 to i64
  %121 = load i64, i64* %19, align 8
  %122 = add i64 %121, %120
  store i64 %122, i64* %19, align 8
  %123 = load i32, i32* %5, align 4
  %124 = load i8*, i8** %15, align 8
  %125 = load i32, i32* %12, align 4
  %126 = load i32, i32* %7, align 4
  %127 = mul i32 %125, %126
  %128 = call i32 @partial_memory_read(i32 %123, i8* %124, i32 %127, i32* %10)
  %129 = load i32, i32* %7, align 4
  %130 = sdiv i32 %128, %129
  store i32 %130, i32* %12, align 4
  %131 = load i8*, i8** %15, align 8
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %7, align 4
  %134 = mul i32 %132, %133
  %135 = zext i32 %134 to i64
  %136 = getelementptr inbounds i8, i8* %131, i64 %135
  store i8* %136, i8** %16, align 8
  br label %137

137:                                              ; preds = %155, %109
  %138 = load i8*, i8** %15, align 8
  %139 = load i8*, i8** %16, align 8
  %140 = icmp ult i8* %138, %139
  br i1 %140, label %141, label %156

141:                                              ; preds = %137
  %142 = load i8*, i8** %15, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i64 @extract_unsigned_integer(i8* %142, i32 %143)
  store i64 %144, i64* %20, align 8
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* %5, align 4
  %147 = add i32 %146, %145
  store i32 %147, i32* %5, align 4
  %148 = load i32, i32* %7, align 4
  %149 = load i8*, i8** %15, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i8, i8* %149, i64 %150
  store i8* %151, i8** %15, align 8
  %152 = load i64, i64* %20, align 8
  %153 = icmp eq i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %141
  store i32 0, i32* %10, align 4
  store i32 1, i32* %18, align 4
  br label %156

155:                                              ; preds = %141
  br label %137

156:                                              ; preds = %154, %137
  br label %157

157:                                              ; preds = %156
  %158 = load i32, i32* %10, align 4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %175

160:                                              ; preds = %157
  %161 = load i8*, i8** %15, align 8
  %162 = load i8*, i8** %14, align 8
  %163 = ptrtoint i8* %161 to i64
  %164 = ptrtoint i8* %162 to i64
  %165 = sub i64 %163, %164
  %166 = load i32, i32* %11, align 4
  %167 = load i32, i32* %7, align 4
  %168 = mul i32 %166, %167
  %169 = zext i32 %168 to i64
  %170 = icmp slt i64 %165, %169
  br i1 %170, label %171, label %175

171:                                              ; preds = %160
  %172 = load i32, i32* %18, align 4
  %173 = icmp ne i32 %172, 0
  %174 = xor i1 %173, true
  br label %175

175:                                              ; preds = %171, %160, %157
  %176 = phi i1 [ false, %160 ], [ false, %157 ], [ %174, %171 ]
  br i1 %176, label %78, label %177

177:                                              ; preds = %175
  br label %179

178:                                              ; preds = %74
  store i8* null, i8** %15, align 8
  store i8* null, i8** %14, align 8
  store i32 0, i32* %10, align 4
  br label %179

179:                                              ; preds = %178, %177
  br label %180

180:                                              ; preds = %179, %45
  %181 = load i32, i32* %6, align 4
  %182 = icmp eq i32 %181, -1
  br i1 %182, label %183, label %202

183:                                              ; preds = %180
  %184 = load i32, i32* %18, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %202, label %186

186:                                              ; preds = %183
  %187 = load i32, i32* %7, align 4
  %188 = call i64 @alloca(i32 %187)
  %189 = inttoptr i64 %188 to i8*
  store i8* %189, i8** %21, align 8
  %190 = load i32, i32* %5, align 4
  %191 = load i8*, i8** %21, align 8
  %192 = load i32, i32* %7, align 4
  %193 = call i64 @target_read_memory(i32 %190, i8* %191, i32 %192)
  %194 = icmp eq i64 %193, 0
  br i1 %194, label %195, label %201

195:                                              ; preds = %186
  %196 = load i8*, i8** %21, align 8
  %197 = load i32, i32* %7, align 4
  %198 = call i64 @extract_unsigned_integer(i8* %196, i32 %197)
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %201

200:                                              ; preds = %195
  store i32 1, i32* %9, align 4
  br label %201

201:                                              ; preds = %200, %195, %186
  br label %222

202:                                              ; preds = %183, %180
  %203 = load i32, i32* %6, align 4
  %204 = icmp sge i32 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %202
  %206 = load i32, i32* %10, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %220, label %208

208:                                              ; preds = %205, %202
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = load i8*, i8** %15, align 8
  %212 = load i8*, i8** %14, align 8
  %213 = ptrtoint i8* %211 to i64
  %214 = ptrtoint i8* %212 to i64
  %215 = sub i64 %213, %214
  %216 = load i32, i32* %7, align 4
  %217 = sext i32 %216 to i64
  %218 = sdiv i64 %215, %217
  %219 = icmp sgt i64 %210, %218
  br i1 %219, label %220, label %221

220:                                              ; preds = %208, %205
  store i32 1, i32* %9, align 4
  br label %221

221:                                              ; preds = %220, %208
  br label %222

222:                                              ; preds = %221, %201
  %223 = load i32, i32* @QUIT, align 4
  %224 = load i32, i32* %10, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %230, label %226

226:                                              ; preds = %222
  %227 = load i8*, i8** %15, align 8
  %228 = load i8*, i8** %14, align 8
  %229 = icmp ugt i8* %227, %228
  br i1 %229, label %230, label %251

230:                                              ; preds = %226, %222
  %231 = load i64, i64* @addressprint, align 8
  %232 = icmp ne i64 %231, 0
  br i1 %232, label %233, label %236

233:                                              ; preds = %230
  %234 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %235 = call i32 @fputs_filtered(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), %struct.ui_file* %234)
  br label %236

236:                                              ; preds = %233, %230
  %237 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %238 = load i8*, i8** %14, align 8
  %239 = load i8*, i8** %15, align 8
  %240 = load i8*, i8** %14, align 8
  %241 = ptrtoint i8* %239 to i64
  %242 = ptrtoint i8* %240 to i64
  %243 = sub i64 %241, %242
  %244 = load i32, i32* %7, align 4
  %245 = sext i32 %244 to i64
  %246 = sdiv i64 %243, %245
  %247 = trunc i64 %246 to i32
  %248 = load i32, i32* %7, align 4
  %249 = load i32, i32* %9, align 4
  %250 = call i32 @LA_PRINT_STRING(%struct.ui_file* %237, i8* %238, i32 %247, i32 %248, i32 %249)
  br label %251

251:                                              ; preds = %236, %226
  %252 = load i32, i32* %10, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %277

254:                                              ; preds = %251
  %255 = load i32, i32* %10, align 4
  %256 = load i32, i32* @EIO, align 4
  %257 = icmp eq i32 %255, %256
  br i1 %257, label %258, label %266

258:                                              ; preds = %254
  %259 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %260 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %259, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %261 = load i32, i32* %5, align 4
  %262 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %263 = call i32 @print_address_numeric(i32 %261, i32 1, %struct.ui_file* %262)
  %264 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %265 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %264, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  br label %276

266:                                              ; preds = %254
  %267 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %268 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %267, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0))
  %269 = load i32, i32* %5, align 4
  %270 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %271 = call i32 @print_address_numeric(i32 %269, i32 1, %struct.ui_file* %270)
  %272 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %273 = load i32, i32* %10, align 4
  %274 = call i32 @safe_strerror(i32 %273)
  %275 = call i32 (%struct.ui_file*, i8*, ...) @fprintf_filtered(%struct.ui_file* %272, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %274)
  br label %276

276:                                              ; preds = %266, %258
  br label %277

277:                                              ; preds = %276, %251
  %278 = load %struct.ui_file*, %struct.ui_file** %8, align 8
  %279 = call i32 @gdb_flush(%struct.ui_file* %278)
  %280 = load %struct.cleanup*, %struct.cleanup** %17, align 8
  %281 = call i32 @do_cleanups(%struct.cleanup* %280)
  %282 = load i8*, i8** %15, align 8
  %283 = load i8*, i8** %14, align 8
  %284 = ptrtoint i8* %282 to i64
  %285 = ptrtoint i8* %283 to i64
  %286 = sub i64 %284, %285
  %287 = load i32, i32* %7, align 4
  %288 = sext i32 %287 to i64
  %289 = sdiv i64 %286, %288
  %290 = trunc i64 %289 to i32
  ret i32 %290
}

declare dso_local i32 @min(i32, i32) #1

declare dso_local %struct.cleanup* @make_cleanup(i32, i8*) #1

declare dso_local i64 @xmalloc(i32) #1

declare dso_local i32 @partial_memory_read(i32, i8*, i32, i32*) #1

declare dso_local i32 @discard_cleanups(%struct.cleanup*) #1

declare dso_local i64 @xrealloc(i8*, i32) #1

declare dso_local i64 @extract_unsigned_integer(i8*, i32) #1

declare dso_local i64 @alloca(i32) #1

declare dso_local i64 @target_read_memory(i32, i8*, i32) #1

declare dso_local i32 @fputs_filtered(i8*, %struct.ui_file*) #1

declare dso_local i32 @LA_PRINT_STRING(%struct.ui_file*, i8*, i32, i32, i32) #1

declare dso_local i32 @fprintf_filtered(%struct.ui_file*, i8*, ...) #1

declare dso_local i32 @print_address_numeric(i32, i32, %struct.ui_file*) #1

declare dso_local i32 @safe_strerror(i32) #1

declare dso_local i32 @gdb_flush(%struct.ui_file*) #1

declare dso_local i32 @do_cleanups(%struct.cleanup*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
