; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_build_ar_bind_scheme.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/ncsw/Peripherals/FM/Pcd/extr_fman_kg.c_build_ar_bind_scheme.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM_KG_KGAR_WRITE = common dso_local global i64 0, align 8
@FM_KG_KGAR_READ = common dso_local global i64 0, align 8
@FM_KG_KGAR_GO = common dso_local global i32 0, align 4
@FM_PCD_KG_KGAR_SEL_PORT_ENTRY = common dso_local global i32 0, align 4
@FM_PCD_KG_KGAR_SEL_PORT_WSEL_SP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @build_ar_bind_scheme to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @build_ar_bind_scheme(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load i64, i64* @FM_KG_KGAR_WRITE, align 8
  %10 = trunc i64 %9 to i32
  br label %14

11:                                               ; preds = %2
  %12 = load i64, i64* @FM_KG_KGAR_READ, align 8
  %13 = trunc i64 %12 to i32
  br label %14

14:                                               ; preds = %11, %8
  %15 = phi i32 [ %10, %8 ], [ %13, %11 ]
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @FM_KG_KGAR_GO, align 4
  %17 = load i32, i32* %5, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @FM_PCD_KG_KGAR_SEL_PORT_ENTRY, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @FM_PCD_KG_KGAR_SEL_PORT_WSEL_SP, align 4
  %24 = or i32 %22, %23
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
