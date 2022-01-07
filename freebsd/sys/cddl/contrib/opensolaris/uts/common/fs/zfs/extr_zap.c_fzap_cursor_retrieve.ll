; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_fzap_cursor_retrieve.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_fzap_cursor_retrieve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i64, %struct.TYPE_20__*, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_23__ = type { i64, i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i64, i64, i32, i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i32, i64 }

@ENOENT = common dso_local global i32 0, align 4
@zap_iterate_prefetch = common dso_local global i64 0, align 8
@ZIO_PRIORITY_ASYNC_READ = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fzap_cursor_retrieve(i32* %0, %struct.TYPE_22__* %1, %struct.TYPE_23__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_22__*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_21__, align 8
  %10 = alloca %struct.TYPE_20__*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %6, align 8
  store %struct.TYPE_23__* %2, %struct.TYPE_23__** %7, align 8
  %12 = load i32, i32* @ENOENT, align 4
  store i32 %12, i32* %8, align 4
  %13 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %47

17:                                               ; preds = %3
  %18 = load i64, i64* @zap_iterate_prefetch, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %47

20:                                               ; preds = %17
  %21 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %20
  %26 = load i32*, i32** %5, align 8
  %27 = call %struct.TYPE_18__* @zap_f_phys(i32* %26)
  %28 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sgt i32 %29, 2
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = load i32*, i32** %5, align 8
  %39 = call %struct.TYPE_18__* @zap_f_phys(i32* %38)
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @FZAP_BLOCK_SHIFT(i32* %42)
  %44 = shl i32 %41, %43
  %45 = load i32, i32* @ZIO_PRIORITY_ASYNC_READ, align 4
  %46 = call i32 @dmu_prefetch(i32 %34, i32 %37, i32 0, i32 0, i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %31, %25, %20, %17, %3
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_20__*, %struct.TYPE_20__** %49, align 8
  %51 = icmp ne %struct.TYPE_20__* %50, null
  br i1 %51, label %52, label %85

52:                                               ; preds = %47
  %53 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_20__*, %struct.TYPE_20__** %57, align 8
  %59 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %58)
  %60 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i64 @ZAP_HASH_IDX(i64 %55, i32 %62)
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %64, i32 0, i32 1
  %66 = load %struct.TYPE_20__*, %struct.TYPE_20__** %65, align 8
  %67 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %66)
  %68 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %63, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %52
  %73 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %73, i32 0, i32 1
  %75 = load %struct.TYPE_20__*, %struct.TYPE_20__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %75, i32 0, i32 0
  %77 = load i32, i32* @RW_READER, align 4
  %78 = call i32 @rw_enter(i32* %76, i32 %77)
  %79 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %80, align 8
  %82 = call i32 @zap_put_leaf(%struct.TYPE_20__* %81)
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %84, align 8
  br label %85

85:                                               ; preds = %72, %52, %47
  br label %86

86:                                               ; preds = %167, %85
  %87 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_20__*, %struct.TYPE_20__** %88, align 8
  %90 = icmp eq %struct.TYPE_20__* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i32, i32* @RW_READER, align 4
  %97 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %97, i32 0, i32 1
  %99 = call i32 @zap_deref_leaf(i32* %92, i64 %95, i32* null, i32 %96, %struct.TYPE_20__** %98)
  store i32 %99, i32* %8, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %91
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %239

104:                                              ; preds = %91
  br label %112

105:                                              ; preds = %86
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_20__*, %struct.TYPE_20__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %108, i32 0, i32 0
  %110 = load i32, i32* @RW_READER, align 4
  %111 = call i32 @rw_enter(i32* %109, i32 %110)
  br label %112

112:                                              ; preds = %105, %104
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 1
  %115 = load %struct.TYPE_20__*, %struct.TYPE_20__** %114, align 8
  store %struct.TYPE_20__* %115, %struct.TYPE_20__** %10, align 8
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %117 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @zap_leaf_lookup_closest(%struct.TYPE_20__* %116, i64 %119, i32 %122, %struct.TYPE_21__* %9)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = load i32, i32* @ENOENT, align 4
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %175

127:                                              ; preds = %112
  %128 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %129 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %128)
  %130 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 64, %132
  %134 = zext i32 %133 to i64
  %135 = shl i64 1, %134
  %136 = sub i64 %135, 1
  %137 = trunc i64 %136 to i32
  store i32 %137, i32* %11, align 4
  %138 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* %11, align 4
  %142 = xor i32 %141, -1
  %143 = sext i32 %142 to i64
  %144 = and i64 %140, %143
  %145 = load i32, i32* %11, align 4
  %146 = sext i32 %145 to i64
  %147 = add nsw i64 %144, %146
  %148 = add nsw i64 %147, 1
  %149 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 2
  store i32 0, i32* %152, align 8
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %10, align 8
  %154 = call %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__* %153)
  %155 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %164, label %159

