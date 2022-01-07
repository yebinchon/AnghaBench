; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_initialize.c_vdev_initialize_calculate_progress.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_initialize.c_vdev_initialize_calculate_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, i64, i64, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64, i64, i32*, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, i64, i32, %struct.TYPE_15__*, i32 }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_17__ = type { i64, i64 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@vdev_raidz_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*)* @vdev_initialize_calculate_progress to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_initialize_calculate_progress(%struct.TYPE_16__* %0) #0 {
  %2 = alloca %struct.TYPE_16__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_17__, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %2, align 8
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SCL_CONFIG, align 4
  %14 = load i32, i32* @RW_READER, align 4
  %15 = call i64 @spa_config_held(i32 %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %1
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @SCL_CONFIG, align 4
  %22 = load i32, i32* @RW_WRITER, align 4
  %23 = call i64 @spa_config_held(i32 %20, i32 %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %17, %1
  %26 = phi i1 [ true, %1 ], [ %24, %17 ]
  %27 = zext i1 %26 to i32
  %28 = call i32 @ASSERT(i32 %27)
  %29 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  %37 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %37, i32 0, i32 2
  store i64 0, i64* %38, align 8
  store i64 0, i64* %3, align 8
  br label %39

39:                                               ; preds = %216, %25
  %40 = load i64, i64* %3, align 8
  %41 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 4
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ult i64 %40, %45
  br i1 %46, label %47, label %219

47:                                               ; preds = %39
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  %52 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %51, align 8
  %53 = load i64, i64* %3, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %52, i64 %53
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %54, align 8
  store %struct.TYPE_18__* %55, %struct.TYPE_18__** %4, align 8
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = call i32 @mutex_enter(i32* %57)
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = call i64 @space_map_allocated(i32 %64)
  %66 = sub i64 %61, %65
  store i64 %66, i64* %5, align 8
  %67 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %67, i32 0, i32 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %71, @vdev_raidz_ops
  br i1 %72, label %73, label %81

73:                                               ; preds = %47
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 4
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = udiv i64 %79, %78
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %73, %47
  %82 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = add i64 %88, %91
  %93 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i64 %92, i64* %93, align 8
  %94 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %95 = call i32 @vdev_xlate(%struct.TYPE_16__* %94, %struct.TYPE_17__* %6, %struct.TYPE_17__* %7)
  %96 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sle i64 %98, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %81
  %103 = load i64, i64* %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = add i64 %106, %103
  store i64 %107, i64* %105, align 8
  %108 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %108, i32 0, i32 2
  %110 = call i32 @mutex_exit(i32* %109)
  br label %216

111:                                              ; preds = %81
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = icmp sgt i64 %114, %116
  br i1 %117, label %118, label %132

118:                                              ; preds = %111
  %119 = load i64, i64* %5, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = add i64 %122, %119
  store i64 %123, i64* %121, align 8
  %124 = load i64, i64* %5, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  %128 = add i64 %127, %124
  store i64 %128, i64* %126, align 8
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 2
  %131 = call i32 @mutex_exit(i32* %130)
  br label %216

132:                                              ; preds = %111
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = call i32 @metaslab_load(%struct.TYPE_18__* %134)
  %136 = call i32 @VERIFY0(i32 %135)
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 3
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %139, i32 0, i32 0
  %141 = call %struct.TYPE_17__* @avl_first(i32* %140)
  store %struct.TYPE_17__* %141, %struct.TYPE_17__** %8, align 8
  br label %142

142:                                              ; preds = %205, %133
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %144 = icmp ne %struct.TYPE_17__* %143, null
  br i1 %144, label %145, label %212

145:                                              ; preds = %142
  %146 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 0
  store i64 %148, i64* %149, align 8
  %150 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %150, i32 0, i32 1
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %6, i32 0, i32 1
  store i64 %152, i64* %153, align 8
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %155 = call i32 @vdev_xlate(%struct.TYPE_16__* %154, %struct.TYPE_17__* %6, %struct.TYPE_17__* %7)
  %156 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %157, %159
  store i64 %160, i64* %9, align 8
  %161 = load i64, i64* %9, align 8
  %162 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = add i64 %164, %161
  store i64 %165, i64* %163, align 8
  %166 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %167 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %170 = load i64, i64* %169, align 8
  %171 = icmp sgt i64 %168, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %145
  %173 = load i64, i64* %9, align 8
  %174 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %175 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %174, i32 0, i32 2
  %176 = load i64, i64* %175, align 8
  %177 = add i64 %176, %173
  store i64 %177, i64* %175, align 8
  br label %204

178:                                              ; preds = %145
  %179 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = icmp sgt i64 %181, %183
  br i1 %184, label %185, label %203

185:                                              ; preds = %178
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 3
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp slt i64 %188, %190
  br i1 %191, label %192, label %203

192:                                              ; preds = %185
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %194 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %193, i32 0, i32 3
  %195 = load i64, i64* %194, align 8
  %196 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %195, %197
  %199 = load %struct.TYPE_16__*, %struct.TYPE_16__** %2, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %199, i32 0, i32 2
  %201 = load i64, i64* %200, align 8
  %202 = add i64 %201, %198
  store i64 %202, i64* %200, align 8
  br label %203

203:                                              ; preds = %192, %185, %178
  br label %204

204:                                              ; preds = %203, %172
  br label %205

205:                                              ; preds = %204
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_15__*, %struct.TYPE_15__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %208, i32 0, i32 0
  %210 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %211 = call %struct.TYPE_17__* @AVL_NEXT(i32* %209, %struct.TYPE_17__* %210)
  store %struct.TYPE_17__* %211, %struct.TYPE_17__** %8, align 8
  br label %142

212:                                              ; preds = %142
  %213 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %213, i32 0, i32 2
  %215 = call i32 @mutex_exit(i32* %214)
  br label %216

216:                                              ; preds = %212, %118, %102
  %217 = load i64, i64* %3, align 8
  %218 = add i64 %217, 1
  store i64 %218, i64* %3, align 8
  br label %39

219:                                              ; preds = %39
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @spa_config_held(i32, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @space_map_allocated(i32) #1

declare dso_local i32 @vdev_xlate(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_18__*) #1

declare dso_local %struct.TYPE_17__* @avl_first(i32*) #1

declare dso_local %struct.TYPE_17__* @AVL_NEXT(i32*, %struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
