; ModuleID = '/home/carl/AnghaBench/freebsd/libexec/rtld-elf/arm/extr_reloc.c_reloc_nonplt_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/libexec/rtld-elf/arm/extr_reloc.c_reloc_nonplt_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__*, i64, i32, i32, i32, i64 }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_14__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32 }

@.str = private unnamed_addr constant [83 x i8] c"%s: R_ARM_PC24 relocation @ %p to %s failed (displacement %ld (%#lx) out of range)\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"PC24 %s in %s --> %p @ %p in %s\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"ABS32/GLOB_DAT %s in %s --> %p @ %p in %s\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"RELATIVE in %s --> %p\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"%s: Unexpected R_COPY relocation in shared library\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"COPY (avoid in main)\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"TLS_DTPOFF32 %s in %s --> %p\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"TLS_DTPMOD32 %s in %s --> %p\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"TLS_TPOFF32 %s in %s --> %p\00", align 1
@.str.9 = private unnamed_addr constant [63 x i8] c"sym = %lu, type = %lu, offset = %p, contents = %p, symbol = %s\00", align 1
@.str.10 = private unnamed_addr constant [60 x i8] c"%s: Unsupported relocation type %ld in non-PLT relocations\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_14__*, i32*, i32, i32*)* @reloc_nonplt_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reloc_nonplt_object(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_13__*, align 8
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 7
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %12, align 8
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i64 @ELF_R_SYM(i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ELF_R_TYPE(i32 %32)
  switch i32 %33, label %389 [
    i32 133, label %34
    i32 132, label %35
    i32 136, label %130
    i32 134, label %130
    i32 131, label %197
    i32 135, label %231
    i32 129, label %243
    i32 130, label %287
    i32 128, label %331
  ]

34:                                               ; preds = %5
  br label %423

35:                                               ; preds = %5
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %17, align 4
  %38 = load i32, i32* %17, align 4
  %39 = and i32 %38, 8388608
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* %17, align 4
  %43 = or i32 %42, -16777216
  store i32 %43, i32* %17, align 4
  br label %44

44:                                               ; preds = %41, %35
  %45 = load i64, i64* %16, align 8
  %46 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %47 = load i32, i32* %10, align 4
  %48 = load i32*, i32** %9, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = call %struct.TYPE_13__* @find_symdef(i64 %45, %struct.TYPE_12__* %46, %struct.TYPE_12__** %14, i32 %47, i32* %48, i32* %49)
  store %struct.TYPE_13__* %50, %struct.TYPE_13__** %13, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %52 = icmp eq %struct.TYPE_13__* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44
  store i32 -1, i32* %6, align 4
  br label %424

54:                                               ; preds = %44
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 7
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %58, %61
  %63 = load i32*, i32** %12, align 8
  %64 = ptrtoint i32* %63 to i32
  %65 = sub nsw i32 %62, %64
  %66 = load i32, i32* %17, align 4
  %67 = shl i32 %66, 2
  %68 = add nsw i32 %65, %67
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = and i32 %69, -33554432
  %71 = icmp ne i32 %70, -33554432
  br i1 %71, label %72, label %97

72:                                               ; preds = %54
  %73 = load i32, i32* %15, align 4
  %74 = and i32 %73, -33554432
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %72
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 3
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 2
  %86 = load %struct.TYPE_11__*, %struct.TYPE_11__** %85, align 8
  %87 = load i64, i64* %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %83, %90
  %92 = load i32, i32* %15, align 4
  %93 = sext i32 %92 to i64
  %94 = load i32, i32* %15, align 4
  %95 = sext i32 %94 to i64
  %96 = call i32 (i8*, i32, ...) @_rtld_error(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %79, i32* %80, i64 %91, i64 %93, i64 %95)
  store i32 -1, i32* %6, align 4
  br label %424

97:                                               ; preds = %72, %54
  %98 = load i32, i32* %15, align 4
  %99 = ashr i32 %98, 2
  store i32 %99, i32* %15, align 4
  %100 = load i32*, i32** %12, align 8
  %101 = load i32, i32* %100, align 4
  %102 = and i32 %101, -16777216
  %103 = load i32, i32* %15, align 4
  %104 = and i32 %103, 16777215
  %105 = or i32 %102, %104
  %106 = load i32*, i32** %12, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %111, align 8
  %113 = load i64, i64* %16, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %109, %116
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32*, i32** %12, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = inttoptr i64 %123 to i8*
  %125 = load i32*, i32** %12, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %117, i32 %120, i8* %124, i32* %125, i32 %128)
  br label %423

