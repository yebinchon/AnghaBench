; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_export_common.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_export_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64, i32*, i64, i32, i64 }

@spa_mode_global = common dso_local global i32 0, align 4
@FWRITE = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@spa_namespace_lock = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@POOL_STATE_UNINITIALIZED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@POOL_STATE_EXPORTED = common dso_local global i32 0, align 4
@EXDEV = common dso_local global i32 0, align 4
@VDEV_INITIALIZE_ACTIVE = common dso_local global i32 0, align 4
@SCL_ALL = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@TXG_DEFER_SIZE = common dso_local global i64 0, align 8
@ESC_ZFS_POOL_DESTROY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32**, i32, i32)* @spa_export_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_export_common(i8* %0, i32 %1, i32** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_18__*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32** %2, i32*** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32**, i32*** %9, align 8
  %14 = icmp ne i32** %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %5
  %16 = load i32**, i32*** %9, align 8
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %15, %5
  %18 = load i32, i32* @spa_mode_global, align 4
  %19 = load i32, i32* @FWRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* @EROFS, align 4
  %24 = call i32 @SET_ERROR(i32 %23)
  store i32 %24, i32* %6, align 4
  br label %188

25:                                               ; preds = %17
  %26 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %27 = load i8*, i8** %7, align 8
  %28 = call %struct.TYPE_18__* @spa_lookup(i8* %27)
  store %struct.TYPE_18__* %28, %struct.TYPE_18__** %12, align 8
  %29 = icmp eq %struct.TYPE_18__* %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = call i32 @SET_ERROR(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %188

34:                                               ; preds = %25
  %35 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %36 = load i32, i32* @FTAG, align 4
  %37 = call i32 @spa_open_ref(%struct.TYPE_18__* %35, i32 %36)
  %38 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %40 = call i32 @spa_async_suspend(%struct.TYPE_18__* %39)
  %41 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %43 = load i32, i32* @FTAG, align 4
  %44 = call i32 @spa_close(%struct.TYPE_18__* %42, i32 %43)
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @POOL_STATE_UNINITIALIZED, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %140

50:                                               ; preds = %34
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %51, i32 0, i32 6
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %140

55:                                               ; preds = %50
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @txg_wait_synced(i32 %58, i32 0)
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %61 = call i32 @spa_evicting_os_wait(%struct.TYPE_18__* %60)
  %62 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %63 = call i32 @spa_refcount_zero(%struct.TYPE_18__* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %55
  %66 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %65
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @POOL_STATE_UNINITIALIZED, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %70, %55
  %75 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %76 = call i32 @spa_async_resume(%struct.TYPE_18__* %75)
  %77 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %78 = load i32, i32* @EBUSY, align 4
  %79 = call i32 @SET_ERROR(i32 %78)
  store i32 %79, i32* %6, align 4
  br label %188

80:                                               ; preds = %70, %65
  %81 = load i32, i32* %10, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %97, label %83

83:                                               ; preds = %80
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @POOL_STATE_EXPORTED, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %97

87:                                               ; preds = %83
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %89 = call i64 @spa_has_active_shared_spare(%struct.TYPE_18__* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %93 = call i32 @spa_async_resume(%struct.TYPE_18__* %92)
  %94 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %95 = load i32, i32* @EXDEV, align 4
  %96 = call i32 @SET_ERROR(i32 %95)
  store i32 %96, i32* %6, align 4
  br label %188

97:                                               ; preds = %87, %83, %80
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = icmp ne i32* %100, null
  br i1 %101, label %102, label %108

102:                                              ; preds = %97
  %103 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %104 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @VDEV_INITIALIZE_ACTIVE, align 4
  %107 = call i32 @vdev_initialize_stop_all(i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %102, %97
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @POOL_STATE_UNINITIALIZED, align 4
  %111 = icmp ne i32 %109, %110
  br i1 %111, label %112, label %139

112:                                              ; preds = %108
  %113 = load i32, i32* %11, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %139, label %115

115:                                              ; preds = %112
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %117 = load i32, i32* @SCL_ALL, align 4
  %118 = load i32, i32* @FTAG, align 4
  %119 = load i32, i32* @RW_WRITER, align 4
  %120 = call i32 @spa_config_enter(%struct.TYPE_18__* %116, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %123 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 8
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %125 = call i64 @spa_last_synced_txg(%struct.TYPE_18__* %124)
  %126 = load i64, i64* @TXG_DEFER_SIZE, align 8
  %127 = add nsw i64 %125, %126
  %128 = add nsw i64 %127, 1
  %129 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 4
  store i64 %128, i64* %130, align 8
  %131 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %132 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %131, i32 0, i32 3
  %133 = load i32*, i32** %132, align 8
  %134 = call i32 @vdev_config_dirty(i32* %133)
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %136 = load i32, i32* @SCL_ALL, align 4
  %137 = load i32, i32* @FTAG, align 4
  %138 = call i32 @spa_config_exit(%struct.TYPE_18__* %135, i32 %136, i32 %137)
  br label %139

139:                                              ; preds = %115, %112, %108
  br label %140

140:                                              ; preds = %139, %50, %34
  %141 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %142 = load i32, i32* @ESC_ZFS_POOL_DESTROY, align 4
  %143 = call i32 @spa_event_notify(%struct.TYPE_18__* %141, i32* null, i32* null, i32 %142)
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %145 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = load i32, i32* @POOL_STATE_UNINITIALIZED, align 4
  %148 = icmp ne i32 %146, %147
  br i1 %148, label %149, label %154

149:                                              ; preds = %140
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %151 = call i32 @spa_unload(%struct.TYPE_18__* %150)
  %152 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %153 = call i32 @spa_deactivate(%struct.TYPE_18__* %152)
  br label %154

154:                                              ; preds = %149, %140
  %155 = load i32**, i32*** %9, align 8
  %156 = icmp ne i32** %155, null
  br i1 %156, label %157, label %171

157:                                              ; preds = %154
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %159 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %171

162:                                              ; preds = %157
  %163 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %163, i32 0, i32 2
  %165 = load i64, i64* %164, align 8
  %166 = load i32**, i32*** %9, align 8
  %167 = call i64 @nvlist_dup(i64 %165, i32** %166, i32 0)
  %168 = icmp eq i64 %167, 0
  %169 = zext i1 %168 to i32
  %170 = call i32 @VERIFY(i32 %169)
  br label %171

171:                                              ; preds = %162, %157, %154
  %172 = load i32, i32* %8, align 4
  %173 = load i32, i32* @POOL_STATE_UNINITIALIZED, align 4
  %174 = icmp ne i32 %172, %173
  br i1 %174, label %175, label %186

175:                                              ; preds = %171
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %183, label %178

178:                                              ; preds = %175
  %179 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %180 = load i32, i32* @B_TRUE, align 4
  %181 = load i32, i32* @B_TRUE, align 4
  %182 = call i32 @spa_write_cachefile(%struct.TYPE_18__* %179, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %178, %175
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  %185 = call i32 @spa_remove(%struct.TYPE_18__* %184)
  br label %186

186:                                              ; preds = %183, %171
  %187 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  store i32 0, i32* %6, align 4
  br label %188

188:                                              ; preds = %186, %91, %74, %30, %22
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_18__* @spa_lookup(i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @spa_open_ref(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @spa_async_suspend(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_close(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_evicting_os_wait(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_refcount_zero(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_async_resume(%struct.TYPE_18__*) #1

declare dso_local i64 @spa_has_active_shared_spare(%struct.TYPE_18__*) #1

declare dso_local i32 @vdev_initialize_stop_all(i32*, i32) #1

declare dso_local i32 @spa_config_enter(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i64 @spa_last_synced_txg(%struct.TYPE_18__*) #1

declare dso_local i32 @vdev_config_dirty(i32*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @spa_event_notify(%struct.TYPE_18__*, i32*, i32*, i32) #1

declare dso_local i32 @spa_unload(%struct.TYPE_18__*) #1

declare dso_local i32 @spa_deactivate(%struct.TYPE_18__*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i64 @nvlist_dup(i64, i32**, i32) #1

declare dso_local i32 @spa_write_cachefile(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @spa_remove(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
