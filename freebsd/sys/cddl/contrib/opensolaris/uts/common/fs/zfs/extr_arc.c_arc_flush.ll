; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_flush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arc_mru = common dso_local global i32 0, align 4
@ARC_BUFC_DATA = common dso_local global i32 0, align 4
@ARC_BUFC_METADATA = common dso_local global i32 0, align 4
@arc_mfu = common dso_local global i32 0, align 4
@arc_mru_ghost = common dso_local global i32 0, align 4
@arc_mfu_ghost = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arc_flush(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br label %11

11:                                               ; preds = %8, %2
  %12 = phi i1 [ true, %2 ], [ %10, %8 ]
  %13 = zext i1 %12 to i32
  %14 = call i32 @ASSERT(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %11
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @spa_load_guid(i32* %18)
  store i32 %19, i32* %5, align 4
  br label %20

20:                                               ; preds = %17, %11
  %21 = load i32, i32* @arc_mru, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @ARC_BUFC_DATA, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @arc_flush_state(i32 %21, i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @arc_mru, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @ARC_BUFC_METADATA, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @arc_flush_state(i32 %26, i32 %27, i32 %28, i32 %29)
  %31 = load i32, i32* @arc_mfu, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ARC_BUFC_DATA, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @arc_flush_state(i32 %31, i32 %32, i32 %33, i32 %34)
  %36 = load i32, i32* @arc_mfu, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @ARC_BUFC_METADATA, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @arc_flush_state(i32 %36, i32 %37, i32 %38, i32 %39)
  %41 = load i32, i32* @arc_mru_ghost, align 4
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* @ARC_BUFC_DATA, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @arc_flush_state(i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @arc_mru_ghost, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @ARC_BUFC_METADATA, align 4
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @arc_flush_state(i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = load i32, i32* @arc_mfu_ghost, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @ARC_BUFC_DATA, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @arc_flush_state(i32 %51, i32 %52, i32 %53, i32 %54)
  %56 = load i32, i32* @arc_mfu_ghost, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ARC_BUFC_METADATA, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @arc_flush_state(i32 %56, i32 %57, i32 %58, i32 %59)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @spa_load_guid(i32*) #1

declare dso_local i32 @arc_flush_state(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
