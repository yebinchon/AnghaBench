; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_array_by_bonus.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dmu.c_dmu_buf_hold_array_by_bonus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DMU_READ_PREFETCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmu_buf_hold_array_by_bonus(i32* %0, i32 %1, i32 %2, i32 %3, i8* %4, i32* %5, i32*** %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32***, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32* %5, i32** %13, align 8
  store i32*** %6, i32**** %14, align 8
  %18 = load i32*, i32** %8, align 8
  store i32* %18, i32** %15, align 8
  %19 = load i32*, i32** %15, align 8
  %20 = call i32 @DB_DNODE_ENTER(i32* %19)
  %21 = load i32*, i32** %15, align 8
  %22 = call i32* @DB_DNODE(i32* %21)
  store i32* %22, i32** %16, align 8
  %23 = load i32*, i32** %16, align 8
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = load i32*, i32** %13, align 8
  %29 = load i32***, i32**** %14, align 8
  %30 = load i32, i32* @DMU_READ_PREFETCH, align 4
  %31 = call i32 @dmu_buf_hold_array_by_dnode(i32* %23, i32 %24, i32 %25, i32 %26, i8* %27, i32* %28, i32*** %29, i32 %30)
  store i32 %31, i32* %17, align 4
  %32 = load i32*, i32** %15, align 8
  %33 = call i32 @DB_DNODE_EXIT(i32* %32)
  %34 = load i32, i32* %17, align 4
  ret i32 %34
}

declare dso_local i32 @DB_DNODE_ENTER(i32*) #1

declare dso_local i32* @DB_DNODE(i32*) #1

declare dso_local i32 @dmu_buf_hold_array_by_dnode(i32*, i32, i32, i32, i8*, i32*, i32***, i32) #1

declare dso_local i32 @DB_DNODE_EXIT(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
