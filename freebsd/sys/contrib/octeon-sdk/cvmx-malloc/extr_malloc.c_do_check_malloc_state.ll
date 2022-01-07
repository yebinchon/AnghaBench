; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c_do_check_malloc_state.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/cvmx-malloc/extr_malloc.c_do_check_malloc_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, i32, i64, i64, %struct.TYPE_23__** }
%struct.TYPE_23__ = type { %struct.TYPE_23__*, %struct.TYPE_23__* }

@MALLOC_ALIGNMENT = common dso_local global i32 0, align 4
@MAX_FAST_SIZE = common dso_local global i32 0, align 4
@NFASTBINS = common dso_local global i32 0, align 4
@NBINS = common dso_local global i32 0, align 4
@FIRST_SORTED_BIN_SIZE = common dso_local global i64 0, align 8
@MINSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_22__*)* @do_check_malloc_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_check_malloc_state(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca %struct.TYPE_23__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  store i64 0, i64* %11, align 8
  %13 = call i32 @assert(i32 1)
  %14 = load i32, i32* @MALLOC_ALIGNMENT, align 4
  %15 = load i32, i32* @MALLOC_ALIGNMENT, align 4
  %16 = sub nsw i32 %15, 1
  %17 = and i32 %14, %16
  %18 = icmp eq i32 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %30 = call i64 @initial_top(%struct.TYPE_22__* %29)
  %31 = icmp eq i64 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25, %1
  br label %245

33:                                               ; preds = %25
  %34 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = and i32 %36, -2
  %38 = load i32, i32* @MAX_FAST_SIZE, align 4
  %39 = call i32 @request2size(i32 %38)
  %40 = icmp sle i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = call i32 @fastbin_index(i64 %46)
  store i32 %47, i32* %12, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %91, %33
  %49 = load i32, i32* %3, align 4
  %50 = load i32, i32* @NFASTBINS, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %94

52:                                               ; preds = %48
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 4
  %55 = load %struct.TYPE_23__**, %struct.TYPE_23__*** %54, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_23__*, %struct.TYPE_23__** %55, i64 %57
  %59 = load %struct.TYPE_23__*, %struct.TYPE_23__** %58, align 8
  store %struct.TYPE_23__* %59, %struct.TYPE_23__** %4, align 8
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* %12, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %68

63:                                               ; preds = %52
  %64 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %65 = icmp eq %struct.TYPE_23__* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @assert(i32 %66)
  br label %68

68:                                               ; preds = %63, %52
  br label %69

69:                                               ; preds = %72, %68
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %71 = icmp ne %struct.TYPE_23__* %70, null
  br i1 %71, label %72, label %90

72:                                               ; preds = %69
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %74 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %75 = call i32 @do_check_inuse_chunk(%struct.TYPE_22__* %73, %struct.TYPE_23__* %74)
  %76 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %77 = call i64 @chunksize(%struct.TYPE_23__* %76)
  %78 = load i64, i64* %11, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %81 = call i64 @chunksize(%struct.TYPE_23__* %80)
  %82 = call i32 @fastbin_index(i64 %81)
  %83 = load i32, i32* %3, align 4
  %84 = icmp eq i32 %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @assert(i32 %85)
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_23__*, %struct.TYPE_23__** %88, align 8
  store %struct.TYPE_23__* %89, %struct.TYPE_23__** %4, align 8
  br label %69

90:                                               ; preds = %69
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %3, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %3, align 4
  br label %48

94:                                               ; preds = %48
  %95 = load i64, i64* %11, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %99 = call i32 @have_fastchunks(%struct.TYPE_22__* %98)
  %100 = call i32 @assert(i32 %99)
  br label %111

101:                                              ; preds = %94
  %102 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %103 = call i32 @have_fastchunks(%struct.TYPE_22__* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %110, label %105

105:                                              ; preds = %101
  %106 = load i64, i64* %11, align 8
  %107 = icmp eq i64 %106, 0
  %108 = zext i1 %107 to i32
  %109 = call i32 @assert(i32 %108)
  br label %110

110:                                              ; preds = %105, %101
  br label %111

111:                                              ; preds = %110, %97
  store i32 1, i32* %3, align 4
  br label %112

112:                                              ; preds = %226, %111
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* @NBINS, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %229

116:                                              ; preds = %112
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %118 = load i32, i32* %3, align 4
  %119 = call %struct.TYPE_23__* @bin_at(%struct.TYPE_22__* %117, i32 %118)
  store %struct.TYPE_23__* %119, %struct.TYPE_23__** %6, align 8
  %120 = load i32, i32* %3, align 4
  %121 = icmp sge i32 %120, 2
  br i1 %121, label %122, label %144

122:                                              ; preds = %116
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %124 = load i32, i32* %3, align 4
  %125 = call i32 @get_binmap(%struct.TYPE_22__* %123, i32 %124)
  store i32 %125, i32* %7, align 4
  %126 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %127 = call %struct.TYPE_23__* @last(%struct.TYPE_23__* %126)
  %128 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %129 = icmp eq %struct.TYPE_23__* %127, %128
  %130 = zext i1 %129 to i32
  store i32 %130, i32* %8, align 4
  %131 = load i32, i32* %7, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %136, label %133

133:                                              ; preds = %122
  %134 = load i32, i32* %8, align 4
  %135 = call i32 @assert(i32 %134)
  br label %143

136:                                              ; preds = %122
  %137 = load i32, i32* %8, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %142, label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %7, align 4
  %141 = call i32 @assert(i32 %140)
  br label %142

142:                                              ; preds = %139, %136
  br label %143

143:                                              ; preds = %142, %133
  br label %144

144:                                              ; preds = %143, %116
  %145 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %146 = call %struct.TYPE_23__* @last(%struct.TYPE_23__* %145)
  store %struct.TYPE_23__* %146, %struct.TYPE_23__** %4, align 8
  br label %147

147:                                              ; preds = %221, %144
  %148 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %149 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %150 = icmp ne %struct.TYPE_23__* %148, %149
  br i1 %150, label %151, label %225

151:                                              ; preds = %147
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %153 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %154 = call i32 @do_check_free_chunk(%struct.TYPE_22__* %152, %struct.TYPE_23__* %153)
  %155 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %156 = call i64 @chunksize(%struct.TYPE_23__* %155)
  store i64 %156, i64* %10, align 8
  %157 = load i64, i64* %10, align 8
  %158 = load i64, i64* %11, align 8
  %159 = add i64 %158, %157
  store i64 %159, i64* %11, align 8
  %160 = load i32, i32* %3, align 4
  %161 = icmp sge i32 %160, 2
  br i1 %161, label %162, label %192

162:                                              ; preds = %151
  %163 = load i64, i64* %10, align 8
  %164 = call i32 @bin_index(i64 %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %3, align 4
  %167 = icmp eq i32 %165, %166
  %168 = zext i1 %167 to i32
  %169 = call i32 @assert(i32 %168)
  %170 = load i64, i64* %10, align 8
  %171 = load i64, i64* @FIRST_SORTED_BIN_SIZE, align 8
  %172 = icmp uge i64 %170, %171
  br i1 %172, label %173, label %191

173:                                              ; preds = %162
  %174 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %175 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %174, i32 0, i32 0
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %175, align 8
  %177 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %178 = icmp eq %struct.TYPE_23__* %176, %177
  br i1 %178, label %187, label %179

179:                                              ; preds = %173
  %180 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %180, i32 0, i32 0
  %182 = load %struct.TYPE_23__*, %struct.TYPE_23__** %181, align 8
  %183 = call i64 @chunksize(%struct.TYPE_23__* %182)
  %184 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %185 = call i64 @chunksize(%struct.TYPE_23__* %184)
  %186 = icmp uge i64 %183, %185
  br label %187

187:                                              ; preds = %179, %173
  %188 = phi i1 [ true, %173 ], [ %186, %179 ]
  %189 = zext i1 %188 to i32
  %190 = call i32 @assert(i32 %189)
  br label %191

191:                                              ; preds = %187, %162
  br label %192

192:                                              ; preds = %191, %151
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %194 = call %struct.TYPE_23__* @next_chunk(%struct.TYPE_23__* %193)
  store %struct.TYPE_23__* %194, %struct.TYPE_23__** %5, align 8
  br label %195

195:                                              ; preds = %217, %192
  %196 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %197 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %198 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to %struct.TYPE_23__*
  %201 = icmp ne %struct.TYPE_23__* %196, %200
  br i1 %201, label %202, label %211

202:                                              ; preds = %195
  %203 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %204 = call i64 @inuse(%struct.TYPE_23__* %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %211

206:                                              ; preds = %202
  %207 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %208 = call i64 @chunksize(%struct.TYPE_23__* %207)
  %209 = load i64, i64* @MINSIZE, align 8
  %210 = icmp uge i64 %208, %209
  br label %211

211:                                              ; preds = %206, %202, %195
  %212 = phi i1 [ false, %202 ], [ false, %195 ], [ %210, %206 ]
  br i1 %212, label %213, label %220

213:                                              ; preds = %211
  %214 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %215 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %216 = call i32 @do_check_inuse_chunk(%struct.TYPE_22__* %214, %struct.TYPE_23__* %215)
  br label %217

217:                                              ; preds = %213
  %218 = load %struct.TYPE_23__*, %struct.TYPE_23__** %5, align 8
  %219 = call %struct.TYPE_23__* @next_chunk(%struct.TYPE_23__* %218)
  store %struct.TYPE_23__* %219, %struct.TYPE_23__** %5, align 8
  br label %195

220:                                              ; preds = %211
  br label %221

221:                                              ; preds = %220
  %222 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %223 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %222, i32 0, i32 0
  %224 = load %struct.TYPE_23__*, %struct.TYPE_23__** %223, align 8
  store %struct.TYPE_23__* %224, %struct.TYPE_23__** %4, align 8
  br label %147

225:                                              ; preds = %147
  br label %226

226:                                              ; preds = %225
  %227 = load i32, i32* %3, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %3, align 4
  br label %112

229:                                              ; preds = %112
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %232 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %231, i32 0, i32 0
  %233 = load i64, i64* %232, align 8
  %234 = inttoptr i64 %233 to %struct.TYPE_23__*
  %235 = call i32 @check_chunk(%struct.TYPE_22__* %230, %struct.TYPE_23__* %234)
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 3
  %238 = load i64, i64* %237, align 8
  %239 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %240 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %239, i32 0, i32 2
  %241 = load i64, i64* %240, align 8
  %242 = icmp ule i64 %238, %241
  %243 = zext i1 %242 to i32
  %244 = call i32 @assert(i32 %243)
  br label %245

245:                                              ; preds = %229, %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @initial_top(%struct.TYPE_22__*) #1

declare dso_local i32 @request2size(i32) #1

declare dso_local i32 @fastbin_index(i64) #1

declare dso_local i32 @do_check_inuse_chunk(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i64 @chunksize(%struct.TYPE_23__*) #1

declare dso_local i32 @have_fastchunks(%struct.TYPE_22__*) #1

declare dso_local %struct.TYPE_23__* @bin_at(%struct.TYPE_22__*, i32) #1

declare dso_local i32 @get_binmap(%struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_23__* @last(%struct.TYPE_23__*) #1

declare dso_local i32 @do_check_free_chunk(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

declare dso_local i32 @bin_index(i64) #1

declare dso_local %struct.TYPE_23__* @next_chunk(%struct.TYPE_23__*) #1

declare dso_local i64 @inuse(%struct.TYPE_23__*) #1

declare dso_local i32 @check_chunk(%struct.TYPE_22__*, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
