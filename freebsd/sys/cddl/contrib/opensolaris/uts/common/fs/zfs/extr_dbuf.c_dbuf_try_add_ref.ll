; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_try_add_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dbuf.c_dbuf_try_add_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64, i32, i32 }

@B_FALSE = common dso_local global i32 0, align 4
@DMU_BONUS_BLKID = common dso_local global i64 0, align 8
@B_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dbuf_try_add_ref(i32* %0, i32* %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_5__*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i8* %4, i8** %10, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %15, %struct.TYPE_5__** %11, align 8
  %16 = load i32, i32* @B_FALSE, align 4
  store i32 %16, i32* %13, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @DMU_BONUS_BLKID, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %5
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call %struct.TYPE_5__* @dbuf_find_bonus(i32* %23, i32 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %12, align 8
  br label %31

26:                                               ; preds = %5
  %27 = load i32*, i32** %7, align 8
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call %struct.TYPE_5__* @dbuf_find(i32* %27, i32 %28, i32 0, i32 %29)
  store %struct.TYPE_5__* %30, %struct.TYPE_5__** %12, align 8
  br label %31

31:                                               ; preds = %26, %22
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %33 = icmp ne %struct.TYPE_5__* %32, null
  br i1 %33, label %34, label %55

34:                                               ; preds = %31
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %37 = icmp eq %struct.TYPE_5__* %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %34
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %40 = call i64 @dbuf_refcount(%struct.TYPE_5__* %39)
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp sgt i64 %40, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %38
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 3
  %48 = load i8*, i8** %10, align 8
  %49 = call i32 @zfs_refcount_add(i32* %47, i8* %48)
  %50 = load i32, i32* @B_TRUE, align 4
  store i32 %50, i32* %13, align 4
  br label %51

51:                                               ; preds = %45, %38, %34
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = call i32 @mutex_exit(i32* %53)
  br label %55

55:                                               ; preds = %51, %31
  %56 = load i32, i32* %13, align 4
  ret i32 %56
}

declare dso_local %struct.TYPE_5__* @dbuf_find_bonus(i32*, i32) #1

declare dso_local %struct.TYPE_5__* @dbuf_find(i32*, i32, i32, i32) #1

declare dso_local i64 @dbuf_refcount(%struct.TYPE_5__*) #1

declare dso_local i32 @zfs_refcount_add(i32*, i8*) #1

declare dso_local i32 @mutex_exit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
