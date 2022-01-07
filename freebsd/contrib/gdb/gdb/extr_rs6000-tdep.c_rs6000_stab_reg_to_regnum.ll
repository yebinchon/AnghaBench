; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_stab_reg_to_regnum.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rs6000-tdep.c_rs6000_stab_reg_to_regnum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@current_gdbarch = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @rs6000_stab_reg_to_regnum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rs6000_stab_reg_to_regnum(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  switch i32 %4, label %25 [
    i32 64, label %5
    i32 65, label %10
    i32 66, label %15
    i32 76, label %20
  ]

5:                                                ; preds = %1
  %6 = load i32, i32* @current_gdbarch, align 4
  %7 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %3, align 4
  br label %27

10:                                               ; preds = %1
  %11 = load i32, i32* @current_gdbarch, align 4
  %12 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %1
  %16 = load i32, i32* @current_gdbarch, align 4
  %17 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %3, align 4
  br label %27

20:                                               ; preds = %1
  %21 = load i32, i32* @current_gdbarch, align 4
  %22 = call %struct.TYPE_2__* @gdbarch_tdep(i32 %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %3, align 4
  br label %27

25:                                               ; preds = %1
  %26 = load i32, i32* %2, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %25, %20, %15, %10, %5
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.TYPE_2__* @gdbarch_tdep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
