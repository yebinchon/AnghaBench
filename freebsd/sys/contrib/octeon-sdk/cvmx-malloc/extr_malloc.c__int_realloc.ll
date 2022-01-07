; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c__int_realloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c__int_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }

@MINSIZE = common dso_local global i64 0, align 8
@PREV_INUSE = common dso_local global i64 0, align 8
@MALLOC_ALIGN_MASK = common dso_local global i64 0, align 8
@SIZE_SZ = common dso_local global i64 0, align 8
@MALLOC_FAILURE_ACTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.TYPE_8__*, i32*, i64)* @_int_realloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @_int_realloc(%struct.TYPE_8__* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i64*, align 8
  %22 = alloca i64*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %29

25:                                               ; preds = %3
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i32* @_int_malloc(%struct.TYPE_8__* %26, i64 %27)
  store i32* %28, i32** %4, align 8
  br label %283

29:                                               ; preds = %3
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @checked_request2size(i64 %30, i64 %31)
  %33 = load i32*, i32** %6, align 8
  %34 = call i64 @mem2chunk(i32* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = call i64 @chunksize(i64 %35)
  store i64 %36, i64* %10, align 8
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @check_inuse_chunk(%struct.TYPE_8__* %37, i64 %38)
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp uge i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %29
  %44 = load i64, i64* %9, align 8
  store i64 %44, i64* %11, align 8
  %45 = load i64, i64* %10, align 8
  store i64 %45, i64* %12, align 8
  br label %232

46:                                               ; preds = %29
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = call i8* @chunk_at_offset(i64 %47, i64 %48)
  %50 = ptrtoint i8* %49 to i64
  store i64 %50, i64* %14, align 8
  %51 = load i64, i64* %14, align 8
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %92

56:                                               ; preds = %46
  %57 = load i64, i64* %10, align 8
  %58 = load i64, i64* %14, align 8
  %59 = call i64 @chunksize(i64 %58)
  %60 = add i64 %57, %59
  store i64 %60, i64* %12, align 8
  %61 = load i64, i64* %8, align 8
  %62 = load i64, i64* @MINSIZE, align 8
  %63 = add i64 %61, %62
  %64 = icmp uge i64 %60, %63
  br i1 %64, label %65, label %92

65:                                               ; preds = %56
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %8, align 8
  %68 = call i32 @set_head_size(i64 %66, i64 %67)
  %69 = load i64, i64* %9, align 8
  %70 = load i64, i64* %8, align 8
  %71 = call i8* @chunk_at_offset(i64 %69, i64 %70)
  %72 = ptrtoint i8* %71 to i64
  %73 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  store i64 %72, i64* %74, align 8
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = load i64, i64* %8, align 8
  %80 = sub i64 %78, %79
  %81 = load i64, i64* @PREV_INUSE, align 8
  %82 = or i64 %80, %81
  %83 = call i32 @set_head(i64 %77, i64 %82)
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %85 = load i64, i64* %9, align 8
  %86 = call i32 @check_inuse_chunk(%struct.TYPE_8__* %84, i64 %85)
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %89 = call i32 @set_arena_for_chunk(i64 %87, %struct.TYPE_8__* %88)
  %90 = load i64, i64* %9, align 8
  %91 = call i32* @chunk2mem(i64 %90)
  store i32* %91, i32** %4, align 8
  br label %283

92:                                               ; preds = %56, %46
  %93 = load i64, i64* %14, align 8
  %94 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %93, %96
  br i1 %97, label %98, label %115

98:                                               ; preds = %92
  %99 = load i64, i64* %14, align 8
  %100 = call i32 @inuse(i64 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %115, label %102

102:                                              ; preds = %98
  %103 = load i64, i64* %10, align 8
  %104 = load i64, i64* %14, align 8
  %105 = call i64 @chunksize(i64 %104)
  %106 = add i64 %103, %105
  store i64 %106, i64* %12, align 8
  %107 = load i64, i64* %8, align 8
  %108 = icmp uge i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %102
  %110 = load i64, i64* %9, align 8
  store i64 %110, i64* %11, align 8
  %111 = load i64, i64* %14, align 8
  %112 = load i64, i64* %17, align 8
  %113 = load i64, i64* %18, align 8
  %114 = call i32 @unlink(i64 %111, i64 %112, i64 %113)
  br label %230

115:                                              ; preds = %102, %98, %92
  %116 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %117 = load i64, i64* %8, align 8
  %118 = load i64, i64* @MALLOC_ALIGN_MASK, align 8
  %119 = sub i64 %117, %118
  %120 = call i32* @_int_malloc(%struct.TYPE_8__* %116, i64 %119)
  store i32* %120, i32** %13, align 8
  %121 = load i32*, i32** %13, align 8
  %122 = icmp eq i32* %121, null
  br i1 %122, label %123, label %124

123:                                              ; preds = %115
  store i32* null, i32** %4, align 8
  br label %283

124:                                              ; preds = %115
  %125 = load i32*, i32** %13, align 8
  %126 = call i64 @mem2chunk(i32* %125)
  store i64 %126, i64* %11, align 8
  %127 = load i64, i64* %11, align 8
  %128 = call i64 @chunksize(i64 %127)
  store i64 %128, i64* %12, align 8
  %129 = load i64, i64* %11, align 8
  %130 = load i64, i64* %14, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* %12, align 8
  %135 = add i64 %134, %133
  store i64 %135, i64* %12, align 8
  %136 = load i64, i64* %9, align 8
  store i64 %136, i64* %11, align 8
  br label %229

137:                                              ; preds = %124
  %138 = load i64, i64* %10, align 8
  %139 = load i64, i64* @SIZE_SZ, align 8
  %140 = sub i64 %138, %139
  store i64 %140, i64* %19, align 8
  %141 = load i32*, i32** %6, align 8
  %142 = bitcast i32* %141 to i64*
  store i64* %142, i64** %21, align 8
  %143 = load i32*, i32** %13, align 8
  %144 = bitcast i32* %143 to i64*
  store i64* %144, i64** %22, align 8
  %145 = load i64, i64* %19, align 8
  %146 = udiv i64 %145, 8
  %147 = trunc i64 %146 to i32
  store i32 %147, i32* %20, align 4
  %148 = load i32, i32* %20, align 4
  %149 = icmp uge i32 %148, 3
  %150 = zext i1 %149 to i32
  %151 = call i32 @assert(i32 %150)
  %152 = load i32, i32* %20, align 4
  %153 = icmp ugt i32 %152, 9
  br i1 %153, label %154, label %159

154:                                              ; preds = %137
  %155 = load i64*, i64** %22, align 8
  %156 = load i64*, i64** %21, align 8
  %157 = load i64, i64* %19, align 8
  %158 = call i32 @MALLOC_COPY(i64* %155, i64* %156, i64 %157)
  br label %217

159:                                              ; preds = %137
  %160 = load i64*, i64** %21, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64*, i64** %22, align 8
  %164 = getelementptr inbounds i64, i64* %163, i64 0
  store i64 %162, i64* %164, align 8
  %165 = load i64*, i64** %21, align 8
  %166 = getelementptr inbounds i64, i64* %165, i64 1
  %167 = load i64, i64* %166, align 8
  %168 = load i64*, i64** %22, align 8
  %169 = getelementptr inbounds i64, i64* %168, i64 1
  store i64 %167, i64* %169, align 8
  %170 = load i64*, i64** %21, align 8
  %171 = getelementptr inbounds i64, i64* %170, i64 2
  %172 = load i64, i64* %171, align 8
  %173 = load i64*, i64** %22, align 8
  %174 = getelementptr inbounds i64, i64* %173, i64 2
  store i64 %172, i64* %174, align 8
  %175 = load i32, i32* %20, align 4
  %176 = icmp ugt i32 %175, 4
  br i1 %176, label %177, label %216

177:                                              ; preds = %159
  %178 = load i64*, i64** %21, align 8
  %179 = getelementptr inbounds i64, i64* %178, i64 3
  %180 = load i64, i64* %179, align 8
  %181 = load i64*, i64** %22, align 8
  %182 = getelementptr inbounds i64, i64* %181, i64 3
  store i64 %180, i64* %182, align 8
  %183 = load i64*, i64** %21, align 8
  %184 = getelementptr inbounds i64, i64* %183, i64 4
  %185 = load i64, i64* %184, align 8
  %186 = load i64*, i64** %22, align 8
  %187 = getelementptr inbounds i64, i64* %186, i64 4
  store i64 %185, i64* %187, align 8
  %188 = load i32, i32* %20, align 4
  %189 = icmp ugt i32 %188, 6
  br i1 %189, label %190, label %215

190:                                              ; preds = %177
  %191 = load i64*, i64** %21, align 8
  %192 = getelementptr inbounds i64, i64* %191, i64 5
  %193 = load i64, i64* %192, align 8
  %194 = load i64*, i64** %22, align 8
  %195 = getelementptr inbounds i64, i64* %194, i64 5
  store i64 %193, i64* %195, align 8
  %196 = load i64*, i64** %21, align 8
  %197 = getelementptr inbounds i64, i64* %196, i64 6
  %198 = load i64, i64* %197, align 8
  %199 = load i64*, i64** %22, align 8
  %200 = getelementptr inbounds i64, i64* %199, i64 6
  store i64 %198, i64* %200, align 8
  %201 = load i32, i32* %20, align 4
  %202 = icmp ugt i32 %201, 8
  br i1 %202, label %203, label %214

203:                                              ; preds = %190
  %204 = load i64*, i64** %21, align 8
  %205 = getelementptr inbounds i64, i64* %204, i64 7
  %206 = load i64, i64* %205, align 8
  %207 = load i64*, i64** %22, align 8
  %208 = getelementptr inbounds i64, i64* %207, i64 7
  store i64 %206, i64* %208, align 8
  %209 = load i64*, i64** %21, align 8
  %210 = getelementptr inbounds i64, i64* %209, i64 8
  %211 = load i64, i64* %210, align 8
  %212 = load i64*, i64** %22, align 8
  %213 = getelementptr inbounds i64, i64* %212, i64 8
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %203, %190
  br label %215

215:                                              ; preds = %214, %177
  br label %216

216:                                              ; preds = %215, %159
  br label %217

217:                                              ; preds = %216, %154
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %219 = load i32*, i32** %6, align 8
  %220 = call i32 @_int_free(%struct.TYPE_8__* %218, i32* %219)
  %221 = load i64, i64* %11, align 8
  %222 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %223 = call i32 @set_arena_for_chunk(i64 %221, %struct.TYPE_8__* %222)
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %225 = load i64, i64* %11, align 8
  %226 = call i32 @check_inuse_chunk(%struct.TYPE_8__* %224, i64 %225)
  %227 = load i64, i64* %11, align 8
  %228 = call i32* @chunk2mem(i64 %227)
  store i32* %228, i32** %4, align 8
  br label %283

229:                                              ; preds = %132
  br label %230

230:                                              ; preds = %229, %109
  br label %231

231:                                              ; preds = %230
  br label %232

232:                                              ; preds = %231, %43
  %233 = load i64, i64* %12, align 8
  %234 = load i64, i64* %8, align 8
  %235 = icmp uge i64 %233, %234
  %236 = zext i1 %235 to i32
  %237 = call i32 @assert(i32 %236)
  %238 = load i64, i64* %12, align 8
  %239 = load i64, i64* %8, align 8
  %240 = sub i64 %238, %239
  store i64 %240, i64* %16, align 8
  %241 = load i64, i64* %16, align 8
  %242 = load i64, i64* @MINSIZE, align 8
  %243 = icmp ult i64 %241, %242
  br i1 %243, label %244, label %251

244:                                              ; preds = %232
  %245 = load i64, i64* %11, align 8
  %246 = load i64, i64* %12, align 8
  %247 = call i32 @set_head_size(i64 %245, i64 %246)
  %248 = load i64, i64* %11, align 8
  %249 = load i64, i64* %12, align 8
  %250 = call i32 @set_inuse_bit_at_offset(i64 %248, i64 %249)
  br label %274

251:                                              ; preds = %232
  %252 = load i64, i64* %11, align 8
  %253 = load i64, i64* %8, align 8
  %254 = call i8* @chunk_at_offset(i64 %252, i64 %253)
  %255 = ptrtoint i8* %254 to i64
  store i64 %255, i64* %15, align 8
  %256 = load i64, i64* %11, align 8
  %257 = load i64, i64* %8, align 8
  %258 = call i32 @set_head_size(i64 %256, i64 %257)
  %259 = load i64, i64* %15, align 8
  %260 = load i64, i64* %16, align 8
  %261 = load i64, i64* @PREV_INUSE, align 8
  %262 = or i64 %260, %261
  %263 = call i32 @set_head(i64 %259, i64 %262)
  %264 = load i64, i64* %15, align 8
  %265 = load i64, i64* %16, align 8
  %266 = call i32 @set_inuse_bit_at_offset(i64 %264, i64 %265)
  %267 = load i64, i64* %15, align 8
  %268 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %269 = call i32 @set_arena_for_chunk(i64 %267, %struct.TYPE_8__* %268)
  %270 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %271 = load i64, i64* %15, align 8
  %272 = call i32* @chunk2mem(i64 %271)
  %273 = call i32 @_int_free(%struct.TYPE_8__* %270, i32* %272)
  br label %274

274:                                              ; preds = %251, %244
  %275 = load i64, i64* %11, align 8
  %276 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %277 = call i32 @set_arena_for_chunk(i64 %275, %struct.TYPE_8__* %276)
  %278 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %279 = load i64, i64* %11, align 8
  %280 = call i32 @check_inuse_chunk(%struct.TYPE_8__* %278, i64 %279)
  %281 = load i64, i64* %11, align 8
  %282 = call i32* @chunk2mem(i64 %281)
  store i32* %282, i32** %4, align 8
  br label %283

283:                                              ; preds = %274, %217, %123, %65, %25
  %284 = load i32*, i32** %4, align 8
  ret i32* %284
}

declare dso_local i32* @_int_malloc(%struct.TYPE_8__*, i64) #1

declare dso_local i32 @checked_request2size(i64, i64) #1

declare dso_local i64 @mem2chunk(i32*) #1

declare dso_local i64 @chunksize(i64) #1

declare dso_local i32 @check_inuse_chunk(%struct.TYPE_8__*, i64) #1

declare dso_local i8* @chunk_at_offset(i64, i64) #1

declare dso_local i32 @set_head_size(i64, i64) #1

declare dso_local i32 @set_head(i64, i64) #1

declare dso_local i32 @set_arena_for_chunk(i64, %struct.TYPE_8__*) #1

declare dso_local i32* @chunk2mem(i64) #1

declare dso_local i32 @inuse(i64) #1

declare dso_local i32 @unlink(i64, i64, i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @MALLOC_COPY(i64*, i64*, i64) #1

declare dso_local i32 @_int_free(%struct.TYPE_8__*, i32*) #1

declare dso_local i32 @set_inuse_bit_at_offset(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