130:                                              ; preds = %5, %5
  %131 = load i64, i64* %16, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %133 = load i32, i32* %10, align 4
  %134 = load i32*, i32** %9, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call %struct.TYPE_13__* @find_symdef(i64 %131, %struct.TYPE_12__* %132, %struct.TYPE_12__** %14, i32 %133, i32* %134, i32* %135)
  store %struct.TYPE_13__* %136, %struct.TYPE_13__** %13, align 8
  %137 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %138 = icmp eq %struct.TYPE_13__* %137, null
  br i1 %138, label %139, label %140

139:                                              ; preds = %130
  store i32 -1, i32* %6, align 4
  br label %424

140:                                              ; preds = %130
  %141 = load i32*, i32** %12, align 8
  %142 = call i32 @RELOC_ALIGNED_P(i32* %141)
  %143 = call i32 @__predict_true(i32 %142)
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load i32*, i32** %12, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 7
  %150 = load i64, i64* %149, align 8
  %151 = trunc i64 %150 to i32
  %152 = add nsw i32 %147, %151
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %152, %155
  store i32 %156, i32* %15, align 4
  %157 = load i32, i32* %15, align 4
  %158 = load i32*, i32** %12, align 8
  store i32 %157, i32* %158, align 4
  br label %174

159:                                              ; preds = %140
  %160 = load i32*, i32** %12, align 8
  %161 = call i32 @load_ptr(i32* %160)
  %162 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %162, i32 0, i32 7
  %164 = load i64, i64* %163, align 8
  %165 = trunc i64 %164 to i32
  %166 = add nsw i32 %161, %165
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = add nsw i32 %166, %169
  store i32 %170, i32* %15, align 4
  %171 = load i32*, i32** %12, align 8
  %172 = load i32, i32* %15, align 4
  %173 = call i32 @store_ptr(i32* %171, i32 %172)
  br label %174

174:                                              ; preds = %159, %145
  %175 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 3
  %177 = load i64, i64* %176, align 8
  %178 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %179 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %178, i32 0, i32 2
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %179, align 8
  %181 = load i64, i64* %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i64 %181
  %183 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %177, %184
  %186 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* %15, align 4
  %190 = sext i32 %189 to i64
  %191 = inttoptr i64 %190 to i8*
  %192 = load i32*, i32** %12, align 8
  %193 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %194 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 4
  %196 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i64 %185, i32 %188, i8* %191, i32* %192, i32 %195)
  br label %423

197:                                              ; preds = %5
  %198 = load i32*, i32** %12, align 8
  %199 = call i32 @RELOC_ALIGNED_P(i32* %198)
  %200 = call i32 @__predict_true(i32 %199)
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %212

202:                                              ; preds = %197
  %203 = load i32*, i32** %12, align 8
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %205, i32 0, i32 7
  %207 = load i64, i64* %206, align 8
  %208 = trunc i64 %207 to i32
  %209 = add nsw i32 %204, %208
  store i32 %209, i32* %15, align 4
  %210 = load i32, i32* %15, align 4
  %211 = load i32*, i32** %12, align 8
  store i32 %210, i32* %211, align 4
  br label %223

212:                                              ; preds = %197
  %213 = load i32*, i32** %12, align 8
  %214 = call i32 @load_ptr(i32* %213)
  %215 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %216 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %215, i32 0, i32 7
  %217 = load i64, i64* %216, align 8
  %218 = trunc i64 %217 to i32
  %219 = add nsw i32 %214, %218
  store i32 %219, i32* %15, align 4
  %220 = load i32*, i32** %12, align 8
  %221 = load i32, i32* %15, align 4
  %222 = call i32 @store_ptr(i32* %220, i32 %221)
  br label %223

223:                                              ; preds = %212, %202
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 1
  %226 = load i32, i32* %225, align 4
  %227 = load i32, i32* %15, align 4
  %228 = sext i32 %227 to i64
  %229 = inttoptr i64 %228 to i8*
  %230 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i32 %226, i8* %229)
  br label %423

231:                                              ; preds = %5
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 6
  %234 = load i32, i32* %233, align 8
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %241, label %236

236:                                              ; preds = %231
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %238 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = call i32 (i8*, i32, ...) @_rtld_error(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i64 0, i64 0), i32 %239)
  store i32 -1, i32* %6, align 4
  br label %424

241:                                              ; preds = %231
  %242 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %423

243:                                              ; preds = %5
  %244 = load i64, i64* %16, align 8
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %246 = load i32, i32* %10, align 4
  %247 = load i32*, i32** %9, align 8
  %248 = load i32*, i32** %11, align 8
  %249 = call %struct.TYPE_13__* @find_symdef(i64 %244, %struct.TYPE_12__* %245, %struct.TYPE_12__** %14, i32 %246, i32* %247, i32* %248)
  store %struct.TYPE_13__* %249, %struct.TYPE_13__** %13, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %251 = icmp eq %struct.TYPE_13__* %250, null
  br i1 %251, label %252, label %253

