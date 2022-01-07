; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c__int_malloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c__int_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_33__ = type { i32*, %struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__**, i64 }
%struct.TYPE_34__ = type { %struct.TYPE_34__*, %struct.TYPE_34__*, i64 }

@MINSIZE = common dso_local global i64 0, align 8
@PREV_INUSE = common dso_local global i64 0, align 8
@FIRST_SORTED_BIN_SIZE = common dso_local global i64 0, align 8
@BINMAPSIZE = common dso_local global i32 0, align 4
@BINMAPSHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_33__*, i64)* @_int_malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_int_malloc(%struct.TYPE_33__* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_33__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_34__*, align 8
  %9 = alloca %struct.TYPE_34__**, align 8
  %10 = alloca %struct.TYPE_34__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_34__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_34__*, align 8
  %19 = alloca %struct.TYPE_34__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %4, align 8
  store i64 %1, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @checked_request2size(i64 %20, i64 %21)
  %23 = load i64, i64* %6, align 8
  %24 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %24, i32 0, i32 4
  %26 = load i64, i64* %25, align 8
  %27 = icmp ule i64 %23, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %2
  %29 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %29, i32 0, i32 3
  %31 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = call i64 @fastbin_index(i64 %32)
  %34 = getelementptr inbounds %struct.TYPE_34__*, %struct.TYPE_34__** %31, i64 %33
  store %struct.TYPE_34__** %34, %struct.TYPE_34__*** %9, align 8
  %35 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %9, align 8
  %36 = load %struct.TYPE_34__*, %struct.TYPE_34__** %35, align 8
  store %struct.TYPE_34__* %36, %struct.TYPE_34__** %10, align 8
  %37 = icmp ne %struct.TYPE_34__* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %28
  %39 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_34__*, %struct.TYPE_34__** %40, align 8
  %42 = load %struct.TYPE_34__**, %struct.TYPE_34__*** %9, align 8
  store %struct.TYPE_34__* %41, %struct.TYPE_34__** %42, align 8
  %43 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %44 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @check_remalloced_chunk(%struct.TYPE_33__* %43, %struct.TYPE_34__* %44, i64 %45)
  %47 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %48 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %49 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %47, %struct.TYPE_33__* %48)
  %50 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %51 = call i32* @chunk2mem(%struct.TYPE_34__* %50)
  store i32* %51, i32** %3, align 8
  br label %608

52:                                               ; preds = %28
  br label %53

53:                                               ; preds = %52, %2
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @in_smallbin_range(i64 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %98

57:                                               ; preds = %53
  %58 = load i64, i64* %6, align 8
  %59 = call i8* @smallbin_index(i64 %58)
  %60 = ptrtoint i8* %59 to i32
  store i32 %60, i32* %7, align 4
  %61 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call %struct.TYPE_34__* @bin_at(%struct.TYPE_33__* %61, i32 %62)
  store %struct.TYPE_34__* %63, %struct.TYPE_34__** %8, align 8
  %64 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %65 = call %struct.TYPE_34__* @last(%struct.TYPE_34__* %64)
  store %struct.TYPE_34__* %65, %struct.TYPE_34__** %10, align 8
  %66 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %67 = icmp ne %struct.TYPE_34__* %65, %66
  br i1 %67, label %68, label %97

68:                                               ; preds = %57
  %69 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %70 = icmp eq %struct.TYPE_34__* %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %73 = call i32 @malloc_consolidate(%struct.TYPE_33__* %72)
  br label %96

74:                                               ; preds = %68
  %75 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %76 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_34__*, %struct.TYPE_34__** %76, align 8
  store %struct.TYPE_34__* %77, %struct.TYPE_34__** %19, align 8
  %78 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i32 @set_inuse_bit_at_offset(%struct.TYPE_34__* %78, i64 %79)
  %81 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %82, i32 0, i32 1
  store %struct.TYPE_34__* %81, %struct.TYPE_34__** %83, align 8
  %84 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %85 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %86 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %85, i32 0, i32 0
  store %struct.TYPE_34__* %84, %struct.TYPE_34__** %86, align 8
  %87 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %88 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %89 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %87, %struct.TYPE_33__* %88)
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %91 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %92 = load i64, i64* %6, align 8
  %93 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %90, %struct.TYPE_34__* %91, i64 %92)
  %94 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %95 = call i32* @chunk2mem(%struct.TYPE_34__* %94)
  store i32* %95, i32** %3, align 8
  br label %608

