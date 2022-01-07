; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_reap_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_reap_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hz = common dso_local global i32 0, align 4
@arc_kmem_cache_reap_retry_ms = common dso_local global i32 0, align 4
@arc_c = common dso_local global i32 0, align 4
@arc_shrink_shift = common dso_local global i32 0, align 4
@needfree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*)* @arc_reap_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arc_reap_cb(i8* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = call i32 (...) @arc_kmem_reap_soon()
  %8 = load i32, i32* @hz, align 4
  %9 = load i32, i32* @arc_kmem_cache_reap_retry_ms, align 4
  %10 = mul nsw i32 %8, %9
  %11 = add nsw i32 %10, 999
  %12 = sdiv i32 %11, 1000
  %13 = call i32 @delay(i32 %12)
  %14 = call i64 (...) @arc_available_memory()
  store i64 %14, i64* %5, align 8
  %15 = load i32, i32* @arc_c, align 4
  %16 = load i32, i32* @arc_shrink_shift, align 4
  %17 = ashr i32 %15, %16
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* %5, align 8
  %20 = sub nsw i64 %18, %19
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp sgt i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @arc_reduce_target_size(i64 %24)
  br label %26

26:                                               ; preds = %23, %2
  ret void
}

declare dso_local i32 @arc_kmem_reap_soon(...) #1

declare dso_local i32 @delay(i32) #1

declare dso_local i64 @arc_available_memory(...) #1

declare dso_local i32 @arc_reduce_target_size(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