252:                                              ; preds = %243
  store i32 -1, i32* %6, align 4
  br label %424

253:                                              ; preds = %243
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  store i32 %256, i32* %15, align 4
  %257 = load i32*, i32** %12, align 8
  %258 = call i32 @RELOC_ALIGNED_P(i32* %257)
  %259 = call i32 @__predict_true(i32 %258)
  %260 = icmp ne i32 %259, 0
  br i1 %260, label %261, label %264

261:                                              ; preds = %253
  %262 = load i32, i32* %15, align 4
  %263 = load i32*, i32** %12, align 8
  store i32 %262, i32* %263, align 4
  br label %268

264:                                              ; preds = %253
  %265 = load i32*, i32** %12, align 8
  %266 = load i32, i32* %15, align 4
  %267 = call i32 @store_ptr(i32* %265, i32 %266)
  br label %268

268:                                              ; preds = %264, %261
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %269, i32 0, i32 3
  %271 = load i64, i64* %270, align 8
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 2
  %274 = load %struct.TYPE_11__*, %struct.TYPE_11__** %273, align 8
  %275 = load i64, i64* %16, align 8
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %274, i64 %275
  %277 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %276, i32 0, i32 0
  %278 = load i64, i64* %277, align 8
  %279 = add nsw i64 %271, %278
  %280 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %281 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* %15, align 4
  %284 = sext i32 %283 to i64
  %285 = inttoptr i64 %284 to i8*
  %286 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %279, i32 %282, i8* %285)
  br label %423

287:                                              ; preds = %5
  %288 = load i64, i64* %16, align 8
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %290 = load i32, i32* %10, align 4
  %291 = load i32*, i32** %9, align 8
  %292 = load i32*, i32** %11, align 8
  %293 = call %struct.TYPE_13__* @find_symdef(i64 %288, %struct.TYPE_12__* %289, %struct.TYPE_12__** %14, i32 %290, i32* %291, i32* %292)
  store %struct.TYPE_13__* %293, %struct.TYPE_13__** %13, align 8
  %294 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %295 = icmp eq %struct.TYPE_13__* %294, null
  br i1 %295, label %296, label %297

296:                                              ; preds = %287
  store i32 -1, i32* %6, align 4
  br label %424

297:                                              ; preds = %287
  %298 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %299 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %298, i32 0, i32 5
  %300 = load i32, i32* %299, align 4
  store i32 %300, i32* %15, align 4
  %301 = load i32*, i32** %12, align 8
  %302 = call i32 @RELOC_ALIGNED_P(i32* %301)
  %303 = call i32 @__predict_true(i32 %302)
  %304 = icmp ne i32 %303, 0
  br i1 %304, label %305, label %308

305:                                              ; preds = %297
  %306 = load i32, i32* %15, align 4
  %307 = load i32*, i32** %12, align 8
  store i32 %306, i32* %307, align 4
  br label %312

308:                                              ; preds = %297
  %309 = load i32*, i32** %12, align 8
  %310 = load i32, i32* %15, align 4
  %311 = call i32 @store_ptr(i32* %309, i32 %310)
  br label %312

312:                                              ; preds = %308, %305
  %313 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 3
  %315 = load i64, i64* %314, align 8
  %316 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %317 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %316, i32 0, i32 2
  %318 = load %struct.TYPE_11__*, %struct.TYPE_11__** %317, align 8
  %319 = load i64, i64* %16, align 8
  %320 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %318, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %320, i32 0, i32 0
  %322 = load i64, i64* %321, align 8
  %323 = add nsw i64 %315, %322
  %324 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %325 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = load i32, i32* %15, align 4
  %328 = sext i32 %327 to i64
  %329 = inttoptr i64 %328 to i8*
  %330 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i64 0, i64 0), i64 %323, i32 %326, i8* %329)
  br label %423

331:                                              ; preds = %5
  %332 = load i64, i64* %16, align 8
  %333 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %334 = load i32, i32* %10, align 4
  %335 = load i32*, i32** %9, align 8
  %336 = load i32*, i32** %11, align 8
  %337 = call %struct.TYPE_13__* @find_symdef(i64 %332, %struct.TYPE_12__* %333, %struct.TYPE_12__** %14, i32 %334, i32* %335, i32* %336)
  store %struct.TYPE_13__* %337, %struct.TYPE_13__** %13, align 8
  %338 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %339 = icmp eq %struct.TYPE_13__* %338, null
  br i1 %339, label %340, label %341

