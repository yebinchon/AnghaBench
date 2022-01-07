; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_impl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_impl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_9__*, i8*, i32, i32**)*, i8*, i8*, i32*, i32* }

@dsl_dataset_user_release_check = common dso_local global i32 0, align 4
@dsl_dataset_user_release_sync = common dso_local global i32 0, align 4
@ZFS_SPACE_CHECK_EXTRA_RESERVED = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_9__*)* @dsl_dataset_user_release_impl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsl_dataset_user_release_impl(i32* %0, i32* %1, %struct.TYPE_9__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca %struct.TYPE_10__, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %7, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32* @nvlist_next_nvpair(i32* %12, i32* null)
  store i32* %13, i32** %9, align 8
  %14 = load i32*, i32** %9, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %51

17:                                               ; preds = %3
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %19 = icmp ne %struct.TYPE_9__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 (%struct.TYPE_9__*, i8*, i32, i32**)* @dsl_dataset_hold_obj_string, i32 (%struct.TYPE_9__*, i8*, i32, i32**)** %21, align 8
  %22 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @spa_name(i32 %24)
  store i8* %25, i8** %10, align 8
  br label %30

26:                                               ; preds = %17
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  store i32 (%struct.TYPE_9__*, i8*, i32, i32**)* @dsl_dataset_hold, i32 (%struct.TYPE_9__*, i8*, i32, i32**)** %27, align 8
  %28 = load i32*, i32** %9, align 8
  %29 = call i8* @nvpair_name(i32* %28)
  store i8* %29, i8** %10, align 8
  br label %30

30:                                               ; preds = %26, %20
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 4
  store i32* %31, i32** %32, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 3
  store i32* %33, i32** %34, align 8
  %35 = call i8* (...) @fnvlist_alloc()
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  store i8* %35, i8** %36, align 8
  %37 = call i8* (...) @fnvlist_alloc()
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  store i8* %37, i8** %38, align 8
  %39 = load i8*, i8** %10, align 8
  %40 = load i32, i32* @dsl_dataset_user_release_check, align 4
  %41 = load i32, i32* @dsl_dataset_user_release_sync, align 4
  %42 = load i32, i32* @ZFS_SPACE_CHECK_EXTRA_RESERVED, align 4
  %43 = call i32 @dsl_sync_task(i8* %39, i32 %40, i32 %41, %struct.TYPE_10__* %8, i32 0, i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 2
  %45 = load i8*, i8** %44, align 8
  %46 = call i32 @fnvlist_free(i8* %45)
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 1
  %48 = load i8*, i8** %47, align 8
  %49 = call i32 @fnvlist_free(i8* %48)
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %30, %16
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj_string(%struct.TYPE_9__*, i8*, i32, i32**) #1

declare dso_local i8* @spa_name(i32) #1

declare dso_local i32 @dsl_dataset_hold(%struct.TYPE_9__*, i8*, i32, i32**) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i8* @fnvlist_alloc(...) #1

declare dso_local i32 @dsl_sync_task(i8*, i32, i32, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @fnvlist_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
