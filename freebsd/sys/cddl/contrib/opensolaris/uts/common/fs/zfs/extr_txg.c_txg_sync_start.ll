; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_txg.c_txg_sync_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_txg.c_txg_sync_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [9 x i8] c"pool %p\0A\00", align 1
@txg_quiesce_thread = common dso_local global i32 0, align 4
@TS_RUN = common dso_local global i32 0, align 4
@minclsyspri = common dso_local global i32 0, align 4
@txg_sync_thread = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @txg_sync_start(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  store %struct.TYPE_6__* %5, %struct.TYPE_6__** %3, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 1
  %8 = call i32 @mutex_enter(i32* %7)
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = call i32 @dprintf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.TYPE_7__* %9)
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @ASSERT0(i32 %13)
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  store i32 2, i32* %16, align 8
  %17 = load i32, i32* @txg_quiesce_thread, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @spa_proc(i32 %21)
  %23 = load i32, i32* @TS_RUN, align 4
  %24 = load i32, i32* @minclsyspri, align 4
  %25 = call i8* @thread_create(i32* null, i32 0, i32 %17, %struct.TYPE_7__* %18, i32 0, i32 %22, i32 %23, i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* @txg_sync_thread, align 4
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @spa_proc(i32 %32)
  %34 = load i32, i32* @TS_RUN, align 4
  %35 = load i32, i32* @minclsyspri, align 4
  %36 = call i8* @thread_create(i32* null, i32 32768, i32 %28, %struct.TYPE_7__* %29, i32 0, i32 %33, i32 %34, i32 %35)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = call i32 @mutex_exit(i32* %40)
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @dprintf(i8*, %struct.TYPE_7__*) #1

declare dso_local i32 @ASSERT0(i32) #1

declare dso_local i8* @thread_create(i32*, i32, i32, %struct.TYPE_7__*, i32, i32, i32, i32) #1

declare dso_local i32 @spa_proc(i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
