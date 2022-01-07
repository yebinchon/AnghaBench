; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_geom_worker.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zvol.c_zvol_geom_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.bio = type { i32 }

@curthread = common dso_local global i32 0, align 4
@PRIBIO = common dso_local global i32 0, align 4
@PDROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"zvol:io\00", align 1
@ZVOL_OBJ = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @zvol_geom_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zvol_geom_worker(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_2__*, align 8
  %4 = alloca %struct.bio*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @curthread, align 4
  %6 = call i32 @thread_lock(i32 %5)
  %7 = load i32, i32* @curthread, align 4
  %8 = load i32, i32* @PRIBIO, align 4
  %9 = call i32 @sched_prio(i32 %7, i32 %8)
  %10 = load i32, i32* @curthread, align 4
  %11 = call i32 @thread_unlock(i32 %10)
  %12 = load i8*, i8** %2, align 8
  %13 = bitcast i8* %12 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %13, %struct.TYPE_2__** %3, align 8
  br label %14

14:                                               ; preds = %69, %38, %1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 2
  %17 = call i32 @mtx_lock(i32* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 3
  %20 = call %struct.bio* @bioq_takefirst(i32* %19)
  store %struct.bio* %20, %struct.bio** %4, align 8
  %21 = load %struct.bio*, %struct.bio** %4, align 8
  %22 = icmp eq %struct.bio* %21, null
  br i1 %22, label %23, label %47

23:                                               ; preds = %14
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 1
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  store i32 2, i32* %30, align 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = call i32 @wakeup(i32* %32)
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 2
  %36 = call i32 @mtx_unlock(i32* %35)
  %37 = call i32 (...) @kthread_exit()
  br label %38

38:                                               ; preds = %28, %23
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 2
  %43 = load i32, i32* @PRIBIO, align 4
  %44 = load i32, i32* @PDROP, align 4
  %45 = or i32 %43, %44
  %46 = call i32 @msleep(i32* %40, i32* %42, i32 %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 0)
  br label %14

47:                                               ; preds = %14
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 2
  %50 = call i32 @mtx_unlock(i32* %49)
  %51 = load %struct.bio*, %struct.bio** %4, align 8
  %52 = getelementptr inbounds %struct.bio, %struct.bio* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %65 [
    i32 130, label %54
    i32 129, label %62
    i32 128, label %62
    i32 131, label %62
  ]

54:                                               ; preds = %47
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @ZVOL_OBJ, align 4
  %59 = call i32 @zil_commit(i32 %57, i32 %58)
  %60 = load %struct.bio*, %struct.bio** %4, align 8
  %61 = call i32 @g_io_deliver(%struct.bio* %60, i32 0)
  br label %69

62:                                               ; preds = %47, %47, %47
  %63 = load %struct.bio*, %struct.bio** %4, align 8
  %64 = call i32 @zvol_strategy(%struct.bio* %63)
  br label %69

65:                                               ; preds = %47
  %66 = load %struct.bio*, %struct.bio** %4, align 8
  %67 = load i32, i32* @EOPNOTSUPP, align 4
  %68 = call i32 @g_io_deliver(%struct.bio* %66, i32 %67)
  br label %69

69:                                               ; preds = %65, %62, %54
  br label %14
}

declare dso_local i32 @thread_lock(i32) #1

declare dso_local i32 @sched_prio(i32, i32) #1

declare dso_local i32 @thread_unlock(i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.bio* @bioq_takefirst(i32*) #1

declare dso_local i32 @wakeup(i32*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @kthread_exit(...) #1

declare dso_local i32 @msleep(i32*, i32*, i32, i8*, i32) #1

declare dso_local i32 @zil_commit(i32, i32) #1

declare dso_local i32 @g_io_deliver(%struct.bio*, i32) #1

declare dso_local i32 @zvol_strategy(%struct.bio*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
