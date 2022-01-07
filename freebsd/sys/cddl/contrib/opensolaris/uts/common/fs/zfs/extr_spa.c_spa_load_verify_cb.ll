; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_verify_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_spa.c_spa_load_verify_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@spa_load_verify_metadata = common dso_local global i32 0, align 4
@spa_load_verify_data = common dso_local global i32 0, align 4
@spa_load_verify_maxinflight = common dso_local global i64 0, align 8
@B_FALSE = common dso_local global i32 0, align 4
@spa_load_verify_done = common dso_local global i32 0, align 4
@ZIO_PRIORITY_SCRUB = common dso_local global i32 0, align 4
@ZIO_FLAG_SPECULATIVE = common dso_local global i32 0, align 4
@ZIO_FLAG_CANFAIL = common dso_local global i32 0, align 4
@ZIO_FLAG_SCRUB = common dso_local global i32 0, align 4
@ZIO_FLAG_RAW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32*, i32*, i32*, i32*, i8*)* @spa_load_verify_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spa_load_verify_cb(%struct.TYPE_7__* %0, i32* %1, i32* %2, i32* %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %16 = load i32*, i32** %10, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %26, label %18

18:                                               ; preds = %6
  %19 = load i32*, i32** %10, align 8
  %20 = call i64 @BP_IS_HOLE(i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = load i32*, i32** %10, align 8
  %24 = call i64 @BP_IS_EMBEDDED(i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22, %18, %6
  store i32 0, i32* %7, align 4
  br label %89

27:                                               ; preds = %22
  %28 = load i32, i32* @spa_load_verify_metadata, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %7, align 4
  br label %89

31:                                               ; preds = %27
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @BP_IS_METADATA(i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @spa_load_verify_data, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %7, align 4
  br label %89

39:                                               ; preds = %35, %31
  %40 = load i8*, i8** %13, align 8
  %41 = bitcast i8* %40 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %41, %struct.TYPE_6__** %14, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = call i64 @BP_GET_PSIZE(i32* %42)
  store i64 %43, i64* %15, align 8
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 1
  %46 = call i32 @mutex_enter(i32* %45)
  br label %47

47:                                               ; preds = %53, %39
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @spa_load_verify_maxinflight, align 8
  %52 = icmp sge i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = call i32 @cv_wait(i32* %55, i32* %57)
  br label %47

59:                                               ; preds = %47
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  %66 = call i32 @mutex_exit(i32* %65)
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %69 = load i32*, i32** %10, align 8
  %70 = load i64, i64* %15, align 8
  %71 = load i32, i32* @B_FALSE, align 4
  %72 = call i32 @abd_alloc_for_io(i64 %70, i32 %71)
  %73 = load i64, i64* %15, align 8
  %74 = load i32, i32* @spa_load_verify_done, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @ZIO_PRIORITY_SCRUB, align 4
  %79 = load i32, i32* @ZIO_FLAG_SPECULATIVE, align 4
  %80 = load i32, i32* @ZIO_FLAG_CANFAIL, align 4
  %81 = or i32 %79, %80
  %82 = load i32, i32* @ZIO_FLAG_SCRUB, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @ZIO_FLAG_RAW, align 4
  %85 = or i32 %83, %84
  %86 = load i32*, i32** %11, align 8
  %87 = call i32 @zio_read(%struct.TYPE_6__* %67, %struct.TYPE_7__* %68, i32* %69, i32 %72, i64 %73, i32 %74, i32 %77, i32 %78, i32 %85, i32* %86)
  %88 = call i32 @zio_nowait(i32 %87)
  store i32 0, i32* %7, align 4
  br label %89

89:                                               ; preds = %59, %38, %30, %26
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i64 @BP_IS_HOLE(i32*) #1

declare dso_local i64 @BP_IS_EMBEDDED(i32*) #1

declare dso_local i32 @BP_IS_METADATA(i32*) #1

declare dso_local i64 @BP_GET_PSIZE(i32*) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @cv_wait(i32*, i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

declare dso_local i32 @zio_nowait(i32) #1

declare dso_local i32 @zio_read(%struct.TYPE_6__*, %struct.TYPE_7__*, i32*, i32, i64, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @abd_alloc_for_io(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
