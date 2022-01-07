; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_hdr_free_on_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_hdr_free_on_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32, %struct.TYPE_11__* }

@arc_anon = common dso_local global %struct.TYPE_11__* null, align 8
@arc_l2c_only = common dso_local global %struct.TYPE_11__* null, align 8
@ARC_BUFC_METADATA = common dso_local global i64 0, align 8
@ARC_SPACE_META = common dso_local global i32 0, align 4
@ARC_BUFC_DATA = common dso_local global i64 0, align 8
@ARC_SPACE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*)* @arc_hdr_free_on_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_hdr_free_on_write(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %6 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 3
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %3, align 8
  %10 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %11 = call i64 @arc_buf_type(%struct.TYPE_12__* %10)
  store i64 %11, i64* %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = call i32 @arc_hdr_size(%struct.TYPE_12__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 2
  %17 = call i64 @multilist_link_active(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %44

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = call i32 @zfs_refcount_is_zero(i32* %22)
  %24 = call i32 @ASSERT(i32 %23)
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** @arc_anon, align 8
  %27 = icmp ne %struct.TYPE_11__* %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %19
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** @arc_l2c_only, align 8
  %31 = icmp ne %struct.TYPE_11__* %29, %30
  br label %32

32:                                               ; preds = %28, %19
  %33 = phi i1 [ false, %19 ], [ %31, %28 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34)
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* %4, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %43 = call i32 @zfs_refcount_remove_many(i32* %40, i32 %41, %struct.TYPE_12__* %42)
  br label %44

44:                                               ; preds = %32, %1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %49 = call i32 @zfs_refcount_remove_many(i32* %46, i32 %47, %struct.TYPE_12__* %48)
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @ARC_BUFC_METADATA, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %44
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* @ARC_SPACE_META, align 4
  %56 = call i32 @arc_space_return(i32 %54, i32 %55)
  br label %66

57:                                               ; preds = %44
  %58 = load i64, i64* %4, align 8
  %59 = load i64, i64* @ARC_BUFC_DATA, align 8
  %60 = icmp eq i64 %58, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @ASSERT(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @ARC_SPACE_DATA, align 4
  %65 = call i32 @arc_space_return(i32 %63, i32 %64)
  br label %66

66:                                               ; preds = %57, %53
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %5, align 4
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @l2arc_free_abd_on_write(i32 %70, i32 %71, i64 %72)
  ret void
}

declare dso_local i64 @arc_buf_type(%struct.TYPE_12__*) #1

declare dso_local i32 @arc_hdr_size(%struct.TYPE_12__*) #1

declare dso_local i64 @multilist_link_active(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @zfs_refcount_is_zero(i32*) #1

declare dso_local i32 @zfs_refcount_remove_many(i32*, i32, %struct.TYPE_12__*) #1

declare dso_local i32 @arc_space_return(i32, i32) #1

declare dso_local i32 @l2arc_free_abd_on_write(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