96:                                               ; preds = %71
  br label %97

97:                                               ; preds = %96, %57
  br label %109

98:                                               ; preds = %53
  %99 = load i64, i64* %6, align 8
  %100 = call i8* @largebin_index(i64 %99)
  %101 = ptrtoint i8* %100 to i32
  store i32 %101, i32* %7, align 4
  %102 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %103 = call i64 @have_fastchunks(%struct.TYPE_33__* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %98
  %106 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %107 = call i32 @malloc_consolidate(%struct.TYPE_33__* %106)
  br label %108

108:                                              ; preds = %105, %98
  br label %109

109:                                              ; preds = %108, %97
  br label %110

110:                                              ; preds = %607, %109
  br label %111

111:                                              ; preds = %280, %110
  %112 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %113 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %112)
  %114 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_34__*, %struct.TYPE_34__** %114, align 8
  store %struct.TYPE_34__* %115, %struct.TYPE_34__** %10, align 8
  %116 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %117 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %116)
  %118 = icmp ne %struct.TYPE_34__* %115, %117
  br i1 %118, label %119, label %296

119:                                              ; preds = %111
  %120 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %120, i32 0, i32 1
  %122 = load %struct.TYPE_34__*, %struct.TYPE_34__** %121, align 8
  store %struct.TYPE_34__* %122, %struct.TYPE_34__** %19, align 8
  %123 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %124 = call i64 @chunksize(%struct.TYPE_34__* %123)
  store i64 %124, i64* %11, align 8
  %125 = load i64, i64* %6, align 8
  %126 = call i32 @in_smallbin_range(i64 %125)
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %190

128:                                              ; preds = %119
  %129 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %130 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %131 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %130)
  %132 = icmp eq %struct.TYPE_34__* %129, %131
  br i1 %132, label %133, label %190

133:                                              ; preds = %128
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %135 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %135, i32 0, i32 2
  %137 = load %struct.TYPE_34__*, %struct.TYPE_34__** %136, align 8
  %138 = icmp eq %struct.TYPE_34__* %134, %137
  br i1 %138, label %139, label %190

139:                                              ; preds = %133
  %140 = load i64, i64* %11, align 8
  %141 = load i64, i64* %6, align 8
  %142 = load i64, i64* @MINSIZE, align 8
  %143 = add i64 %141, %142
  %144 = icmp ugt i64 %140, %143
  br i1 %144, label %145, label %190

145:                                              ; preds = %139
  %146 = load i64, i64* %11, align 8
  %147 = load i64, i64* %6, align 8
  %148 = sub i64 %146, %147
  store i64 %148, i64* %14, align 8
  %149 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %150 = load i64, i64* %6, align 8
  %151 = call %struct.TYPE_34__* @chunk_at_offset(%struct.TYPE_34__* %149, i64 %150)
  store %struct.TYPE_34__* %151, %struct.TYPE_34__** %13, align 8
  %152 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %153 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %154 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %153)
  %155 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %154, i32 0, i32 0
  store %struct.TYPE_34__* %152, %struct.TYPE_34__** %155, align 8
  %156 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %157 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %156)
  %158 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %157, i32 0, i32 1
  store %struct.TYPE_34__* %152, %struct.TYPE_34__** %158, align 8
  %159 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %160 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %160, i32 0, i32 2
  store %struct.TYPE_34__* %159, %struct.TYPE_34__** %161, align 8
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %163 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %162)
  %164 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %165 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %164, i32 0, i32 0
  store %struct.TYPE_34__* %163, %struct.TYPE_34__** %165, align 8
  %166 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %167 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %166, i32 0, i32 1
  store %struct.TYPE_34__* %163, %struct.TYPE_34__** %167, align 8
  %168 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %169 = load i64, i64* %6, align 8
  %170 = load i64, i64* @PREV_INUSE, align 8
  %171 = or i64 %169, %170
  %172 = call i32 @set_head(%struct.TYPE_34__* %168, i64 %171)
  %173 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* @PREV_INUSE, align 8
  %176 = or i64 %174, %175
  %177 = call i32 @set_head(%struct.TYPE_34__* %173, i64 %176)
  %178 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %179 = load i64, i64* %14, align 8
  %180 = call i32 @set_foot(%struct.TYPE_34__* %178, i64 %179)
  %181 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %182 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %183 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %181, %struct.TYPE_33__* %182)
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %185 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %186 = load i64, i64* %6, align 8
  %187 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %184, %struct.TYPE_34__* %185, i64 %186)
  %188 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %189 = call i32* @chunk2mem(%struct.TYPE_34__* %188)
  store i32* %189, i32** %3, align 8
  br label %608

