; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_armv7_machdep.c_mv_axp_platform_devmap_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/extr_mv_armv7_machdep.c_mv_axp_platform_devmap_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fdt_immr_pa = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @mv_axp_platform_devmap_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv_axp_platform_devmap_init(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = call i32 asm sideeffect "mrc p15, 4, $0, c15, c0, 0", "=r,~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = shl i32 %5, 13
  %7 = and i32 %6, -16777216
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  store i32 %11, i32* @fdt_immr_pa, align 4
  br label %12

12:                                               ; preds = %10, %1
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @mv_a38x_platform_devmap_init(i32 %13)
  ret i32 0
}

declare dso_local i32 @mv_a38x_platform_devmap_init(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 384}
