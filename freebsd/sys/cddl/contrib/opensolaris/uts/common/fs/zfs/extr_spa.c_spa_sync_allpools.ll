; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_sync_allpools.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_sync_allpools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@spa_namespace_lock = common dso_local global i32 0, align 4
@POOL_STATE_ACTIVE = common dso_local global i64 0, align 8
@FTAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spa_sync_allpools() #0 {
  %1 = alloca i32*, align 8
  store i32* null, i32** %1, align 8
  %2 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  br label %3

3:                                                ; preds = %21, %20, %0
  %4 = load i32*, i32** %1, align 8
  %5 = call i32* @spa_next(i32* %4)
  store i32* %5, i32** %1, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %33

7:                                                ; preds = %3
  %8 = load i32*, i32** %1, align 8
  %9 = call i64 @spa_state(i32* %8)
  %10 = load i64, i64* @POOL_STATE_ACTIVE, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %20, label %12

12:                                               ; preds = %7
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @spa_writeable(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %12
  %17 = load i32*, i32** %1, align 8
  %18 = call i64 @spa_suspended(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16, %12, %7
  br label %3

21:                                               ; preds = %16
  %22 = load i32*, i32** %1, align 8
  %23 = load i32, i32* @FTAG, align 4
  %24 = call i32 @spa_open_ref(i32* %22, i32 %23)
  %25 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  %26 = load i32*, i32** %1, align 8
  %27 = call i32 @spa_get_dsl(i32* %26)
  %28 = call i32 @txg_wait_synced(i32 %27, i32 0)
  %29 = call i32 @mutex_enter(i32* @spa_namespace_lock)
  %30 = load i32*, i32** %1, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i32 @spa_close(i32* %30, i32 %31)
  br label %3

33:                                               ; preds = %3
  %34 = call i32 @mutex_exit(i32* @spa_namespace_lock)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32* @spa_next(i32*) #1

declare dso_local i64 @spa_state(i32*) #1

declare dso_local i32 @spa_writeable(i32*) #1

declare dso_local i64 @spa_suspended(i32*) #1

declare dso_local i32 @spa_open_ref(i32*, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @txg_wait_synced(i32, i32) #1

declare dso_local i32 @spa_get_dsl(i32*) #1

declare dso_local i32 @spa_close(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
