; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_deadman.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_vdev.c_vdev_deadman.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i64, i32*, %struct.TYPE_11__, %struct.TYPE_8__*, %struct.TYPE_10__** }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [60 x i8] c"SLOW IO: zio timestamp %lluns, delta %lluns, last io %lluns\00", align 1
@.str.1 = private unnamed_addr constant [63 x i8] c"I/O to pool '%s' appears to be hung on vdev guid %llu at '%s'.\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vdev_deadman(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %24, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 6
  %18 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %18, i64 %20
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %4, align 8
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  call void @vdev_deadman(%struct.TYPE_10__* %23)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %3, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %3, align 4
  br label %9

27:                                               ; preds = %9
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %85

34:                                               ; preds = %27
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %35, i32 0, i32 4
  store %struct.TYPE_11__* %36, %struct.TYPE_11__** %5, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = call i32 @mutex_enter(i32* %38)
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = call i64 @avl_numnodes(i32* %41)
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %81

44:                                               ; preds = %34
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 3
  %47 = load i32*, i32** %46, align 8
  store i32* %47, i32** %6, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 2
  %50 = call %struct.TYPE_9__* @avl_first(i32* %49)
  store %struct.TYPE_9__* %50, %struct.TYPE_9__** %7, align 8
  %51 = call i64 (...) @gethrtime()
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = call i64 @spa_deadman_synctime(i32* %57)
  %59 = icmp sgt i64 %56, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %44
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* %8, align 8
  %66 = trunc i64 %65 to i32
  %67 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @vdev_dbgmsg(%struct.TYPE_10__* %61, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i64 %64, i32 %66, i32 %69)
  %71 = load i32*, i32** %6, align 8
  %72 = call i32 @spa_name(i32* %71)
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 2
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @fm_panic(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i32 %72, i64 %75, i32 %78)
  br label %80

80:                                               ; preds = %60, %44
  br label %81

81:                                               ; preds = %80, %34
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 0
  %84 = call i32 @mutex_exit(i32* %83)
  br label %85

85:                                               ; preds = %81, %27
  ret void
}

declare dso_local i32 @mutex_enter(i32*) #1

declare dso_local i64 @avl_numnodes(i32*) #1

declare dso_local %struct.TYPE_9__* @avl_first(i32*) #1

declare dso_local i64 @gethrtime(...) #1

declare dso_local i64 @spa_deadman_synctime(i32*) #1

declare dso_local i32 @vdev_dbgmsg(%struct.TYPE_10__*, i8*, i64, i32, i32) #1

declare dso_local i32 @fm_panic(i8*, i32, i64, i32) #1

declare dso_local i32 @spa_name(i32*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
