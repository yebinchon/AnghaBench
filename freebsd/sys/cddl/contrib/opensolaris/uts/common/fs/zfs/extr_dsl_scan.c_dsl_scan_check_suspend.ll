; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_check_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_scan.c_dsl_scan_check_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, %struct.TYPE_14__, %struct.TYPE_15__*, i64 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_11__, %struct.TYPE_12__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_12__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i64 }

@B_FALSE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i64 0, align 8
@zfs_dirty_data_max = common dso_local global i32 0, align 4
@POOL_SCAN_RESILVER = common dso_local global i64 0, align 8
@zfs_resilver_min_time_ms = common dso_local global i32 0, align 4
@zfs_scrub_min_time_ms = common dso_local global i32 0, align 4
@zfs_vdev_async_write_active_min_dirty_percent = common dso_local global i32 0, align 4
@zfs_txg_timeout = common dso_local global i64 0, align 8
@zfs_scan_strict_mem_lim = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [44 x i8] c"suspending at bookmark %llx/%llx/%llx/%llx\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"suspending at at DDT bookmark %llx/%llx/%llx/%llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_13__*, %struct.TYPE_12__*)* @dsl_scan_check_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @dsl_scan_check_suspend(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_14__*, align 8
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %14 = icmp ne %struct.TYPE_12__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i64, i64* @B_FALSE, align 8
  store i64 %21, i64* %3, align 8
  br label %176

22:                                               ; preds = %15, %2
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i64, i64* @B_TRUE, align 8
  store i64 %28, i64* %3, align 8
  br label %176

29:                                               ; preds = %22
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 2
  %33 = call i32 @ZB_IS_ZERO(%struct.TYPE_12__* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %29
  %36 = load i64, i64* @B_FALSE, align 8
  store i64 %36, i64* %3, align 8
  br label %176

37:                                               ; preds = %29
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = icmp ne %struct.TYPE_12__* %38, null
  br i1 %39, label %40, label %47

40:                                               ; preds = %37
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i64, i64* @B_FALSE, align 8
  store i64 %46, i64* %3, align 8
  br label %176

47:                                               ; preds = %40, %37
  %48 = call i64 (...) @gethrtime()
  store i64 %48, i64* %6, align 8
  %49 = call i64 (...) @gethrtime()
  store i64 %49, i64* %7, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 2
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_16__*, %struct.TYPE_16__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %55, %62
  store i64 %63, i64* %9, align 8
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = mul nsw i32 %68, 100
  %70 = load i32, i32* @zfs_dirty_data_max, align 4
  %71 = sdiv i32 %69, %70
  store i32 %71, i32* %10, align 4
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @POOL_SCAN_RESILVER, align 8
  %77 = icmp eq i64 %75, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %47
  %79 = load i32, i32* @zfs_resilver_min_time_ms, align 4
  br label %82

80:                                               ; preds = %47
  %81 = load i32, i32* @zfs_scrub_min_time_ms, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  store i32 %83, i32* %11, align 4
  %84 = load i64, i64* %8, align 8
  %85 = call i32 @NSEC2MSEC(i64 %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %82
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* @zfs_vdev_async_write_active_min_dirty_percent, align 4
  %91 = icmp sge i32 %89, %90
  br i1 %91, label %118, label %92

92:                                               ; preds = %88
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 2
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %94, align 8
  %96 = call i64 @txg_sync_waiting(%struct.TYPE_15__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %118, label %98

98:                                               ; preds = %92
  %99 = load i64, i64* %9, align 8
  %100 = call i64 @NSEC2SEC(i64 %99)
  %101 = load i64, i64* @zfs_txg_timeout, align 8
  %102 = icmp sge i64 %100, %101
  br i1 %102, label %118, label %103

103:                                              ; preds = %98, %82
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 2
  %106 = load %struct.TYPE_15__*, %struct.TYPE_15__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %107, align 8
  %109 = call i64 @spa_shutting_down(%struct.TYPE_16__* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %118, label %111

111:                                              ; preds = %103
  %112 = load i64, i64* @zfs_scan_strict_mem_lim, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %174

114:                                              ; preds = %111
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = call i64 @dsl_scan_should_clear(%struct.TYPE_13__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %174

118:                                              ; preds = %114, %103, %98, %92, %88
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %120 = icmp ne %struct.TYPE_12__* %119, null
  br i1 %120, label %121, label %145

121:                                              ; preds = %118
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 3
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = trunc i64 %128 to i32
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = trunc i64 %132 to i32
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @dprintf(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %125, i32 %129, i32 %133, i32 %137)
  %139 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %140, i32 0, i32 2
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = bitcast %struct.TYPE_12__* %141 to i8*
  %144 = bitcast %struct.TYPE_12__* %142 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %143, i8* align 8 %144, i64 32, i1 false)
  br label %169

145:                                              ; preds = %118
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 1
  store %struct.TYPE_14__* %147, %struct.TYPE_14__** %12, align 8
  %148 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %149 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = trunc i64 %156 to i32
  %158 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = trunc i64 %161 to i32
  %163 = load %struct.TYPE_14__*, %struct.TYPE_14__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = trunc i64 %166 to i32
  %168 = call i32 @dprintf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %152, i32 %157, i32 %162, i32 %167)
  br label %169

169:                                              ; preds = %145, %121
  %170 = load i64, i64* @B_TRUE, align 8
  %171 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %171, i32 0, i32 0
  store i64 %170, i64* %172, align 8
  %173 = load i64, i64* @B_TRUE, align 8
  store i64 %173, i64* %3, align 8
  br label %176

174:                                              ; preds = %114, %111
  %175 = load i64, i64* @B_FALSE, align 8
  store i64 %175, i64* %3, align 8
  br label %176

176:                                              ; preds = %174, %169, %45, %35, %27, %20
  %177 = load i64, i64* %3, align 8
  ret i64 %177
}

declare dso_local i32 @ZB_IS_ZERO(%struct.TYPE_12__*) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i32 @NSEC2MSEC(i64) #1

declare dso_local i64 @txg_sync_waiting(%struct.TYPE_15__*) #1

declare dso_local i64 @NSEC2SEC(i64) #1

declare dso_local i64 @spa_shutting_down(%struct.TYPE_16__*) #1

declare dso_local i64 @dsl_scan_should_clear(%struct.TYPE_13__*) #1

declare dso_local i32 @dprintf(i8*, i32, i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
