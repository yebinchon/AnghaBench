; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_initialize.c_vdev_initialize_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev_initialize.c_vdev_initialize_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, i32, i32*, i32, i32*, i32, i32, %struct.TYPE_14__*, i32, i64, i32* }
%struct.TYPE_14__ = type { i64, %struct.TYPE_16__** }
%struct.TYPE_16__ = type { i32, i32 }

@SCL_CONFIG = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@vdev_initialize_range_add = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_COMPLETE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @vdev_initialize_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vdev_initialize_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_16__*, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %11, %struct.TYPE_15__** %3, align 8
  %12 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 11
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i64 0, i64* %6, align 8
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %16 = call i32 @vdev_is_concrete(%struct.TYPE_15__* %15)
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32*, i32** %4, align 8
  %19 = load i32, i32* @SCL_CONFIG, align 4
  %20 = load i32, i32* @FTAG, align 4
  %21 = load i32, i32* @RW_READER, align 4
  %22 = call i32 @spa_config_enter(i32* %18, i32 %19, i32 %20, i32 %21)
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 10
  store i64 0, i64* %24, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %26 = call i32 @vdev_initialize_load(%struct.TYPE_15__* %25)
  %27 = call i32* (...) @vdev_initialize_block_alloc()
  store i32* %27, i32** %7, align 8
  %28 = call i32* @range_tree_create(i32* null, i32* null)
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 5
  store i32* %28, i32** %30, align 8
  store i64 0, i64* %8, align 8
  br label %31

31:                                               ; preds = %110, %1
  %32 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %44, label %36

36:                                               ; preds = %31
  %37 = load i64, i64* %8, align 8
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 8
  %40 = load %struct.TYPE_14__*, %struct.TYPE_14__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ult i64 %37, %42
  br label %44

44:                                               ; preds = %36, %31
  %45 = phi i1 [ false, %31 ], [ %43, %36 ]
  br i1 %45, label %46, label %113

46:                                               ; preds = %44
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  %51 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %50, align 8
  %52 = load i64, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %51, i64 %52
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  store %struct.TYPE_16__* %54, %struct.TYPE_16__** %9, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 8
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* %6, align 8
  %61 = icmp ne i64 %59, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %46
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %64 = call i32 @vdev_initialize_calculate_progress(%struct.TYPE_15__* %63)
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  store i64 %69, i64* %6, align 8
  br label %70

