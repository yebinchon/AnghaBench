; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_is_overflowing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_arc.c_arc_is_overflowing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SPA_MAXBLOCKSIZE = common dso_local global i32 0, align 4
@arc_c = common dso_local global i32 0, align 4
@zfs_arc_overflow_shift = common dso_local global i32 0, align 4
@arc_size = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @arc_is_overflowing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arc_is_overflowing() #0 {
  %1 = alloca i64, align 8
  %2 = load i32, i32* @SPA_MAXBLOCKSIZE, align 4
  %3 = load i32, i32* @arc_c, align 4
  %4 = load i32, i32* @zfs_arc_overflow_shift, align 4
  %5 = ashr i32 %3, %4
  %6 = call i64 @MAX(i32 %2, i32 %5)
  store i64 %6, i64* %1, align 8
  %7 = call i64 @aggsum_lower_bound(i32* @arc_size)
  %8 = load i32, i32* @arc_c, align 4
  %9 = sext i32 %8 to i64
  %10 = load i64, i64* %1, align 8
  %11 = add nsw i64 %9, %10
  %12 = icmp sge i64 %7, %11
  %13 = zext i1 %12 to i32
  ret i32 %13
}

declare dso_local i64 @MAX(i32, i32) #1

declare dso_local i64 @aggsum_lower_bound(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