159:                                              ; preds = %127
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = icmp eq i64 %162, 0
  br i1 %163, label %164, label %167

164:                                              ; preds = %159, %127
  %165 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %165, i32 0, i32 0
  store i64 -1, i64* %166, align 8
  br label %174

167:                                              ; preds = %159
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %169, align 8
  %171 = call i32 @zap_put_leaf(%struct.TYPE_20__* %170)
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %172, i32 0, i32 1
  store %struct.TYPE_20__* null, %struct.TYPE_20__** %173, align 8
  br label %86

174:                                              ; preds = %164
  br label %175

175:                                              ; preds = %174, %112
  %176 = load i32, i32* %8, align 4
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %178, label %232

178:                                              ; preds = %175
  %179 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %182 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %181, i32 0, i32 0
  store i64 %180, i64* %182, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %186 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  %187 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %190 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %189, i32 0, i32 4
  store i32 %188, i32* %190, align 4
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %194 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = icmp eq i64 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %178
  %199 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %200 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %199, i32 0, i32 3
  store i32 0, i32* %200, align 8
  br label %215

201:                                              ; preds = %178
  %202 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %202, i32 0, i32 3
  %204 = call i32 @zap_entry_read(%struct.TYPE_21__* %9, i32 8, i32 1, i32* %203)
  store i32 %204, i32* %8, align 4
  %205 = load i32, i32* %8, align 4
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %211, label %207

207:                                              ; preds = %201
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* @EOVERFLOW, align 4
  %210 = icmp eq i32 %208, %209
  br label %211

211:                                              ; preds = %207, %201
  %212 = phi i1 [ true, %201 ], [ %210, %207 ]
  %213 = zext i1 %212 to i32
  %214 = call i32 @ASSERT(i32 %213)
  br label %215

215:                                              ; preds = %211, %198
  %216 = load i32*, i32** %5, align 8
  %217 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @zap_entry_read_name(i32* %216, %struct.TYPE_21__* %9, i32 4, i32 %219)
  store i32 %220, i32* %8, align 4
  %221 = load i32, i32* %8, align 4
  %222 = icmp eq i32 %221, 0
  %223 = zext i1 %222 to i32
  %224 = call i32 @ASSERT(i32 %223)
  %225 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load i32*, i32** %5, align 8
  %229 = call i32 @zap_entry_normalization_conflict(%struct.TYPE_21__* %9, i32* null, i32 %227, i32* %228)
  %230 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %231 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %230, i32 0, i32 2
  store i32 %229, i32* %231, align 4
  br label %232

232:                                              ; preds = %215, %175
  %233 = load %struct.TYPE_22__*, %struct.TYPE_22__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %233, i32 0, i32 1
  %235 = load %struct.TYPE_20__*, %struct.TYPE_20__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %235, i32 0, i32 0
  %237 = call i32 @rw_exit(i32* %236)
  %238 = load i32, i32* %8, align 4
  store i32 %238, i32* %4, align 4
  br label %239

239:                                              ; preds = %232, %102
  %240 = load i32, i32* %4, align 4
  ret i32 %240
}

declare dso_local %struct.TYPE_18__* @zap_f_phys(i32*) #1

declare dso_local i32 @dmu_prefetch(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @FZAP_BLOCK_SHIFT(i32*) #1

declare dso_local i64 @ZAP_HASH_IDX(i64, i32) #1

declare dso_local %struct.TYPE_24__* @zap_leaf_phys(%struct.TYPE_20__*) #1

declare dso_local i32 @rw_enter(i32*, i32) #1

declare dso_local i32 @zap_put_leaf(%struct.TYPE_20__*) #1

declare dso_local i32 @zap_deref_leaf(i32*, i64, i32*, i32, %struct.TYPE_20__**) #1

declare dso_local i32 @zap_leaf_lookup_closest(%struct.TYPE_20__*, i64, i32, %struct.TYPE_21__*) #1

declare dso_local i32 @zap_entry_read(%struct.TYPE_21__*, i32, i32, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zap_entry_read_name(i32*, %struct.TYPE_21__*, i32, i32) #1

declare dso_local i32 @zap_entry_normalization_conflict(%struct.TYPE_21__*, i32*, i32, i32*) #1

declare dso_local i32 @rw_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
