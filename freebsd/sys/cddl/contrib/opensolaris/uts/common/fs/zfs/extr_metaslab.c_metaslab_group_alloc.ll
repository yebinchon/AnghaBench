; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_group_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_metaslab.c_metaslab_group_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32 }

@TRACE_GROUP_FAILURE = common dso_local global i32 0, align 4
@SPA_GANGBLOCKSIZE = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_5__*, i32*, i64, i64, i64, i32*, i32, i32)* @metaslab_group_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @metaslab_group_alloc(%struct.TYPE_5__* %0, i32* %1, i64 %2, i64 %3, i64 %4, i32* %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_5__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i64 %4, i64* %13, align 8
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i64, i64* %12, align 8
  %26 = load i64, i64* %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = load i32, i32* %15, align 4
  %29 = load i32, i32* %16, align 4
  %30 = call i64 @metaslab_group_alloc_normal(%struct.TYPE_5__* %22, i32* %23, i64 %24, i64 %25, i64 %26, i32* %27, i32 %28, i32 %29)
  store i64 %30, i64* %17, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @mutex_enter(i32* %32)
  %34 = load i64, i64* %17, align 8
  %35 = icmp eq i64 %34, -1
  br i1 %35, label %36, label %56

36:                                               ; preds = %8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %43 = load i64, i64* %11, align 8
  %44 = load i32, i32* %15, align 4
  %45 = load i32, i32* @TRACE_GROUP_FAILURE, align 4
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @metaslab_trace_add(i32* %41, %struct.TYPE_5__* %42, i32* null, i64 %43, i32 %44, i32 %45, i32 %46)
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @SPA_GANGBLOCKSIZE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %55

51:                                               ; preds = %36
  %52 = load i32, i32* @B_TRUE, align 4
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 2
  store i32 %52, i32* %54, align 4
  br label %55

55:                                               ; preds = %51, %36
  br label %56

56:                                               ; preds = %55, %8
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @mutex_exit(i32* %62)
  %64 = load i64, i64* %17, align 8
  ret i64 %64
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @metaslab_group_alloc_normal(%struct.TYPE_5__*, i32*, i64, i64, i64, i32*, i32, i32) #1

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i32 @metaslab_trace_add(i32*, %struct.TYPE_5__*, i32*, i64, i32, i32, i32) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
