; ModuleID = '/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_getspeed.c'
source_filename = "/home/carl/AnghaBench/freebsd/stand/i386/libi386/extr_comconsole.c_comc_getspeed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@comc_port = common dso_local global i64 0, align 8
@com_cfcr = common dso_local global i64 0, align 8
@CFCR_DLAB = common dso_local global i32 0, align 4
@com_dlbl = common dso_local global i64 0, align 8
@com_dlbh = common dso_local global i64 0, align 8
@COMSPEED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @comc_getspeed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comc_getspeed() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i64, i64* @comc_port, align 8
  %7 = load i64, i64* @com_cfcr, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i32 @inb(i64 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i64, i64* @comc_port, align 8
  %11 = load i64, i64* @com_cfcr, align 8
  %12 = add nsw i64 %10, %11
  %13 = load i32, i32* @CFCR_DLAB, align 4
  %14 = load i32, i32* %5, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @outb(i64 %12, i32 %15)
  %17 = load i64, i64* @comc_port, align 8
  %18 = load i64, i64* @com_dlbl, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @inb(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i64, i64* @comc_port, align 8
  %22 = load i64, i64* @com_dlbh, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @inb(i64 %23)
  store i32 %24, i32* %3, align 4
  %25 = load i64, i64* @comc_port, align 8
  %26 = load i64, i64* @com_cfcr, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @outb(i64 %27, i32 %28)
  %30 = load i32, i32* %3, align 4
  %31 = shl i32 %30, 8
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %2, align 4
  %34 = load i32, i32* %2, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %0
  %37 = load i32, i32* @COMSPEED, align 4
  store i32 %37, i32* %1, align 4
  br label %41

38:                                               ; preds = %0
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @COMC_DIV2BPS(i32 %39)
  store i32 %40, i32* %1, align 4
  br label %41

41:                                               ; preds = %38, %36
  %42 = load i32, i32* %1, align 4
  ret i32 %42
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @outb(i64, i32) #1

declare dso_local i32 @COMC_DIV2BPS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
