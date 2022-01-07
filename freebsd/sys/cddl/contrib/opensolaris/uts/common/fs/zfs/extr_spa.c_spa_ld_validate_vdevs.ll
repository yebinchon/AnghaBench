; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_validate_vdevs.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_validate_vdevs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }

@SCL_ALL = common dso_local global i32 0, align 4
@FTAG = common dso_local global i32 0, align 4
@RW_WRITER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"vdev_validate failed [error=%d]\00", align 1
@VDEV_STATE_CANT_OPEN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot open vdev tree after invalidating some vdevs\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*)* @spa_ld_validate_vdevs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_validate_vdevs(%struct.TYPE_10__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  store %struct.TYPE_9__* %8, %struct.TYPE_9__** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = load i32, i32* @SCL_ALL, align 4
  %11 = load i32, i32* @FTAG, align 4
  %12 = load i32, i32* @RW_WRITER, align 4
  %13 = call i32 @spa_config_enter(%struct.TYPE_10__* %9, i32 %10, i32 %11, i32 %12)
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %15 = call i32 @vdev_validate(%struct.TYPE_9__* %14)
  store i32 %15, i32* %4, align 4
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %17 = load i32, i32* @SCL_ALL, align 4
  %18 = load i32, i32* @FTAG, align 4
  %19 = call i32 @spa_config_exit(%struct.TYPE_10__* %16, i32 %17, i32 %18)
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %23, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %4, align 4
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @VDEV_STATE_CANT_OPEN, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %27
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %35 = call i32 (%struct.TYPE_10__*, i8*, ...) @spa_load_failed(%struct.TYPE_10__* %34, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i32 @vdev_dbgmsg_print_tree(%struct.TYPE_9__* %36, i32 2)
  %38 = load i32, i32* @ENXIO, align 4
  %39 = call i32 @SET_ERROR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %41

40:                                               ; preds = %27
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %40, %33, %22
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @spa_config_enter(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @vdev_validate(%struct.TYPE_9__*) #1

declare dso_local i32 @spa_config_exit(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @vdev_dbgmsg_print_tree(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @SET_ERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
