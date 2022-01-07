; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zthr.c_zthr_create_timer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zthr.c_zthr_create_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i8*, i32*, i32*, i32, i32 }

@KM_SLEEP = common dso_local global i32 0, align 4
@MUTEX_DEFAULT = common dso_local global i32 0, align 4
@CV_DEFAULT = common dso_local global i32 0, align 4
@zthr_procedure = common dso_local global i32 0, align 4
@p0 = common dso_local global i32 0, align 4
@TS_RUN = common dso_local global i32 0, align 4
@minclsyspri = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_5__* @zthr_create_timer(i32* %0, i32* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load i32, i32* @KM_SLEEP, align 4
  %11 = call %struct.TYPE_5__* @kmem_zalloc(i32 48, i32 %10)
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %9, align 8
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* @MUTEX_DEFAULT, align 4
  %15 = call i32 @mutex_init(i32* %13, i32* null, i32 %14, i32* null)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 7
  %18 = load i32, i32* @MUTEX_DEFAULT, align 4
  %19 = call i32 @mutex_init(i32* %17, i32* null, i32 %18, i32* null)
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 6
  %22 = load i32, i32* @CV_DEFAULT, align 4
  %23 = call i32 @cv_init(i32* %21, i32* null, i32 %22, i32* null)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @mutex_enter(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  store i32* %27, i32** %29, align 8
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 4
  store i32* %30, i32** %32, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 3
  store i8* %33, i8** %35, align 8
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load i32, i32* @zthr_procedure, align 4
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %41 = load i32, i32* @TS_RUN, align 4
  %42 = load i32, i32* @minclsyspri, align 4
  %43 = call i32 @thread_create(i32* null, i32 0, i32 %39, %struct.TYPE_5__* %40, i32 0, i32* @p0, i32 %41, i32 %42)
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = call i32 @mutex_exit(i32* %47)
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  ret %struct.TYPE_5__* %49
}

declare dso_local %struct.TYPE_5__* @kmem_zalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cv_init(i32*, i32*, i32, i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @thread_create(i32*, i32, i32, %struct.TYPE_5__*, i32, i32*, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
