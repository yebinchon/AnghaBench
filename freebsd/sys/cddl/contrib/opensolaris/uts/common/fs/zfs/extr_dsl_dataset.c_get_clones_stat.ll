; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_get_clones_stat.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_dsl_dataset.c_get_clones_stat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_SLEEP = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZFS_PROP_CLONES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_clones_stat(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32* (...) @fnvlist_alloc()
  store i32* %7, i32** %5, align 8
  %8 = load i32, i32* @KM_SLEEP, align 4
  %9 = call i32 @nvlist_alloc(i32** %6, i32 0, i32 %8)
  %10 = call i32 @VERIFY0(i32 %9)
  %11 = load i32*, i32** %3, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = call i64 @get_clones_stat_impl(i32* %11, i32* %12)
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* @ZPROP_VALUE, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @fnvlist_add_nvlist(i32* %16, i32 %17, i32* %18)
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* @ZFS_PROP_CLONES, align 4
  %22 = call i32 @zfs_prop_to_name(i32 %21)
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @fnvlist_add_nvlist(i32* %20, i32 %22, i32* %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load i32*, i32** %6, align 8
  %27 = call i32 @nvlist_free(i32* %26)
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @nvlist_free(i32* %28)
  ret void
}

declare dso_local i32* @fnvlist_alloc(...) #1

declare dso_local i32 @VERIFY0(i32) #1

declare dso_local i32 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i64 @get_clones_stat_impl(i32*, i32*) #1

declare dso_local i32 @fnvlist_add_nvlist(i32*, i32, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
