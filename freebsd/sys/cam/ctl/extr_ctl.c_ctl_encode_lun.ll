; ModuleID = '/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_encode_lun.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/cam/ctl/extr_ctl.c_ctl_encode_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RPL_LUNDATA_ATYP_PERIPH = common dso_local global i64 0, align 8
@RPL_LUNDATA_ATYP_FLAT = common dso_local global i64 0, align 8
@RPL_LUNDATA_ATYP_EXTLUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ctl_encode_lun(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  store i32 %5, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp sle i32 %6, 255
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load i64, i64* @RPL_LUNDATA_ATYP_PERIPH, align 8
  %10 = trunc i64 %9 to i32
  %11 = shl i32 %10, 56
  %12 = load i32, i32* %4, align 4
  %13 = shl i32 %12, 48
  %14 = or i32 %11, %13
  store i32 %14, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp sle i32 %16, 16383
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i64, i64* @RPL_LUNDATA_ATYP_FLAT, align 8
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 56
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 48
  %24 = or i32 %21, %23
  store i32 %24, i32* %2, align 4
  br label %42

25:                                               ; preds = %15
  %26 = load i32, i32* %4, align 4
  %27 = icmp sle i32 %26, 16777215
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i32, i32* @RPL_LUNDATA_ATYP_EXTLUN, align 4
  %30 = or i32 %29, 18
  %31 = shl i32 %30, 56
  %32 = load i32, i32* %4, align 4
  %33 = shl i32 %32, 32
  %34 = or i32 %31, %33
  store i32 %34, i32* %2, align 4
  br label %42

35:                                               ; preds = %25
  %36 = load i32, i32* @RPL_LUNDATA_ATYP_EXTLUN, align 4
  %37 = or i32 %36, 34
  %38 = shl i32 %37, 56
  %39 = load i32, i32* %4, align 4
  %40 = shl i32 %39, 16
  %41 = or i32 %38, %40
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %35, %28, %18, %8
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
