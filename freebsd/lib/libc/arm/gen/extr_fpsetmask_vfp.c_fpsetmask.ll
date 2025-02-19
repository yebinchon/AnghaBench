; ModuleID = '/home/carl/AnghaBench/freebsd/lib/libc/arm/gen/extr_fpsetmask_vfp.c_fpsetmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/lib/libc/arm/gen/extr_fpsetmask_vfp.c_fpsetmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FP_X_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpsetmask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = call i32 asm sideeffect "vmrs $0, fpscr", "=&r,~{dirflag},~{fpsr},~{flags}"() #1, !srcloc !2
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @FP_X_MASK, align 4
  %8 = and i32 %6, %7
  %9 = shl i32 %8, 8
  store i32 %9, i32* %2, align 4
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @FP_X_MASK, align 4
  %12 = shl i32 %11, 8
  %13 = xor i32 %12, -1
  %14 = and i32 %10, %13
  %15 = load i32, i32* %2, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  call void asm sideeffect "vmsr fpscr, $0", "r,~{dirflag},~{fpsr},~{flags}"(i32 %17) #1, !srcloc !3
  %18 = load i32, i32* %3, align 4
  %19 = ashr i32 %18, 8
  %20 = load i32, i32* @FP_X_MASK, align 4
  %21 = and i32 %19, %20
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 291}
!3 = !{i32 415}
