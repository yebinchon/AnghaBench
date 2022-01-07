; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, %struct.TYPE_13__*, i32 }
%struct.TYPE_13__ = type { i32, i64, i64 }

@ZIO_FAILURE_MODE_PANIC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [116 x i8] c"Pool '%s' has encountered an uncorrectable I/O failure and the failure mode property for this pool is set to panic.\00", align 1
@FM_EREPORT_ZFS_IO_FAILURE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ZIO_FLAG_GODFATHER = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@ZIO_CHILD_LOGICAL = common dso_local global i64 0, align 8
@ZIO_STAGE_DONE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zio_suspend(%struct.TYPE_14__* %0, %struct.TYPE_13__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %4, align 8
  %5 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %6 = call i64 @spa_get_failmode(%struct.TYPE_14__* %5)
  %7 = load i64, i64* @ZIO_FAILURE_MODE_PANIC, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %11 = call i32 @spa_name(%struct.TYPE_14__* %10)
  %12 = call i32 @fm_panic(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0), i32 %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i32, i32* @FM_EREPORT_ZFS_IO_FAILURE, align 4
  %15 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %16 = call i32 @zfs_ereport_post(i32 %14, %struct.TYPE_14__* %15, i32* null, i32* null, i32 0, i32 0)
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = call i32 @mutex_enter(i32* %18)
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %21, align 8
  %23 = icmp eq %struct.TYPE_13__* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %13
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %26 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %27 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ZIO_FLAG_GODFATHER, align 4
  %30 = or i32 %28, %29
  %31 = call %struct.TYPE_13__* @zio_root(%struct.TYPE_14__* %25, i32* null, i32* null, i32 %30)
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 1
  store %struct.TYPE_13__* %31, %struct.TYPE_13__** %33, align 8
  br label %34

34:                                               ; preds = %24, %13
  %35 = load i32, i32* @B_TRUE, align 4
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %39 = icmp ne %struct.TYPE_13__* %38, null
  br i1 %39, label %40, label %81

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ZIO_FLAG_GODFATHER, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @ASSERT(i32 %48)
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %52, align 8
  %54 = icmp ne %struct.TYPE_13__* %50, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @ASSERT(i32 %55)
  %57 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ZIO_CHILD_LOGICAL, align 8
  %61 = icmp eq i64 %59, %60
  %62 = zext i1 %61 to i32
  %63 = call i32 @ASSERT(i32 %62)
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = call i32* @zio_unique_parent(%struct.TYPE_13__* %64)
  %66 = icmp eq i32* %65, null
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @ZIO_STAGE_DONE, align 8
  %73 = icmp eq i64 %71, %72
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %80 = call i32 @zio_add_child(%struct.TYPE_13__* %78, %struct.TYPE_13__* %79)
  br label %81

81:                                               ; preds = %40, %34
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = call i32 @mutex_exit(i32* %83)
  ret void
}

declare dso_local i64 @spa_get_failmode(%struct.TYPE_14__*) #1

declare dso_local i32 @fm_panic(i8*, i32) #1

declare dso_local i32 @spa_name(%struct.TYPE_14__*) #1

declare dso_local i32 @zfs_ereport_post(i32, %struct.TYPE_14__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_13__* @zio_root(%struct.TYPE_14__*, i32*, i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32* @zio_unique_parent(%struct.TYPE_13__*) #1

declare dso_local i32 @zio_add_child(%struct.TYPE_13__*, %struct.TYPE_13__*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
