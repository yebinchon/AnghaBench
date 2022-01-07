; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_onexit_hold_cleanup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_onexit_hold_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@dsl_dataset_user_release_onexit = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64)* @dsl_onexit_hold_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_onexit_hold_cleanup(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load i64, i64* %6, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %3
  %11 = load i32*, i32** %5, align 8
  %12 = call i64 @nvlist_empty(i32* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %10, %3
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @fnvlist_free(i32* %15)
  br label %42

17:                                               ; preds = %10
  %18 = load i32*, i32** %4, align 8
  %19 = icmp ne i32* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i32, i32* @KM_SLEEP, align 4
  %23 = call %struct.TYPE_4__* @kmem_alloc(i32 16, i32 %22)
  store %struct.TYPE_4__* %23, %struct.TYPE_4__** %7, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @spa_name(i32* %27)
  %29 = call i32 @strlcpy(i32 %26, i32 %28, i32 4)
  %30 = load i32*, i32** %4, align 8
  %31 = call i32 @spa_load_guid(i32* %30)
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  %34 = load i32*, i32** %5, align 8
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32* %34, i32** %36, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load i32, i32* @dsl_dataset_user_release_onexit, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = call i32 @zfs_onexit_add_cb(i64 %37, i32 %38, %struct.TYPE_4__* %39, i32* null)
  %41 = call i32 @VERIFY0(i32 %40)
  br label %42

42:                                               ; preds = %17, %14
  ret void
}

declare dso_local i64 @nvlist_empty(i32*) #1

declare dso_local i32 @fnvlist_free(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.TYPE_4__* @kmem_alloc(i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @spa_name(i32*) #1

declare dso_local i32 @spa_load_guid(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zfs_onexit_add_cb(i64, i32, %struct.TYPE_4__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