190:                                              ; preds = %139, %133, %128, %119
  %191 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %192 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %193 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %192)
  %194 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %193, i32 0, i32 1
  store %struct.TYPE_34__* %191, %struct.TYPE_34__** %194, align 8
  %195 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %196 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %195)
  %197 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %198 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %197, i32 0, i32 0
  store %struct.TYPE_34__* %196, %struct.TYPE_34__** %198, align 8
  %199 = load i64, i64* %11, align 8
  %200 = load i64, i64* %6, align 8
  %201 = icmp eq i64 %199, %200
  br i1 %201, label %202, label %215

202:                                              ; preds = %190
  %203 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %204 = load i64, i64* %11, align 8
  %205 = call i32 @set_inuse_bit_at_offset(%struct.TYPE_34__* %203, i64 %204)
  %206 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %207 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %208 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %206, %struct.TYPE_33__* %207)
  %209 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %210 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %211 = load i64, i64* %6, align 8
  %212 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %209, %struct.TYPE_34__* %210, i64 %211)
  %213 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %214 = call i32* @chunk2mem(%struct.TYPE_34__* %213)
  store i32* %214, i32** %3, align 8
  br label %608

215:                                              ; preds = %190
  %216 = load i64, i64* %11, align 8
  %217 = call i32 @in_smallbin_range(i64 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %219, label %229

219:                                              ; preds = %215
  %220 = load i64, i64* %11, align 8
  %221 = call i8* @smallbin_index(i64 %220)
  %222 = ptrtoint i8* %221 to i32
  store i32 %222, i32* %12, align 4
  %223 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %224 = load i32, i32* %12, align 4
  %225 = call %struct.TYPE_34__* @bin_at(%struct.TYPE_33__* %223, i32 %224)
  store %struct.TYPE_34__* %225, %struct.TYPE_34__** %19, align 8
  %226 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %227 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %226, i32 0, i32 0
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %227, align 8
  store %struct.TYPE_34__* %228, %struct.TYPE_34__** %18, align 8
  br label %280

229:                                              ; preds = %215
  %230 = load i64, i64* %11, align 8
  %231 = call i8* @largebin_index(i64 %230)
  %232 = ptrtoint i8* %231 to i32
  store i32 %232, i32* %12, align 4
  %233 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %234 = load i32, i32* %12, align 4
  %235 = call %struct.TYPE_34__* @bin_at(%struct.TYPE_33__* %233, i32 %234)
  store %struct.TYPE_34__* %235, %struct.TYPE_34__** %19, align 8
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %237 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %236, i32 0, i32 0
  %238 = load %struct.TYPE_34__*, %struct.TYPE_34__** %237, align 8
  store %struct.TYPE_34__* %238, %struct.TYPE_34__** %18, align 8
  %239 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %240 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %241 = icmp ne %struct.TYPE_34__* %239, %240
  br i1 %241, label %242, label %279

242:                                              ; preds = %229
  %243 = load i64, i64* %11, align 8
  %244 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %245 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %244, i32 0, i32 1
  %246 = load %struct.TYPE_34__*, %struct.TYPE_34__** %245, align 8
  %247 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %246, i32 0, i32 2
  %248 = load i64, i64* %247, align 8
  %249 = icmp ult i64 %243, %248
  br i1 %249, label %250, label %255

250:                                              ; preds = %242
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  store %struct.TYPE_34__* %251, %struct.TYPE_34__** %18, align 8
  %252 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %253 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %252, i32 0, i32 1
  %254 = load %struct.TYPE_34__*, %struct.TYPE_34__** %253, align 8
  store %struct.TYPE_34__* %254, %struct.TYPE_34__** %19, align 8
  br label %278

255:                                              ; preds = %242
  %256 = load i64, i64* %11, align 8
  %257 = load i64, i64* @FIRST_SORTED_BIN_SIZE, align 8
  %258 = icmp uge i64 %256, %257
  br i1 %258, label %259, label %277

259:                                              ; preds = %255
  %260 = load i64, i64* @PREV_INUSE, align 8
  %261 = load i64, i64* %11, align 8
  %262 = or i64 %261, %260
  store i64 %262, i64* %11, align 8
  br label %263

263:                                              ; preds = %269, %259
  %264 = load i64, i64* %11, align 8
  %265 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %266 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = icmp ult i64 %264, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %271 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %270, i32 0, i32 0
  %272 = load %struct.TYPE_34__*, %struct.TYPE_34__** %271, align 8
  store %struct.TYPE_34__* %272, %struct.TYPE_34__** %18, align 8
  br label %263

273:                                              ; preds = %263
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %275 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %274, i32 0, i32 1
  %276 = load %struct.TYPE_34__*, %struct.TYPE_34__** %275, align 8
  store %struct.TYPE_34__* %276, %struct.TYPE_34__** %19, align 8
  br label %277

277:                                              ; preds = %273, %255
  br label %278

278:                                              ; preds = %277, %250
  br label %279

279:                                              ; preds = %278, %229
  br label %280

280:                                              ; preds = %279, %219
  %281 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %282 = load i32, i32* %12, align 4
  %283 = call i32 @mark_bin(%struct.TYPE_33__* %281, i32 %282)
  %284 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %285 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %286 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %285, i32 0, i32 1
  store %struct.TYPE_34__* %284, %struct.TYPE_34__** %286, align 8
  %287 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %288 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %289 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %288, i32 0, i32 0
  store %struct.TYPE_34__* %287, %struct.TYPE_34__** %289, align 8
  %290 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %291 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %292 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %291, i32 0, i32 1
  store %struct.TYPE_34__* %290, %struct.TYPE_34__** %292, align 8
  %293 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %294 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %295 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %294, i32 0, i32 0
  store %struct.TYPE_34__* %293, %struct.TYPE_34__** %295, align 8
  br label %111

296:                                              ; preds = %111
  %297 = load i64, i64* %6, align 8
  %298 = call i32 @in_smallbin_range(i64 %297)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %385, label %300

300:                                              ; preds = %296
  %301 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %302 = load i32, i32* %7, align 4
  %303 = call %struct.TYPE_34__* @bin_at(%struct.TYPE_33__* %301, i32 %302)
  store %struct.TYPE_34__* %303, %struct.TYPE_34__** %8, align 8
  %304 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %305 = call %struct.TYPE_34__* @last(%struct.TYPE_34__* %304)
  store %struct.TYPE_34__* %305, %struct.TYPE_34__** %10, align 8
  br label %306

306:                                              ; preds = %380, %300
  %307 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %308 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %309 = icmp ne %struct.TYPE_34__* %307, %308
  br i1 %309, label %310, label %384

310:                                              ; preds = %306
  %311 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %312 = call i64 @chunksize(%struct.TYPE_34__* %311)
  store i64 %312, i64* %11, align 8
  %313 = load i64, i64* %11, align 8
  %314 = load i64, i64* %6, align 8
  %315 = icmp uge i64 %313, %314
  br i1 %315, label %316, label %379

316:                                              ; preds = %310
  %317 = load i64, i64* %11, align 8
  %318 = load i64, i64* %6, align 8
  %319 = sub i64 %317, %318
  store i64 %319, i64* %14, align 8
  %320 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %321 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %322 = load %struct.TYPE_34__*, %struct.TYPE_34__** %18, align 8
  %323 = call i32 @unlink(%struct.TYPE_34__* %320, %struct.TYPE_34__* %321, %struct.TYPE_34__* %322)
  %324 = load i64, i64* %14, align 8
  %325 = load i64, i64* @MINSIZE, align 8
  %326 = icmp ult i64 %324, %325
  br i1 %326, label %327, label %340

327:                                              ; preds = %316
  %328 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %329 = load i64, i64* %11, align 8
  %330 = call i32 @set_inuse_bit_at_offset(%struct.TYPE_34__* %328, i64 %329)
  %331 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %332 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %333 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %331, %struct.TYPE_33__* %332)
  %334 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %335 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %336 = load i64, i64* %6, align 8
  %337 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %334, %struct.TYPE_34__* %335, i64 %336)
  %338 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %339 = call i32* @chunk2mem(%struct.TYPE_34__* %338)
  store i32* %339, i32** %3, align 8
  br label %608

