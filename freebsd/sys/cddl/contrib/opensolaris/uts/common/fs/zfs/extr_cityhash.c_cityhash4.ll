; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_cityhash.c_cityhash4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cddl/contrib/opensolaris/uts/common/fs/zfs/extr_cityhash.c_cityhash4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HASH_K2 = common dso_local global i32 0, align 4
@HASH_K1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cityhash4(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* @HASH_K2, align 4
  %15 = add nsw i32 %14, 64
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @HASH_K1, align 4
  %18 = mul nsw i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %20, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @HASH_K2, align 4
  %25 = mul nsw i32 %23, %24
  store i32 %25, i32* %13, align 4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* %11, align 4
  %28 = add nsw i32 %26, %27
  %29 = call i32 @rotate(i32 %28, i32 43)
  %30 = load i32, i32* %12, align 4
  %31 = call i32 @rotate(i32 %30, i32 30)
  %32 = add nsw i32 %29, %31
  %33 = load i32, i32* %13, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @HASH_K2, align 4
  %38 = add nsw i32 %36, %37
  %39 = call i32 @rotate(i32 %38, i32 18)
  %40 = add nsw i32 %35, %39
  %41 = load i32, i32* %12, align 4
  %42 = add nsw i32 %40, %41
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @cityhash_helper(i32 %34, i32 %42, i32 %43)
  ret i32 %44
}

declare dso_local i32 @cityhash_helper(i32, i32, i32) #1

declare dso_local i32 @rotate(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
