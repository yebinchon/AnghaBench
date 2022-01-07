; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_table_grow.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap.c_zap_table_grow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i32, i32 }
%struct.TYPE_13__ = type { i32* }

@ZIO_PRIORITY_SYNC_READ = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@DMU_READ_NO_PREFETCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"copied block %llu of %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"finished; numblocks now %llu (%lluk entries)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, %struct.TYPE_11__*, void (i32*, i32*, i32)*, i32*)* @zap_table_grow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zap_table_grow(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1, void (i32*, i32*, i32)* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca void (i32*, i32*, i32)*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_13__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %7, align 8
  store void (i32*, i32*, i32)* %2, void (i32*, i32*, i32)** %8, align 8
  store i32* %3, i32** %9, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %18 = call i32 @FZAP_BLOCK_SHIFT(%struct.TYPE_12__* %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = sub nsw i32 %19, 4
  %21 = shl i32 1, %20
  store i32 %21, i32* %12, align 4
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = call i32 @RW_WRITE_HELD(i32* %23)
  %25 = call i32 @ASSERT(i32 %24)
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %27 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sgt i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %4
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %10, align 4
  br label %80

47:                                               ; preds = %4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %51, 2
  %53 = call i32 @zap_allocate_blocks(%struct.TYPE_12__* %48, i32 %52)
  store i32 %53, i32* %10, align 4
  %54 = load i32, i32* %10, align 4
  %55 = sext i32 %54 to i64
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 2
  store i64 %55, i64* %57, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @ASSERT0(i32 %60)
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %11, align 4
  %72 = shl i32 %70, %71
  %73 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %11, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* @ZIO_PRIORITY_SYNC_READ, align 4
  %79 = call i32 @dmu_prefetch(i32 %64, i32 %67, i32 0, i32 %72, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %47, %42
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %13, align 4
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load i32, i32* %13, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %11, align 4
  %96 = shl i32 %94, %95
  %97 = load i32, i32* @FTAG, align 4
  %98 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %99 = call i32 @dmu_buf_hold(i32 %86, i32 %89, i32 %96, i32 %97, %struct.TYPE_13__** %14, i32 %98)
  store i32 %99, i32* %15, align 4
  %100 = load i32, i32* %15, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %80
  %103 = load i32, i32* %15, align 4
  store i32 %103, i32* %5, align 4
  br label %235

104:                                              ; preds = %80
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load i32, i32* %13, align 4
  %113 = mul nsw i32 2, %112
  %114 = add nsw i32 %111, %113
  %115 = add nsw i32 %114, 0
  %116 = load i32, i32* %11, align 4
  %117 = shl i32 %115, %116
  %118 = load i32, i32* @FTAG, align 4
  %119 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %120 = call i32 @dmu_buf_hold(i32 %107, i32 %110, i32 %117, i32 %118, %struct.TYPE_13__** %16, i32 %119)
  %121 = call i32 @VERIFY0(i32 %120)
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %123 = load i32*, i32** %9, align 8
  %124 = call i32 @dmu_buf_will_dirty(%struct.TYPE_13__* %122, i32* %123)
  %125 = load void (i32*, i32*, i32)*, void (i32*, i32*, i32)** %8, align 8
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %130 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* %12, align 4
  call void %125(i32* %128, i32* %131, i32 %132)
  %133 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %134 = load i32, i32* @FTAG, align 4
  %135 = call i32 @dmu_buf_rele(%struct.TYPE_13__* %133, i32 %134)
  %136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load i32, i32* %10, align 4
  %143 = load i32, i32* %13, align 4
  %144 = mul nsw i32 2, %143
  %145 = add nsw i32 %142, %144
  %146 = add nsw i32 %145, 1
  %147 = load i32, i32* %11, align 4
  %148 = shl i32 %146, %147
  %149 = load i32, i32* @FTAG, align 4
  %150 = load i32, i32* @DMU_READ_NO_PREFETCH, align 4
  %151 = call i32 @dmu_buf_hold(i32 %138, i32 %141, i32 %148, i32 %149, %struct.TYPE_13__** %16, i32 %150)
  %152 = call i32 @VERIFY0(i32 %151)
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %154 = load i32*, i32** %9, align 8
  %155 = call i32 @dmu_buf_will_dirty(%struct.TYPE_13__* %153, i32* %154)
  %156 = load void (i32*, i32*, i32)*, void (i32*, i32*, i32)** %8, align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %12, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %164 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %12, align 4
  call void %156(i32* %162, i32* %165, i32 %166)
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %168 = load i32, i32* @FTAG, align 4
  %169 = call i32 @dmu_buf_rele(%struct.TYPE_13__* %167, i32 %168)
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %171 = load i32, i32* @FTAG, align 4
  %172 = call i32 @dmu_buf_rele(%struct.TYPE_13__* %170, i32 %171)
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 %175, 1
  store i32 %176, i32* %174, align 8
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 3
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @dprintf(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %182)
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %185 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %188 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp eq i32 %186, %189
  br i1 %190, label %191, label %234

191:                                              ; preds = %104
  %192 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = shl i32 %200, %201
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 1
  %205 = load i32, i32* %204, align 4
  %206 = load i32, i32* %11, align 4
  %207 = shl i32 %205, %206
  %208 = load i32*, i32** %9, align 8
  %209 = call i32 @dmu_free_range(i32 %194, i32 %197, i32 %202, i32 %207, i32* %208)
  %210 = load i32, i32* %10, align 4
  %211 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %212 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = mul nsw i32 %215, 2
  store i32 %216, i32* %214, align 4
  %217 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 4
  %219 = load i32, i32* %218, align 4
  %220 = add nsw i32 %219, 1
  store i32 %220, i32* %218, align 4
  %221 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 2
  store i64 0, i64* %222, align 8
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 3
  store i32 0, i32* %224, align 8
  %225 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %226 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %229 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %228, i32 0, i32 4
  %230 = load i32, i32* %229, align 4
  %231 = sub nsw i32 %230, 10
  %232 = shl i32 1, %231
  %233 = call i32 @dprintf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %227, i32 %232)
  br label %234

234:                                              ; preds = %191, %104
  store i32 0, i32* %5, align 4
  br label %235

235:                                              ; preds = %234, %102
  %236 = load i32, i32* %5, align 4
  ret i32 %236
}

declare dso_local i32 @FZAP_BLOCK_SHIFT(%struct.TYPE_12__*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_WRITE_HELD(i32*) #1

declare dso_local i32 @zap_allocate_blocks(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i32 @dmu_prefetch(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dmu_buf_hold(i32, i32, i32, i32, %struct.TYPE_13__**, i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dmu_buf_will_dirty(%struct.TYPE_13__*, i32*) #1

declare dso_local i32 @dmu_buf_rele(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @dprintf(i8*, i32, i32) #1

declare dso_local i32 @dmu_free_range(i32, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