340:                                              ; preds = %316
  %341 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %342 = load i64, i64* %6, align 8
  %343 = call %struct.TYPE_34__* @chunk_at_offset(%struct.TYPE_34__* %341, i64 %342)
  store %struct.TYPE_34__* %343, %struct.TYPE_34__** %13, align 8
  %344 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %345 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %346 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %345)
  %347 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %346, i32 0, i32 0
  store %struct.TYPE_34__* %344, %struct.TYPE_34__** %347, align 8
  %348 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %349 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %348)
  %350 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %349, i32 0, i32 1
  store %struct.TYPE_34__* %344, %struct.TYPE_34__** %350, align 8
  %351 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %352 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %351)
  %353 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %354 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %353, i32 0, i32 0
  store %struct.TYPE_34__* %352, %struct.TYPE_34__** %354, align 8
  %355 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %356 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %355, i32 0, i32 1
  store %struct.TYPE_34__* %352, %struct.TYPE_34__** %356, align 8
  %357 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %358 = load i64, i64* %6, align 8
  %359 = load i64, i64* @PREV_INUSE, align 8
  %360 = or i64 %358, %359
  %361 = call i32 @set_head(%struct.TYPE_34__* %357, i64 %360)
  %362 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %363 = load i64, i64* %14, align 8
  %364 = load i64, i64* @PREV_INUSE, align 8
  %365 = or i64 %363, %364
  %366 = call i32 @set_head(%struct.TYPE_34__* %362, i64 %365)
  %367 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %368 = load i64, i64* %14, align 8
  %369 = call i32 @set_foot(%struct.TYPE_34__* %367, i64 %368)
  %370 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %371 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %372 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %370, %struct.TYPE_33__* %371)
  %373 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %374 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %375 = load i64, i64* %6, align 8
  %376 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %373, %struct.TYPE_34__* %374, i64 %375)
  %377 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %378 = call i32* @chunk2mem(%struct.TYPE_34__* %377)
  store i32* %378, i32** %3, align 8
  br label %608

