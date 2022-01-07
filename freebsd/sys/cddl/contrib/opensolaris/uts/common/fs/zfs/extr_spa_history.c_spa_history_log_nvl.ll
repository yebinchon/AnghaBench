; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_history.c_spa_history_log_nvl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa_history.c_spa_history_log_nvl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@SPA_VERSION_ZPOOL_HISTORY = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TXG_WAIT = common dso_local global i32 0, align 4
@ZPOOL_HIST_ZONE = common dso_local global i32 0, align 4
@ZPOOL_HIST_WHO = common dso_local global i32 0, align 4
@spa_history_log_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spa_history_log_nvl(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %9 = load i32*, i32** %4, align 8
  %10 = call i64 @spa_version(i32* %9)
  %11 = load i64, i64* @SPA_VERSION_ZPOOL_HISTORY, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  store i32 %14, i32* %3, align 4
  br label %68

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i64 @spa_version(i32* %16)
  %18 = load i64, i64* @SPA_VERSION_ZPOOL_HISTORY, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @spa_writeable(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %20, %15
  %25 = load i32, i32* @EINVAL, align 4
  %26 = call i32 @SET_ERROR(i32 %25)
  store i32 %26, i32* %3, align 4
  br label %68

27:                                               ; preds = %20
  %28 = load i32*, i32** %4, align 8
  %29 = call %struct.TYPE_3__* @spa_get_dsl(i32* %28)
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32* @dmu_tx_create_dd(i32 %31)
  store i32* %32, i32** %7, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load i32, i32* @TXG_WAIT, align 4
  %35 = call i32 @dmu_tx_assign(i32* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %27
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @dmu_tx_abort(i32* %39)
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %68

42:                                               ; preds = %27
  %43 = load i32*, i32** %5, align 8
  %44 = call i32* @fnvlist_dup(i32* %43)
  store i32* %44, i32** %8, align 8
  %45 = call i32* (...) @spa_history_zone()
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* @ZPOOL_HIST_ZONE, align 4
  %50 = call i32* (...) @spa_history_zone()
  %51 = call i32 @fnvlist_add_string(i32* %48, i32 %49, i32* %50)
  br label %52

52:                                               ; preds = %47, %42
  %53 = load i32*, i32** %8, align 8
  %54 = load i32, i32* @ZPOOL_HIST_WHO, align 4
  %55 = call i32 (...) @CRED()
  %56 = call i32 @crgetruid(i32 %55)
  %57 = call i32 @fnvlist_add_uint64(i32* %53, i32 %54, i32 %56)
  %58 = load i32*, i32** %4, align 8
  %59 = call %struct.TYPE_3__* @spa_get_dsl(i32* %58)
  %60 = load i32, i32* @spa_history_log_sync, align 4
  %61 = load i32*, i32** %8, align 8
  %62 = load i32, i32* @ZFS_SPACE_CHECK_NONE, align 4
  %63 = load i32*, i32** %7, align 8
  %64 = call i32 @dsl_sync_task_nowait(%struct.TYPE_3__* %59, i32 %60, i32* %61, i32 0, i32 %62, i32* %63)
  %65 = load i32*, i32** %7, align 8
  %66 = call i32 @dmu_tx_commit(i32* %65)
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %68

68:                                               ; preds = %52, %38, %24, %13
  %69 = load i32, i32* %3, align 4
  ret i32 %69
}

declare dso_local i64 @spa_version(i32*) #1

declare dso_local i32 @spa_writeable(i32*) #1

declare dso_local i32 @SET_ERROR(i32) #1

declare dso_local i32* @dmu_tx_create_dd(i32) #1

declare dso_local %struct.TYPE_3__* @spa_get_dsl(i32*) #1

declare dso_local i32 @dmu_tx_assign(i32*, i32) #1

declare dso_local i32 @dmu_tx_abort(i32*) #1

declare dso_local i32* @fnvlist_dup(i32*) #1

declare dso_local i32* @spa_history_zone(...) #1

declare dso_local i32 @fnvlist_add_string(i32*, i32, i32*) #1

declare dso_local i32 @fnvlist_add_uint64(i32*, i32, i32) #1

declare dso_local i32 @crgetruid(i32) #1

declare dso_local i32 @CRED(...) #1

declare dso_local i32 @dsl_sync_task_nowait(%struct.TYPE_3__*, i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @dmu_tx_commit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
