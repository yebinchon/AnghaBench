; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust_meta_only.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_adjust_meta_only.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }

@arc_meta_limit = common dso_local global i64 0, align 8
@arc_anon = common dso_local global %struct.TYPE_6__* null, align 8
@arc_mru = common dso_local global %struct.TYPE_5__* null, align 8
@arc_p = common dso_local global i64 0, align 8
@ARC_BUFC_METADATA = common dso_local global i32 0, align 4
@arc_mfu = common dso_local global %struct.TYPE_5__* null, align 8
@arc_c = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @arc_adjust_meta_only to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arc_adjust_meta_only(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i64 0, i64* %3, align 8
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @arc_meta_limit, align 8
  %7 = sub nsw i64 %5, %6
  %8 = trunc i64 %7 to i32
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** @arc_anon, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = call i64 @zfs_refcount_count(i32* %10)
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arc_mru, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = call i64 @zfs_refcount_count(i32* %13)
  %15 = add nsw i64 %11, %14
  %16 = load i64, i64* @arc_p, align 8
  %17 = sub nsw i64 %15, %16
  %18 = trunc i64 %17 to i32
  %19 = call i32 @MIN(i32 %8, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arc_mru, align 8
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ARC_BUFC_METADATA, align 4
  %23 = call i64 @arc_adjust_impl(%struct.TYPE_5__* %20, i32 0, i32 %21, i32 %22)
  %24 = load i64, i64* %3, align 8
  %25 = add nsw i64 %24, %23
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %2, align 8
  %27 = load i64, i64* @arc_meta_limit, align 8
  %28 = sub nsw i64 %26, %27
  %29 = trunc i64 %28 to i32
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arc_mfu, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i64 @zfs_refcount_count(i32* %31)
  %33 = load i64, i64* @arc_c, align 8
  %34 = load i64, i64* @arc_p, align 8
  %35 = sub nsw i64 %33, %34
  %36 = sub nsw i64 %32, %35
  %37 = trunc i64 %36 to i32
  %38 = call i32 @MIN(i32 %29, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** @arc_mfu, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @ARC_BUFC_METADATA, align 4
  %42 = call i64 @arc_adjust_impl(%struct.TYPE_5__* %39, i32 0, i32 %40, i32 %41)
  %43 = load i64, i64* %3, align 8
  %44 = add nsw i64 %43, %42
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @zfs_refcount_count(i32*) #1

declare dso_local i64 @arc_adjust_impl(%struct.TYPE_5__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