379:                                              ; preds = %310
  br label %380

380:                                              ; preds = %379
  %381 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %382 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %381, i32 0, i32 1
  %383 = load %struct.TYPE_34__*, %struct.TYPE_34__** %382, align 8
  store %struct.TYPE_34__* %383, %struct.TYPE_34__** %10, align 8
  br label %306

384:                                              ; preds = %306
  br label %385

385:                                              ; preds = %384, %296
  %386 = load i32, i32* %7, align 4
  %387 = add i32 %386, 1
  store i32 %387, i32* %7, align 4
  %388 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %389 = load i32, i32* %7, align 4
  %390 = call %struct.TYPE_34__* @bin_at(%struct.TYPE_33__* %388, i32 %389)
  store %struct.TYPE_34__* %390, %struct.TYPE_34__** %8, align 8
  %391 = load i32, i32* %7, align 4
  %392 = call i32 @idx2block(i32 %391)
  store i32 %392, i32* %15, align 4
  %393 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %394 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %393, i32 0, i32 0
  %395 = load i32*, i32** %394, align 8
  %396 = load i32, i32* %15, align 4
  %397 = zext i32 %396 to i64
  %398 = getelementptr inbounds i32, i32* %395, i64 %397
  %399 = load i32, i32* %398, align 4
  store i32 %399, i32* %17, align 4
  %400 = load i32, i32* %7, align 4
  %401 = call i32 @idx2bit(i32 %400)
  store i32 %401, i32* %16, align 4
  br label %402

402:                                              ; preds = %551, %385
  %403 = load i32, i32* %16, align 4
  %404 = load i32, i32* %17, align 4
  %405 = icmp ugt i32 %403, %404
  br i1 %405, label %409, label %406

406:                                              ; preds = %402
  %407 = load i32, i32* %16, align 4
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %432

409:                                              ; preds = %406, %402
  br label %410

410:                                              ; preds = %417, %409
  %411 = load i32, i32* %15, align 4
  %412 = add i32 %411, 1
  store i32 %412, i32* %15, align 4
  %413 = load i32, i32* @BINMAPSIZE, align 4
  %414 = icmp uge i32 %412, %413
  br i1 %414, label %415, label %416

415:                                              ; preds = %410
  br label %552

416:                                              ; preds = %410
  br label %417

