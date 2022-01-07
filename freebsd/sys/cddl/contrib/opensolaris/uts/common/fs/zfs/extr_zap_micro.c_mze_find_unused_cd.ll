; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_mze_find_unused_cd.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_zap_micro.c_mze_find_unused_cd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_10__*, i64)* @mze_find_unused_cd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @mze_find_unused_cd(%struct.TYPE_10__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_11__, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  store i32* %12, i32** %7, align 8
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ASSERT(i32 %15)
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = call i32 @RW_LOCK_HELD(i32* %18)
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i64, i64* %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  store i64 %21, i64* %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 1
  store i64 0, i64* %23, align 8
  store i64 0, i64* %8, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = call %struct.TYPE_11__* @avl_find(i32* %24, %struct.TYPE_11__* %5, i32* %6)
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %9, align 8
  br label %26

26:                                               ; preds = %47, %2
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = icmp ne %struct.TYPE_11__* %27, null
  br i1 %28, label %29, label %35

29:                                               ; preds = %26
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %4, align 8
  %34 = icmp eq i64 %32, %33
  br label %35

35:                                               ; preds = %29, %26
  %36 = phi i1 [ false, %26 ], [ %34, %29 ]
  br i1 %36, label %37, label %51

37:                                               ; preds = %35
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %51

44:                                               ; preds = %37
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* %8, align 8
  br label %47

47:                                               ; preds = %44
  %48 = load i32*, i32** %7, align 8
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %50 = call %struct.TYPE_11__* @AVL_NEXT(i32* %48, %struct.TYPE_11__* %49)
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %9, align 8
  br label %26

51:                                               ; preds = %43, %35
  %52 = load i64, i64* %8, align 8
  ret i64 %52
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RW_LOCK_HELD(i32*) #1

declare dso_local %struct.TYPE_11__* @avl_find(i32*, %struct.TYPE_11__*, i32*) #1

declare dso_local %struct.TYPE_11__* @AVL_NEXT(i32*, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
