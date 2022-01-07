; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_open_indirect_vdev_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_ld_open_indirect_vdev_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }

@.str = private unnamed_addr constant [34 x i8] c"spa_remove_init failed [error=%d]\00", align 1
@VDEV_AUX_CORRUPT_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"spa_condense_init failed [error=%d]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*)* @spa_ld_open_indirect_vdev_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_ld_open_indirect_vdev_metadata(%struct.TYPE_6__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  store i32* %8, i32** %5, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = call i32 @spa_remove_init(%struct.TYPE_6__* %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @spa_load_failed(%struct.TYPE_6__* %14, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32*, i32** %5, align 8
  %18 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %19 = load i32, i32* @EIO, align 4
  %20 = call i32 @spa_vdev_err(i32* %17, i32 %18, i32 %19)
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = call i32 @spa_condense_init(%struct.TYPE_6__* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @spa_load_failed(%struct.TYPE_6__* %27, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %28)
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* @VDEV_AUX_CORRUPT_DATA, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @spa_vdev_err(i32* %30, i32 %31, i32 %32)
  store i32 %33, i32* %2, align 4
  br label %35

34:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %26, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @spa_remove_init(%struct.TYPE_6__*) #1

declare dso_local i32 @spa_load_failed(%struct.TYPE_6__*, i8*, i32) #1

declare dso_local i32 @spa_vdev_err(i32*, i32, i32) #1

declare dso_local i32 @spa_condense_init(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
