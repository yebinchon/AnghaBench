; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_verify_logs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_verify_logs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32* }

@SPA_IMPORT_ASSEMBLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"spa_check_logs failed so dropping the logs\00", align 1
@FM_EREPORT_ZFS_LOG_REPLAY = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"spa_check_logs failed\00", align 1
@VDEV_AUX_BAD_LOG = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i64, i8**)* @spa_ld_verify_logs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_verify_logs(%struct.TYPE_7__* %0, i64 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8** %2, i8*** %7, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %8, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* @SPA_IMPORT_ASSEMBLE, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %44

16:                                               ; preds = %3
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = call i64 @spa_writeable(%struct.TYPE_7__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %16
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %22 = call i64 @spa_check_logs(%struct.TYPE_7__* %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %43

25:                                               ; preds = %20
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %25
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %32 = call i32 @spa_load_note(%struct.TYPE_7__* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %42

33:                                               ; preds = %25
  %34 = load i8*, i8** @FM_EREPORT_ZFS_LOG_REPLAY, align 8
  %35 = load i8**, i8*** %7, align 8
  store i8* %34, i8** %35, align 8
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %37 = call i32 @spa_load_failed(%struct.TYPE_7__* %36, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32*, i32** %8, align 8
  %39 = load i32, i32* @VDEV_AUX_BAD_LOG, align 4
  %40 = load i32, i32* @ENXIO, align 4
  %41 = call i32 @spa_vdev_err(i32* %38, i32 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %45

42:                                               ; preds = %30
  br label %43

43:                                               ; preds = %42, %20
  br label %44

44:                                               ; preds = %43, %16, %3
  store i32 0, i32* %4, align 4
  br label %45

45:                                               ; preds = %44, %33
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i64 @spa_writeable(%struct.TYPE_7__*) #1

declare dso_local i64 @spa_check_logs(%struct.TYPE_7__*) #1

declare dso_local i32 @spa_load_note(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
