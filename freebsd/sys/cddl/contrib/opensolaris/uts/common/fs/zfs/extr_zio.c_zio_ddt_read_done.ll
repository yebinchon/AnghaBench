; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_read_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zio.c_zio_ddt_read_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, %struct.TYPE_9__*, i64*, i32, i32, i32* }
%struct.TYPE_9__ = type { i32* }

@ZIO_CHILD_DDT_BIT = common dso_local global i32 0, align 4
@ZIO_WAIT_DONE = common dso_local global i32 0, align 4
@ZIO_CHILD_LOGICAL = common dso_local global i64 0, align 8
@ZIO_CHILD_DDT = common dso_local global i64 0, align 8
@SPA_LOAD_NONE = common dso_local global i64 0, align 8
@ZIO_STAGE_DDT_READ_START = common dso_local global i32 0, align 4
@ZIO_TASKQ_ISSUE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_8__* (%struct.TYPE_8__*)* @zio_ddt_read_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_8__* @zio_ddt_read_done(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %7 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 7
  %9 = load i32*, i32** %8, align 8
  store i32* %9, i32** %4, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = load i32, i32* @ZIO_CHILD_DDT_BIT, align 4
  %12 = load i32, i32* @ZIO_WAIT_DONE, align 4
  %13 = call i64 @zio_wait_for_children(%struct.TYPE_8__* %10, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %110

16:                                               ; preds = %1
  %17 = load i32*, i32** %4, align 8
  %18 = call i32 @BP_GET_DEDUP(i32* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load i32*, i32** %4, align 8
  %21 = call i64 @BP_GET_PSIZE(i32* %20)
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @ZIO_CHILD_LOGICAL, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @ASSERT(i32 %33)
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 4
  %37 = load i64*, i64** %36, align 8
  %38 = load i64, i64* @ZIO_CHILD_DDT, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %102

42:                                               ; preds = %16
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = call i32* @ddt_select(i32 %45, i32* %46)
  store i32* %47, i32** %5, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %6, align 8
  %51 = load i32*, i32** %5, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %42
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 6
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @spa_load_state(i32 %56)
  %58 = load i64, i64* @SPA_LOAD_NONE, align 8
  %59 = icmp ne i64 %57, %58
  %60 = zext i1 %59 to i32
  %61 = call i32 @ASSERT(i32 %60)
  %62 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %62, %struct.TYPE_8__** %2, align 8
  br label %110

63:                                               ; preds = %42
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %65 = icmp eq %struct.TYPE_9__* %64, null
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* @ZIO_STAGE_DDT_READ_START, align 4
  %68 = ashr i32 %67, 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %72 = load i32, i32* @ZIO_TASKQ_ISSUE, align 4
  %73 = load i32, i32* @B_FALSE, align 4
  %74 = call i32 @zio_taskq_dispatch(%struct.TYPE_8__* %71, i32 %72, i32 %73)
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %2, align 8
  br label %110

75:                                               ; preds = %63
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = icmp ne i32* %78, null
  br i1 %79, label %80, label %96

80:                                               ; preds = %75
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 @abd_copy(i32 %83, i32* %86, i64 %89)
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 4
  %93 = load i64*, i64** %92, align 8
  %94 = load i64, i64* @ZIO_CHILD_DDT, align 8
  %95 = getelementptr inbounds i64, i64* %93, i64 %94
  store i64 0, i64* %95, align 8
  br label %96

96:                                               ; preds = %80, %75
  %97 = load i32*, i32** %5, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %99 = call i32 @ddt_repair_done(i32* %97, %struct.TYPE_9__* %98)
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %101, align 8
  br label %102

102:                                              ; preds = %96, %16
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %104, align 8
  %106 = icmp eq %struct.TYPE_9__* %105, null
  %107 = zext i1 %106 to i32
  %108 = call i32 @ASSERT(i32 %107)
  %109 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %2, align 8
  br label %110

110:                                              ; preds = %102, %66, %53, %15
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  ret %struct.TYPE_8__* %111
}

declare dso_local i64 @zio_wait_for_children(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @BP_GET_DEDUP(i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32* @ddt_select(i32, i32*) #1

declare dso_local i64 @spa_load_state(i32) #1

declare dso_local i32 @zio_taskq_dispatch(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @abd_copy(i32, i32*, i64) #1

declare dso_local i32 @ddt_repair_done(i32*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