417:                                              ; preds = %416
  %418 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %419 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %418, i32 0, i32 0
  %420 = load i32*, i32** %419, align 8
  %421 = load i32, i32* %15, align 4
  %422 = zext i32 %421 to i64
  %423 = getelementptr inbounds i32, i32* %420, i64 %422
  %424 = load i32, i32* %423, align 4
  store i32 %424, i32* %17, align 4
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %410, label %426

426:                                              ; preds = %417
  %427 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %428 = load i32, i32* %15, align 4
  %429 = load i32, i32* @BINMAPSHIFT, align 4
  %430 = shl i32 %428, %429
  %431 = call %struct.TYPE_34__* @bin_at(%struct.TYPE_33__* %427, i32 %430)
  store %struct.TYPE_34__* %431, %struct.TYPE_34__** %8, align 8
  store i32 1, i32* %16, align 4
  br label %432

432:                                              ; preds = %426, %406
  br label %433

433:                                              ; preds = %438, %432
  %434 = load i32, i32* %16, align 4
  %435 = load i32, i32* %17, align 4
  %436 = and i32 %434, %435
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %447

438:                                              ; preds = %433
  %439 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %440 = call %struct.TYPE_34__* @next_bin(%struct.TYPE_34__* %439)
  store %struct.TYPE_34__* %440, %struct.TYPE_34__** %8, align 8
  %441 = load i32, i32* %16, align 4
  %442 = shl i32 %441, 1
  store i32 %442, i32* %16, align 4
  %443 = load i32, i32* %16, align 4
  %444 = icmp ne i32 %443, 0
  %445 = zext i1 %444 to i32
  %446 = call i32 @assert(i32 %445)
  br label %433

447:                                              ; preds = %433
  %448 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %449 = call %struct.TYPE_34__* @last(%struct.TYPE_34__* %448)
  store %struct.TYPE_34__* %449, %struct.TYPE_34__** %10, align 8
  %450 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %451 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %452 = icmp eq %struct.TYPE_34__* %450, %451
  br i1 %452, label %453, label %468

453:                                              ; preds = %447
  %454 = load i32, i32* %16, align 4
  %455 = xor i32 %454, -1
  %456 = load i32, i32* %17, align 4
  %457 = and i32 %456, %455
  store i32 %457, i32* %17, align 4
  %458 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %459 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %458, i32 0, i32 0
  %460 = load i32*, i32** %459, align 8
  %461 = load i32, i32* %15, align 4
  %462 = zext i32 %461 to i64
  %463 = getelementptr inbounds i32, i32* %460, i64 %462
  store i32 %457, i32* %463, align 4
  %464 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %465 = call %struct.TYPE_34__* @next_bin(%struct.TYPE_34__* %464)
  store %struct.TYPE_34__* %465, %struct.TYPE_34__** %8, align 8
  %466 = load i32, i32* %16, align 4
  %467 = shl i32 %466, 1
  store i32 %467, i32* %16, align 4
  br label %551

468:                                              ; preds = %447
  %469 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %470 = call i64 @chunksize(%struct.TYPE_34__* %469)
  store i64 %470, i64* %11, align 8
  %471 = load i64, i64* %11, align 8
  %472 = load i64, i64* %6, align 8
  %473 = icmp uge i64 %471, %472
  %474 = zext i1 %473 to i32
  %475 = call i32 @assert(i32 %474)
  %476 = load i64, i64* %11, align 8
  %477 = load i64, i64* %6, align 8
  %478 = sub i64 %476, %477
  store i64 %478, i64* %14, align 8
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %480 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %479, i32 0, i32 1
  %481 = load %struct.TYPE_34__*, %struct.TYPE_34__** %480, align 8
  store %struct.TYPE_34__* %481, %struct.TYPE_34__** %19, align 8
  %482 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %483 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %484 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %483, i32 0, i32 1
  store %struct.TYPE_34__* %482, %struct.TYPE_34__** %484, align 8
  %485 = load %struct.TYPE_34__*, %struct.TYPE_34__** %8, align 8
  %486 = load %struct.TYPE_34__*, %struct.TYPE_34__** %19, align 8
  %487 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %486, i32 0, i32 0
  store %struct.TYPE_34__* %485, %struct.TYPE_34__** %487, align 8
  %488 = load i64, i64* %14, align 8
  %489 = load i64, i64* @MINSIZE, align 8
  %490 = icmp ult i64 %488, %489
  br i1 %490, label %491, label %504

