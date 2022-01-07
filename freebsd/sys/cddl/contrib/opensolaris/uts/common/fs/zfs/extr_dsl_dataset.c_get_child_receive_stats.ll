; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_get_child_receive_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_get_child_receive_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"/\00", align 1
@recv_clone_name = common dso_local global i8* null, align 8
@FTAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @get_child_receive_stats(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %9 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %10 = add nsw i32 %9, 6
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %15 = call i32 @dsl_dataset_name(%struct.TYPE_9__* %14, i8* %13)
  %16 = trunc i64 %11 to i32
  %17 = call i32 @strlcat(i8* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = sext i32 %17 to i64
  %19 = icmp ult i64 %18, %11
  br i1 %19, label %20, label %42

20:                                               ; preds = %1
  %21 = load i8*, i8** @recv_clone_name, align 8
  %22 = trunc i64 %11 to i32
  %23 = call i32 @strlcat(i8* %13, i8* %21, i32 %22)
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, %11
  br i1 %25, label %26, label %42

26:                                               ; preds = %20
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FTAG, align 4
  %33 = call i64 @dsl_dataset_hold(i32 %31, i8* %13, i32 %32, %struct.TYPE_9__** %6)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %37 = call i8* @get_receive_resume_stats_impl(%struct.TYPE_9__* %36)
  store i8* %37, i8** %7, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %39 = load i32, i32* @FTAG, align 4
  %40 = call i32 @dsl_dataset_rele(%struct.TYPE_9__* %38, i32 %39)
  %41 = load i8*, i8** %7, align 8
  store i8* %41, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %44

42:                                               ; preds = %26, %20, %1
  %43 = call i8* @spa_strdup(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  store i8* %43, i8** %2, align 8
  store i32 1, i32* %8, align 4
  br label %44

44:                                               ; preds = %42, %35
  %45 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %45)
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dsl_dataset_name(%struct.TYPE_9__*, i8*) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @dsl_dataset_hold(i32, i8*, i32, %struct.TYPE_9__**) #2

declare dso_local i8* @get_receive_resume_stats_impl(%struct.TYPE_9__*) #2

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_9__*, i32) #2

declare dso_local i8* @spa_strdup(i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