340:                                              ; preds = %331
  store i32 -1, i32* %6, align 4
  br label %424

341:                                              ; preds = %331
  %342 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 4
  %344 = load i32, i32* %343, align 8
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %351, label %346

346:                                              ; preds = %341
  %347 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %348 = call i32 @allocate_tls_offset(%struct.TYPE_12__* %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %346
  store i32 -1, i32* %6, align 4
  br label %424

351:                                              ; preds = %346, %341
  %352 = load %struct.TYPE_13__*, %struct.TYPE_13__** %13, align 8
  %353 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %352, i32 0, i32 0
  %354 = load i32, i32* %353, align 4
  %355 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %356 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = add nsw i32 %354, %357
  store i32 %358, i32* %15, align 4
  %359 = load i32*, i32** %12, align 8
  %360 = call i32 @RELOC_ALIGNED_P(i32* %359)
  %361 = call i32 @__predict_true(i32 %360)
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %366

363:                                              ; preds = %351
  %364 = load i32, i32* %15, align 4
  %365 = load i32*, i32** %12, align 8
  store i32 %364, i32* %365, align 4
  br label %370

366:                                              ; preds = %351
  %367 = load i32*, i32** %12, align 8
  %368 = load i32, i32* %15, align 4
  %369 = call i32 @store_ptr(i32* %367, i32 %368)
  br label %370

370:                                              ; preds = %366, %363
  %371 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %372 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 2
  %376 = load %struct.TYPE_11__*, %struct.TYPE_11__** %375, align 8
  %377 = load i64, i64* %16, align 8
  %378 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %376, i64 %377
  %379 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %378, i32 0, i32 0
  %380 = load i64, i64* %379, align 8
  %381 = add nsw i64 %373, %380
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 1
  %384 = load i32, i32* %383, align 4
  %385 = load i32, i32* %15, align 4
  %386 = sext i32 %385 to i64
  %387 = inttoptr i64 %386 to i8*
  %388 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %381, i32 %384, i8* %387)
  br label %423

389:                                              ; preds = %5
  %390 = load i64, i64* %16, align 8
  %391 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %392 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %391, i32 0, i32 0
  %393 = load i32, i32* %392, align 8
  %394 = call i32 @ELF_R_TYPE(i32 %393)
  %395 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %395, i32 0, i32 1
  %397 = load i64, i64* %396, align 8
  %398 = inttoptr i64 %397 to i8*
  %399 = load i32*, i32** %12, align 8
  %400 = call i32 @load_ptr(i32* %399)
  %401 = sext i32 %400 to i64
  %402 = inttoptr i64 %401 to i8*
  %403 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %404 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %403, i32 0, i32 3
  %405 = load i64, i64* %404, align 8
  %406 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 2
  %408 = load %struct.TYPE_11__*, %struct.TYPE_11__** %407, align 8
  %409 = load i64, i64* %16, align 8
  %410 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %408, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %410, i32 0, i32 0
  %412 = load i64, i64* %411, align 8
  %413 = add nsw i64 %405, %412
  %414 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.9, i64 0, i64 0), i64 %390, i32 %394, i8* %398, i8* %402, i64 %413)
  %415 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %416 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %415, i32 0, i32 1
  %417 = load i32, i32* %416, align 4
  %418 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %419 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %418, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i32 @ELF_R_TYPE(i32 %420)
  %422 = call i32 (i8*, i32, ...) @_rtld_error(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.10, i64 0, i64 0), i32 %417, i32 %421)
  store i32 -1, i32* %6, align 4
  br label %424

423:                                              ; preds = %370, %312, %268, %241, %223, %174, %97, %34
  store i32 0, i32* %6, align 4
  br label %424

424:                                              ; preds = %423, %389, %350, %340, %296, %252, %236, %139, %76, %53
  %425 = load i32, i32* %6, align 4
  ret i32 %425
}

declare dso_local i64 @ELF_R_SYM(i32) #1

declare dso_local i32 @ELF_R_TYPE(i32) #1

declare dso_local %struct.TYPE_13__* @find_symdef(i64, %struct.TYPE_12__*, %struct.TYPE_12__**, i32, i32*, i32*) #1

declare dso_local i32 @_rtld_error(i8*, i32, ...) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @__predict_true(i32) #1

declare dso_local i32 @RELOC_ALIGNED_P(i32*) #1

declare dso_local i32 @load_ptr(i32*) #1

declare dso_local i32 @store_ptr(i32*, i32) #1

declare dso_local i32 @allocate_tls_offset(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
