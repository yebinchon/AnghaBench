; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_dsl_dataset_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i64*, i64*, i64*, i64*, i32, i64*, i32*, i32, i32 }
%struct.TYPE_15__ = type { i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_16__ = type { i64, i32 }

@TXG_MASK = common dso_local global i64 0, align 8
@DS_FIELD_RESUME_OBJECT = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_OFFSET = common dso_local global i32 0, align 4
@DS_FIELD_RESUME_BYTES = common dso_local global i32 0, align 4
@SPA_FEATURES = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dsl_dataset_sync(%struct.TYPE_14__* %0, i32* %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %6, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %9 = call i32 @dmu_tx_is_syncing(%struct.TYPE_15__* %8)
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 6
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__* %17)
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i32 @ASSERT(i32 %22)
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %24, i32 0, i32 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %28 = call i32 @dmu_buf_will_dirty(i32 %26, %struct.TYPE_15__* %27)
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 7
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %33 = call %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__* %32)
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  store i32 %31, i32* %34, align 8
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  %37 = load i64*, i64** %36, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @TXG_MASK, align 8
  %42 = and i64 %40, %41
  %43 = getelementptr inbounds i64, i64* %37, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %137

46:                                               ; preds = %3
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @DS_FIELD_RESUME_OBJECT, align 4
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @TXG_MASK, align 8
  %63 = and i64 %61, %62
  %64 = getelementptr inbounds i64, i64* %58, i64 %63
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %66 = call i32 @zap_update(i32 %51, i32 %54, i32 %55, i32 8, i32 1, i64* %64, %struct.TYPE_15__* %65)
  %67 = call i32 @VERIFY0(i32 %66)
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 1
  %70 = load %struct.TYPE_13__*, %struct.TYPE_13__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 4
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @DS_FIELD_RESUME_OFFSET, align 4
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 2
  %79 = load i64*, i64** %78, align 8
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TXG_MASK, align 8
  %84 = and i64 %82, %83
  %85 = getelementptr inbounds i64, i64* %79, i64 %84
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %87 = call i32 @zap_update(i32 %72, i32 %75, i32 %76, i32 8, i32 1, i64* %85, %struct.TYPE_15__* %86)
  %88 = call i32 @VERIFY0(i32 %87)
  %89 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 4
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @DS_FIELD_RESUME_BYTES, align 4
  %98 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %98, i32 0, i32 0
  %100 = load i64*, i64** %99, align 8
  %101 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @TXG_MASK, align 8
  %105 = and i64 %103, %104
  %106 = getelementptr inbounds i64, i64* %100, i64 %105
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %108 = call i32 @zap_update(i32 %93, i32 %96, i32 %97, i32 8, i32 1, i64* %106, %struct.TYPE_15__* %107)
  %109 = call i32 @VERIFY0(i32 %108)
  %110 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 1
  %112 = load i64*, i64** %111, align 8
  %113 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @TXG_MASK, align 8
  %117 = and i64 %115, %116
  %118 = getelementptr inbounds i64, i64* %112, i64 %117
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 2
  %121 = load i64*, i64** %120, align 8
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @TXG_MASK, align 8
  %126 = and i64 %124, %125
  %127 = getelementptr inbounds i64, i64* %121, i64 %126
  store i64 0, i64* %127, align 8
  %128 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 0
  %130 = load i64*, i64** %129, align 8
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @TXG_MASK, align 8
  %135 = and i64 %133, %134
  %136 = getelementptr inbounds i64, i64* %130, i64 %135
  store i64 0, i64* %136, align 8
  br label %137

137:                                              ; preds = %46, %3
  %138 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %138, i32 0, i32 6
  %140 = load i32*, i32** %139, align 8
  %141 = load i32*, i32** %5, align 8
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %143 = call i32 @dmu_objset_sync(i32* %140, i32* %141, %struct.TYPE_15__* %142)
  store i64 0, i64* %7, align 8
  br label %144

144:                                              ; preds = %179, %137
  %145 = load i64, i64* %7, align 8
  %146 = load i64, i64* @SPA_FEATURES, align 8
  %147 = icmp ult i64 %145, %146
  br i1 %147, label %148, label %182

148:                                              ; preds = %144
  %149 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %149, i32 0, i32 5
  %151 = load i64*, i64** %150, align 8
  %152 = load i64, i64* %7, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %178

156:                                              ; preds = %148
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 3
  %159 = load i64*, i64** %158, align 8
  %160 = load i64, i64* %7, align 8
  %161 = getelementptr inbounds i64, i64* %159, i64 %160
  %162 = load i64, i64* %161, align 8
  %163 = icmp ne i64 %162, 0
  br i1 %163, label %164, label %165

164:                                              ; preds = %156
  br label %179

165:                                              ; preds = %156
  %166 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %166, i32 0, i32 4
  %168 = load i32, i32* %167, align 8
  %169 = load i64, i64* %7, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %171 = call i32 @dsl_dataset_activate_feature(i32 %168, i64 %169, %struct.TYPE_15__* %170)
  %172 = load i64, i64* @B_TRUE, align 8
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i32 0, i32 3
  %175 = load i64*, i64** %174, align 8
  %176 = load i64, i64* %7, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  store i64 %172, i64* %177, align 8
  br label %178

178:                                              ; preds = %165, %148
  br label %179

179:                                              ; preds = %178, %164
  %180 = load i64, i64* %7, align 8
  %181 = add i64 %180, 1
  store i64 %181, i64* %7, align 8
  br label %144

182:                                              ; preds = %144
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dmu_tx_is_syncing(%struct.TYPE_15__*) #1

declare dso_local %struct.TYPE_16__* @dsl_dataset_phys(%struct.TYPE_14__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, %struct.TYPE_15__*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_update(i32, i32, i32, i32, i32, i64*, %struct.TYPE_15__*) #1

declare dso_local i32 @dmu_objset_sync(i32*, i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @dsl_dataset_activate_feature(i32, i64, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
