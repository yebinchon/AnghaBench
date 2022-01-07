; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_sync_one.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_userhold.c_dsl_dataset_user_release_sync_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_12__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"release\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"tag=%s refs=%lld\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32*, i32*)* @dsl_dataset_user_release_sync_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dsl_dataset_user_release_sync_one(%struct.TYPE_11__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 2
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  store %struct.TYPE_10__* %16, %struct.TYPE_10__** %7, align 8
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load i32*, i32** %5, align 8
  %21 = call i32* @nvlist_next_nvpair(i32* %20, i32* null)
  store i32* %21, i32** %9, align 8
  br label %22

22:                                               ; preds = %66, %3
  %23 = load i32*, i32** %9, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %70

25:                                               ; preds = %22
  %26 = load i32*, i32** %9, align 8
  %27 = call i8* @nvpair_name(i32* %26)
  store i8* %27, i8** %11, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = load i32*, i32** %6, align 8
  %34 = call i32 @dsl_pool_user_release(%struct.TYPE_10__* %28, i32 %31, i8* %32, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %25
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ENOENT, align 4
  %40 = icmp eq i32 %38, %39
  br label %41

41:                                               ; preds = %37, %25
  %42 = phi i1 [ true, %25 ], [ %40, %37 ]
  %43 = zext i1 %42 to i32
  %44 = call i32 @VERIFY(i32 %43)
  %45 = load i32*, i32** %8, align 8
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %47 = call %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__* %46)
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i8*, i8** %11, align 8
  %51 = load i32*, i32** %6, align 8
  %52 = call i32 @zap_remove(i32* %45, i32 %49, i8* %50, i32* %51)
  %53 = call i32 @VERIFY0(i32 %52)
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = add nsw i64 %56, -1
  store i64 %57, i64* %55, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load i8*, i8** %11, align 8
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %63 to i32
  %65 = call i32 @spa_history_log_internal_ds(%struct.TYPE_11__* %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i8* %60, i32 %64)
  br label %66

66:                                               ; preds = %41
  %67 = load i32*, i32** %5, align 8
  %68 = load i32*, i32** %9, align 8
  %69 = call i32* @nvlist_next_nvpair(i32* %67, i32* %68)
  store i32* %69, i32** %9, align 8
  br label %22

70:                                               ; preds = %22
  ret void
}

declare dso_local i32* @nvlist_next_nvpair(i32*, i32*) #1

declare dso_local i8* @nvpair_name(i32*) #1

declare dso_local i32 @dsl_pool_user_release(%struct.TYPE_10__*, i32, i8*, i32*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @zap_remove(i32*, i32, i8*, i32*) #1

declare dso_local %struct.TYPE_12__* @dsl_dataset_phys(%struct.TYPE_11__*) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_11__*, i8*, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
