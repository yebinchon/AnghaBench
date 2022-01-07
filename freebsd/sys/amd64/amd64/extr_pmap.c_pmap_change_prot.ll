; ModuleID = '/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_change_prot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/amd64/amd64/extr_pmap.c_pmap_change_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VM_MIN_KERNEL_ADDRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@MAPDEV_ASSERTVALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_change_prot(i64 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @VM_MIN_KERNEL_ADDRESS, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* @EINVAL, align 4
  store i32 %13, i32* %4, align 4
  br label %25

14:                                               ; preds = %3
  %15 = load i32, i32* @kernel_pmap, align 4
  %16 = call i32 @PMAP_LOCK(i32 %15)
  %17 = load i64, i64* %5, align 8
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @MAPDEV_ASSERTVALID, align 4
  %21 = call i32 @pmap_change_props_locked(i64 %17, i32 %18, i32 %19, i32 -1, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* @kernel_pmap, align 4
  %23 = call i32 @PMAP_UNLOCK(i32 %22)
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %14, %12
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pmap_change_props_locked(i64, i32, i32, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
