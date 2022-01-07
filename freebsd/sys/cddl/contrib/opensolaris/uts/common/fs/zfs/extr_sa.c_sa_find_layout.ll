; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_find_layout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_sa.c_sa_find_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i64, i64 }

@B_FALSE = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_15__*, i64, i32*, i32, i32*, %struct.TYPE_14__**)* @sa_find_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sa_find_layout(%struct.TYPE_15__* %0, i64 %1, i32* %2, i32 %3, i32* %4, %struct.TYPE_14__** %5) #0 {
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_14__**, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca %struct.TYPE_14__, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_13__*, align 8
  %17 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store %struct.TYPE_14__** %5, %struct.TYPE_14__*** %12, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  store %struct.TYPE_13__* %20, %struct.TYPE_13__** %16, align 8
  %21 = load i32, i32* @B_FALSE, align 4
  store i32 %21, i32* %17, align 4
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = call i32 @mutex_enter(i32* %23)
  %25 = load i64, i64* %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 0
  store i64 %25, i64* %26, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  store i64 0, i64* %27, align 8
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 2
  %30 = call %struct.TYPE_14__* @avl_find(i32* %29, %struct.TYPE_14__* %14, i32* %15)
  store %struct.TYPE_14__* %30, %struct.TYPE_14__** %13, align 8
  %31 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %32 = icmp ne %struct.TYPE_14__* %31, null
  br i1 %32, label %33, label %60

33:                                               ; preds = %6
  br label %34

34:                                               ; preds = %54, %33
  %35 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %36 = icmp ne %struct.TYPE_14__* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %39 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp eq i64 %40, %41
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %45, label %59

45:                                               ; preds = %43
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %10, align 4
  %49 = call i64 @sa_layout_equal(%struct.TYPE_14__* %46, i32* %47, i32 %48)
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @B_TRUE, align 4
  store i32 %52, i32* %17, align 4
  br label %59

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %58 = call %struct.TYPE_14__* @AVL_NEXT(i32* %56, %struct.TYPE_14__* %57)
  store %struct.TYPE_14__* %58, %struct.TYPE_14__** %13, align 8
  br label %34

59:                                               ; preds = %51, %43
  br label %60

60:                                               ; preds = %59, %6
  %61 = load i32, i32* %17, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %74, label %63

63:                                               ; preds = %60
  %64 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %67, i32 0, i32 1
  %69 = call i32 @avl_numnodes(i32* %68)
  %70 = load i64, i64* %8, align 8
  %71 = load i32, i32* @B_TRUE, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call %struct.TYPE_14__* @sa_add_layout_entry(%struct.TYPE_15__* %64, i32* %65, i32 %66, i32 %69, i64 %70, i32 %71, i32* %72)
  store %struct.TYPE_14__* %73, %struct.TYPE_14__** %13, align 8
  br label %74

74:                                               ; preds = %63, %60
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = call i32 @mutex_exit(i32* %76)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %79 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %12, align 8
  store %struct.TYPE_14__* %78, %struct.TYPE_14__** %79, align 8
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local %struct.TYPE_14__* @avl_find(i32*, %struct.TYPE_14__*, i32*) #1

declare dso_local i64 @sa_layout_equal(%struct.TYPE_14__*, i32*, i32) #1

declare dso_local %struct.TYPE_14__* @AVL_NEXT(i32*, %struct.TYPE_14__*) #1

declare dso_local %struct.TYPE_14__* @sa_add_layout_entry(%struct.TYPE_15__*, i32*, i32, i32, i64, i32, i32*) #1

declare dso_local i32 @avl_numnodes(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