491:                                              ; preds = %468
  %492 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %493 = load i64, i64* %11, align 8
  %494 = call i32 @set_inuse_bit_at_offset(%struct.TYPE_34__* %492, i64 %493)
  %495 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %496 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %497 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %495, %struct.TYPE_33__* %496)
  %498 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %499 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %500 = load i64, i64* %6, align 8
  %501 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %498, %struct.TYPE_34__* %499, i64 %500)
  %502 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %503 = call i32* @chunk2mem(%struct.TYPE_34__* %502)
  store i32* %503, i32** %3, align 8
  br label %608

504:                                              ; preds = %468
  %505 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %506 = load i64, i64* %6, align 8
  %507 = call %struct.TYPE_34__* @chunk_at_offset(%struct.TYPE_34__* %505, i64 %506)
  store %struct.TYPE_34__* %507, %struct.TYPE_34__** %13, align 8
  %508 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %509 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %510 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %509)
  %511 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %510, i32 0, i32 0
  store %struct.TYPE_34__* %508, %struct.TYPE_34__** %511, align 8
  %512 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %513 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %512)
  %514 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %513, i32 0, i32 1
  store %struct.TYPE_34__* %508, %struct.TYPE_34__** %514, align 8
  %515 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %516 = call %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__* %515)
  %517 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %518 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %517, i32 0, i32 0
  store %struct.TYPE_34__* %516, %struct.TYPE_34__** %518, align 8
  %519 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %520 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %519, i32 0, i32 1
  store %struct.TYPE_34__* %516, %struct.TYPE_34__** %520, align 8
  %521 = load i64, i64* %6, align 8
  %522 = call i32 @in_smallbin_range(i64 %521)
  %523 = icmp ne i32 %522, 0
  br i1 %523, label %524, label %528

524:                                              ; preds = %504
  %525 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %526 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %527 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %526, i32 0, i32 2
  store %struct.TYPE_34__* %525, %struct.TYPE_34__** %527, align 8
  br label %528

528:                                              ; preds = %524, %504
  %529 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %530 = load i64, i64* %6, align 8
  %531 = load i64, i64* @PREV_INUSE, align 8
  %532 = or i64 %530, %531
  %533 = call i32 @set_head(%struct.TYPE_34__* %529, i64 %532)
  %534 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %535 = load i64, i64* %14, align 8
  %536 = load i64, i64* @PREV_INUSE, align 8
  %537 = or i64 %535, %536
  %538 = call i32 @set_head(%struct.TYPE_34__* %534, i64 %537)
  %539 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %540 = load i64, i64* %14, align 8
  %541 = call i32 @set_foot(%struct.TYPE_34__* %539, i64 %540)
  %542 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %543 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %544 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %542, %struct.TYPE_33__* %543)
  %545 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %546 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %547 = load i64, i64* %6, align 8
  %548 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %545, %struct.TYPE_34__* %546, i64 %547)
  %549 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %550 = call i32* @chunk2mem(%struct.TYPE_34__* %549)
  store i32* %550, i32** %3, align 8
  br label %608

551:                                              ; preds = %453
  br label %402

552:                                              ; preds = %415
  %553 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %554 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %553, i32 0, i32 1
  %555 = load %struct.TYPE_34__*, %struct.TYPE_34__** %554, align 8
  store %struct.TYPE_34__* %555, %struct.TYPE_34__** %10, align 8
  %556 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %557 = call i64 @chunksize(%struct.TYPE_34__* %556)
  store i64 %557, i64* %11, align 8
  %558 = load i64, i64* %11, align 8
  %559 = load i64, i64* %6, align 8
  %560 = load i64, i64* @MINSIZE, align 8
  %561 = add i64 %559, %560
  %562 = icmp uge i64 %558, %561
  br i1 %562, label %563, label %592