70:                                               ; preds = %62, %46
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %72 = call i32 @vdev_initialize_ms_mark(%struct.TYPE_16__* %71)
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = call i32 @mutex_enter(i32* %74)
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %77 = call i32 @metaslab_load(%struct.TYPE_16__* %76)
  %78 = call i32 @VERIFY0(i32 %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @vdev_initialize_range_add, align 4
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %84 = call i32 @range_tree_walk(i32 %81, i32 %82, %struct.TYPE_15__* %83)
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = call i32 @mutex_exit(i32* %86)
  %88 = load i32*, i32** %4, align 8
  %89 = load i32, i32* @SCL_CONFIG, align 4
  %90 = load i32, i32* @FTAG, align 4
  %91 = call i32 @spa_config_exit(i32* %88, i32 %89, i32 %90)
  %92 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %93 = load i32*, i32** %7, align 8
  %94 = call i32 @vdev_initialize_ranges(%struct.TYPE_15__* %92, i32* %93)
  store i32 %94, i32* %5, align 4
  %95 = load %struct.TYPE_16__*, %struct.TYPE_16__** %9, align 8
  %96 = call i32 @vdev_initialize_ms_unmark(%struct.TYPE_16__* %95)
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* @SCL_CONFIG, align 4
  %99 = load i32, i32* @FTAG, align 4
  %100 = load i32, i32* @RW_READER, align 4
  %101 = call i32 @spa_config_enter(i32* %97, i32 %98, i32 %99, i32 %100)
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 5
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @range_tree_vacate(i32* %104, i32* null, i32* null)
  %106 = load i32, i32* %5, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %70
  br label %113

109:                                              ; preds = %70
  br label %110

110:                                              ; preds = %109
  %111 = load i64, i64* %8, align 8
  %112 = add i64 %111, 1
  store i64 %112, i64* %8, align 8
  br label %31

113:                                              ; preds = %108, %44
  %114 = load i32*, i32** %4, align 8
  %115 = load i32, i32* @SCL_CONFIG, align 4
  %116 = load i32, i32* @FTAG, align 4
  %117 = call i32 @spa_config_exit(i32* %114, i32 %115, i32 %116)
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 6
  %120 = call i32 @mutex_enter(i32* %119)
  br label %121

121:                                              ; preds = %126, %113
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %121
  %127 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %127, i32 0, i32 7
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 6
  %131 = call i32 @cv_wait(i32* %128, i32* %130)
  br label %121

132:                                              ; preds = %121
  %133 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %133, i32 0, i32 6
  %135 = call i32 @mutex_exit(i32* %134)
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %137 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %136, i32 0, i32 5
  %138 = load i32*, i32** %137, align 8
  %139 = call i32 @range_tree_destroy(i32* %138)
  %140 = load i32*, i32** %7, align 8
  %141 = call i32 @vdev_initialize_block_free(i32* %140)
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 5
  store i32* null, i32** %143, align 8
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 1
  %146 = call i32 @mutex_enter(i32* %145)
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 4
  %149 = load i32, i32* %148, align 8
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %159, label %151

151:                                              ; preds = %132
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %153 = call i64 @vdev_writeable(%struct.TYPE_15__* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %157 = load i32, i32* @VDEV_INITIALIZE_COMPLETE, align 4
  %158 = call i32 @vdev_initialize_change_state(%struct.TYPE_15__* %156, i32 %157)
  br label %159

159:                                              ; preds = %155, %151, %132
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %161 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %160, i32 0, i32 3
  %162 = load i32*, i32** %161, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %169, label %164

164:                                              ; preds = %159
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = icmp eq i64 %167, 0
  br label %169

169:                                              ; preds = %164, %159
  %170 = phi i1 [ true, %159 ], [ %168, %164 ]
  %171 = zext i1 %170 to i32
  %172 = call i32 @ASSERT(i32 %171)
  %173 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %174 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %173, i32 0, i32 1
  %175 = call i32 @mutex_exit(i32* %174)
  %176 = load i32*, i32** %4, align 8
  %177 = call i32 @spa_get_dsl(i32* %176)
  %178 = call i32 @txg_wait_synced(i32 %177, i32 0)
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = call i32 @mutex_enter(i32* %180)
  %182 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %183 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %182, i32 0, i32 3
  store i32* null, i32** %183, align 8
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %185 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %184, i32 0, i32 2
  %186 = call i32 @cv_broadcast(i32* %185)
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 1
  %189 = call i32 @mutex_exit(i32* %188)
  %190 = call i32 (...) @thread_exit()
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @vdev_is_concrete(%struct.TYPE_15__*) #1

declare dso_local i32 @spa_config_enter(i32*, i32, i32, i32) #1

declare dso_local i32 @vdev_initialize_load(%struct.TYPE_15__*) #1

declare dso_local i32* @vdev_initialize_block_alloc(...) #1

declare dso_local i32* @range_tree_create(i32*, i32*) #1

declare dso_local i32 @vdev_initialize_calculate_progress(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_initialize_ms_mark(%struct.TYPE_16__*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @metaslab_load(%struct.TYPE_16__*) #1

declare dso_local i32 @range_tree_walk(i32, i32, %struct.TYPE_15__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_config_exit(i32*, i32, i32) #1

declare dso_local i32 @vdev_initialize_ranges(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @vdev_initialize_ms_unmark(%struct.TYPE_16__*) #1

declare dso_local i32 @range_tree_vacate(i32*, i32*, i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @range_tree_destroy(i32*) #1

declare dso_local i32 @vdev_initialize_block_free(i32*) #1

declare dso_local i64 @vdev_writeable(%struct.TYPE_15__*) #1

declare dso_local i32 @vdev_initialize_change_state(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(i32*) #1

declare dso_local i32 @cv_broadcast(i32*) #1

declare dso_local i32 @thread_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
