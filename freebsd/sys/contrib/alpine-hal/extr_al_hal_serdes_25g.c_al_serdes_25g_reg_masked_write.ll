; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_25g.c_al_serdes_25g_reg_masked_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/extr_al_hal_serdes_25g.c_al_serdes_25g_reg_masked_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_serdes_grp_obj = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_serdes_grp_obj*, i32, i32, i32, i32, i32)* @al_serdes_25g_reg_masked_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_serdes_25g_reg_masked_write(%struct.al_serdes_grp_obj* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.al_serdes_grp_obj*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.al_serdes_grp_obj* %0, %struct.al_serdes_grp_obj** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %16 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* %10, align 4
  %19 = call i32 @al_serdes_25g_reg_read(%struct.al_serdes_grp_obj* %16, i32 %17, i32 0, i32 %18, i32* %14)
  store i32 %19, i32* %15, align 4
  %20 = load i32, i32* %15, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i32, i32* %15, align 4
  store i32 %23, i32* %7, align 4
  br label %39

24:                                               ; preds = %6
  %25 = load i32, i32* %11, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %14, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %14, align 4
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %12, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* %14, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %14, align 4
  %34 = load %struct.al_serdes_grp_obj*, %struct.al_serdes_grp_obj** %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %14, align 4
  %38 = call i32 @al_serdes_25g_reg_write(%struct.al_serdes_grp_obj* %34, i32 %35, i32 0, i32 %36, i32 %37)
  store i32 %38, i32* %7, align 4
  br label %39

39:                                               ; preds = %24, %22
  %40 = load i32, i32* %7, align 4
  ret i32 %40
}

declare dso_local i32 @al_serdes_25g_reg_read(%struct.al_serdes_grp_obj*, i32, i32, i32, i32*) #1

declare dso_local i32 @al_serdes_25g_reg_write(%struct.al_serdes_grp_obj*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
