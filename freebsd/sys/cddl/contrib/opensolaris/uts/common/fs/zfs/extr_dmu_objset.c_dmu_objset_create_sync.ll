; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_create_sync.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu_objset.c_dmu_objset_create_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32, i32 (i32*, i32, i32, i32*)*, i32, i32, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_14__ = type { i32 }

@FTAG = common dso_local global i32 0, align 4
@RW_READER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"create\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @dmu_objset_create_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmu_objset_create_sync(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %14, %struct.TYPE_15__** %5, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = call i32* @dmu_tx_pool(i32* %15)
  store i32* %16, i32** %6, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @FTAG, align 4
  %22 = call i32 @dsl_dir_hold(i32* %17, i32 %20, i32 %21, %struct.TYPE_13__** %7, i8** %8)
  %23 = call i32 @VERIFY0(i32 %22)
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @dsl_dataset_create_sync(%struct.TYPE_13__* %24, i8* %25, i32* null, i32 %28, i32 %31, i32* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_16__*, %struct.TYPE_16__** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @FTAG, align 4
  %39 = call i32 @dsl_dataset_hold_obj(%struct.TYPE_16__* %36, i32 %37, i32 %38, %struct.TYPE_14__** %9)
  %40 = call i32 @VERIFY0(i32 %39)
  %41 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 0
  %43 = load i32, i32* @RW_READER, align 4
  %44 = load i32, i32* @FTAG, align 4
  %45 = call i32 @rrw_enter(i32* %42, i32 %43, i32 %44)
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = call i32* @dsl_dataset_get_blkptr(%struct.TYPE_14__* %46)
  store i32* %47, i32** %11, align 8
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_16__*, %struct.TYPE_16__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = load i32*, i32** %11, align 8
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = call i32* @dmu_objset_create_impl(i32 %52, %struct.TYPE_14__* %53, i32* %54, i32 %57, i32* %58)
  store i32* %59, i32** %12, align 8
  %60 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* @FTAG, align 4
  %63 = call i32 @rrw_exit(i32* %61, i32 %62)
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %64, i32 0, i32 2
  %66 = load i32 (i32*, i32, i32, i32*)*, i32 (i32*, i32, i32, i32*)** %65, align 8
  %67 = icmp ne i32 (i32*, i32, i32, i32*)* %66, null
  br i1 %67, label %68, label %81

68:                                               ; preds = %2
  %69 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 2
  %71 = load i32 (i32*, i32, i32, i32*)*, i32 (i32*, i32, i32, i32*)** %70, align 8
  %72 = load i32*, i32** %12, align 8
  %73 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32*, i32** %4, align 8
  %80 = call i32 %71(i32* %72, i32 %75, i32 %78, i32* %79)
  br label %81

81:                                               ; preds = %68, %2
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %83 = load i32*, i32** %4, align 8
  %84 = call i32 @spa_history_log_internal_ds(%struct.TYPE_14__* %82, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32* %83, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0))
  %85 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %86 = load i32, i32* @FTAG, align 4
  %87 = call i32 @dsl_dataset_rele(%struct.TYPE_14__* %85, i32 %86)
  %88 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %89 = load i32, i32* @FTAG, align 4
  %90 = call i32 @dsl_dir_rele(%struct.TYPE_13__* %88, i32 %89)
  ret void
}

declare dso_local i32* @dmu_tx_pool(i32*) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @dsl_dir_hold(i32*, i32, i32, %struct.TYPE_13__**, i8**) #1

declare dso_local i32 @dsl_dataset_create_sync(%struct.TYPE_13__*, i8*, i32*, i32, i32, i32*) #1

declare dso_local i32 @dsl_dataset_hold_obj(%struct.TYPE_16__*, i32, i32, %struct.TYPE_14__**) #1

declare dso_local i32 @rrw_enter(i32*, i32, i32) #1

declare dso_local i32* @dsl_dataset_get_blkptr(%struct.TYPE_14__*) #1

declare dso_local i32* @dmu_objset_create_impl(i32, %struct.TYPE_14__*, i32*, i32, i32*) #1

declare dso_local i32 @rrw_exit(i32*, i32) #1

declare dso_local i32 @spa_history_log_internal_ds(%struct.TYPE_14__*, i8*, i32*, i8*) #1

declare dso_local i32 @dsl_dataset_rele(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @dsl_dir_rele(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
