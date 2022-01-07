; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_recv_resume_begin_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_send.c_dmu_recv_resume_begin_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i8*, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@recv_clone_name = common dso_local global i8* null, align 8
@FTAG = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@DS_FLAG_INCONSISTENT = common dso_local global i32 0, align 4
@dmu_recv_tag = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"resume receive\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dmu_recv_resume_begin_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_recv_resume_begin_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = call i32* @dmu_tx_pool(i32* %14)
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %7, align 8
  %21 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %22 = add nsw i32 %21, 6
  %23 = zext i32 %22 to i64
  %24 = call i8* @llvm.stacksave()
  store i8* %24, i8** %10, align 8
  %25 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %11, align 8
  %26 = trunc i64 %23 to i32
  %27 = load i8*, i8** %7, align 8
  %28 = load i8*, i8** @recv_clone_name, align 8
  %29 = call i32 @snprintf(i8* %25, i32 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %27, i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* @FTAG, align 4
  %32 = call i64 @dsl_dataset_hold(i32* %30, i8* %25, i32 %31, %struct.TYPE_13__** %8)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %2
  %35 = load i32*, i32** %6, align 8
  %36 = load i8*, i8** %7, align 8
  %37 = load i32, i32* @FTAG, align 4
  %38 = call i64 @dsl_dataset_hold(i32* %35, i8* %36, i32 %37, %struct.TYPE_13__** %8)
  %39 = call i32 @VERIFY0(i64 %38)
  %40 = load i32, i32* @B_TRUE, align 4
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %43, i32 0, i32 2
  store i32 %40, i32* %44, align 8
  br label %45

45:                                               ; preds = %34, %2
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %47 = call i32 @DS_IS_INCONSISTENT(%struct.TYPE_13__* %46)
  %48 = call i32 @ASSERT(i32 %47)
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = call i32 @dmu_buf_will_dirty(i32 %51, i32* %52)
  %54 = load i32, i32* @DS_FLAG_INCONSISTENT, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %57 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %56)
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, %55
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  store i32 %63, i32* %9, align 4
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %65 = load i32, i32* @FTAG, align 4
  %66 = call i32 @dsl_dataset_rele(%struct.TYPE_13__* %64, i32 %65)
  %67 = load i32*, i32** %6, align 8
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @dmu_recv_tag, align 4
  %70 = call i64 @dsl_dataset_own_obj(i32* %67, i32 %68, i32 %69, %struct.TYPE_13__** %8)
  %71 = call i32 @VERIFY0(i64 %70)
  %72 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %4, align 8
  %76 = call i32 @dmu_buf_will_dirty(i32 %74, i32* %75)
  %77 = load i32, i32* @DS_FLAG_INCONSISTENT, align 4
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %79 = call %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__* %78)
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 0
  %85 = load i32, i32* @RW_READER, align 4
  %86 = load i32, i32* @FTAG, align 4
  %87 = call i32 @rrw_enter(i32* %84, i32 %85, i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %89 = call i32 @dsl_dataset_get_blkptr(%struct.TYPE_13__* %88)
  %90 = call i32 @BP_IS_HOLE(i32 %89)
  %91 = icmp ne i32 %90, 0
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  %94 = call i32 @ASSERT(i32 %93)
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* @FTAG, align 4
  %98 = call i32 @rrw_exit(i32* %96, i32 %97)
  %99 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %100 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  store %struct.TYPE_13__* %99, %struct.TYPE_13__** %103, align 8
  %104 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = call i32 @spa_history_log_internal_ds(%struct.TYPE_13__* %104, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32* %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0))
  %107 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %107)
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i64 @dsl_dataset_hold(i32*, i8*, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @VERIFY0(i64) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @DS_IS_INCONSISTENT(%struct.TYPE_13__*) #1

declare dso_local i32 @dmu_buf_will_dirty(i32, i32*) #1

declare dso_local %struct.TYPE_15__* @dsl_dataset_phys(%struct.TYPE_13__*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_13__*, i32) #1

declare dso_local i64 @dsl_dataset_own_obj(i32*, i32, i32, %struct.TYPE_13__**) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32 @BP_IS_HOLE(i32) #1

declare dso_local i32 @dsl_dataset_get_blkptr(%struct.TYPE_13__*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_13__*, i8*, i32*, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