563:                                              ; preds = %552
  %564 = load i64, i64* %11, align 8
  %565 = load i64, i64* %6, align 8
  %566 = sub i64 %564, %565
  store i64 %566, i64* %14, align 8
  %567 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %568 = load i64, i64* %6, align 8
  %569 = call %struct.TYPE_34__* @chunk_at_offset(%struct.TYPE_34__* %567, i64 %568)
  store %struct.TYPE_34__* %569, %struct.TYPE_34__** %13, align 8
  %570 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %571 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %572 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %571, i32 0, i32 1
  store %struct.TYPE_34__* %570, %struct.TYPE_34__** %572, align 8
  %573 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %574 = load i64, i64* %6, align 8
  %575 = load i64, i64* @PREV_INUSE, align 8
  %576 = or i64 %574, %575
  %577 = call i32 @set_head(%struct.TYPE_34__* %573, i64 %576)
  %578 = load %struct.TYPE_34__*, %struct.TYPE_34__** %13, align 8
  %579 = load i64, i64* %14, align 8
  %580 = load i64, i64* @PREV_INUSE, align 8
  %581 = or i64 %579, %580
  %582 = call i32 @set_head(%struct.TYPE_34__* %578, i64 %581)
  %583 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %584 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %585 = call i32 @set_arena_for_chunk(%struct.TYPE_34__* %583, %struct.TYPE_33__* %584)
  %586 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %587 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %588 = load i64, i64* %6, align 8
  %589 = call i32 @check_malloced_chunk(%struct.TYPE_33__* %586, %struct.TYPE_34__* %587, i64 %588)
  %590 = load %struct.TYPE_34__*, %struct.TYPE_34__** %10, align 8
  %591 = call i32* @chunk2mem(%struct.TYPE_34__* %590)
  store i32* %591, i32** %3, align 8
  br label %608

592:                                              ; preds = %552
  %593 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %594 = call i64 @have_fastchunks(%struct.TYPE_33__* %593)
  %595 = icmp ne i64 %594, 0
  br i1 %595, label %596, label %605

596:                                              ; preds = %592
  %597 = load i64, i64* %6, align 8
  %598 = call i32 @in_smallbin_range(i64 %597)
  %599 = call i32 @assert(i32 %598)
  %600 = load %struct.TYPE_33__*, %struct.TYPE_33__** %4, align 8
  %601 = call i32 @malloc_consolidate(%struct.TYPE_33__* %600)
  %602 = load i64, i64* %6, align 8
  %603 = call i8* @smallbin_index(i64 %602)
  %604 = ptrtoint i8* %603 to i32
  store i32 %604, i32* %7, align 4
  br label %606

605:                                              ; preds = %592
  store i32* null, i32** %3, align 8
  br label %608

606:                                              ; preds = %596
  br label %607

607:                                              ; preds = %606
  br label %110

608:                                              ; preds = %605, %563, %528, %491, %340, %327, %202, %145, %74, %38
  %609 = load i32*, i32** %3, align 8
  ret i32* %609
}

declare dso_local i32 @checked_request2size(i64, i64) #1

declare dso_local i64 @fastbin_index(i64) #1

declare dso_local i32 @check_remalloced_chunk(%struct.TYPE_33__*, %struct.TYPE_34__*, i64) #1

declare dso_local i32 @set_arena_for_chunk(%struct.TYPE_34__*, %struct.TYPE_33__*) #1

declare dso_local i32* @chunk2mem(%struct.TYPE_34__*) #1

declare dso_local i32 @in_smallbin_range(i64) #1

declare dso_local i8* @smallbin_index(i64) #1

declare dso_local %struct.TYPE_34__* @bin_at(%struct.TYPE_33__*, i32) #1

declare dso_local %struct.TYPE_34__* @last(%struct.TYPE_34__*) #1

declare dso_local i32 @malloc_consolidate(%struct.TYPE_33__*) #1

declare dso_local i32 @set_inuse_bit_at_offset(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @check_malloced_chunk(%struct.TYPE_33__*, %struct.TYPE_34__*, i64) #1

declare dso_local i8* @largebin_index(i64) #1

declare dso_local i64 @have_fastchunks(%struct.TYPE_33__*) #1

declare dso_local %struct.TYPE_34__* @unsorted_chunks(%struct.TYPE_33__*) #1

declare dso_local i64 @chunksize(%struct.TYPE_34__*) #1

declare dso_local %struct.TYPE_34__* @chunk_at_offset(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @set_head(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @set_foot(%struct.TYPE_34__*, i64) #1

declare dso_local i32 @mark_bin(%struct.TYPE_33__*, i32) #1

declare dso_local i32 @unlink(%struct.TYPE_34__*, %struct.TYPE_34__*, %struct.TYPE_34__*) #1

declare dso_local i32 @idx2block(i32) #1

declare dso_local i32 @idx2bit(i32) #1

declare dso_local %struct.TYPE_34__* @next_bin(%struct.TYPE_34__*) #1

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
