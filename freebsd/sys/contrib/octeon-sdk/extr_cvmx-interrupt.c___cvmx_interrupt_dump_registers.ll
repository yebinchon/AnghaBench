; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_dump_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-interrupt.c___cvmx_interrupt_dump_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [51 x i8] c"%3s ($%02d): 0x%08x%08x \09 %3s ($%02d): 0x%08x%08x\0A\00", align 1
@reg_names = common dso_local global i32* null, align 8
@COP0_CAUSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"COP0_CAUSE\00", align 1
@COP0_STATUS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"COP0_STATUS\00", align 1
@COP0_BADVADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"COP0_BADVADDR\00", align 1
@COP0_EPC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [9 x i8] c"COP0_EPC\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*)* @__cvmx_interrupt_dump_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cvmx_interrupt_dump_registers(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %48, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 16
  br i1 %8, label %9, label %51

9:                                                ; preds = %6
  %10 = load i32*, i32** %2, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 16
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %15, i64 %18
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %4, align 4
  %21 = load i32*, i32** @reg_names, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @HI32(i32 %27)
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* %3, align 4
  %31 = call i64 @LO32(i32 %30)
  %32 = trunc i64 %31 to i32
  %33 = load i32*, i32** @reg_names, align 8
  %34 = load i32, i32* %5, align 4
  %35 = add nsw i32 %34, 16
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %33, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 16
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @HI32(i32 %41)
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* %4, align 4
  %45 = call i64 @LO32(i32 %44)
  %46 = trunc i64 %45 to i32
  %47 = call i32 @cvmx_safe_printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %26, i32 %29, i32 %32, i32 %38, i32 %40, i32 %43, i32 %46)
  br label %48

48:                                               ; preds = %9
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %6

51:                                               ; preds = %6
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* @COP0_CAUSE, align 4
  %54 = call i32 @CVMX_MF_COP0(i32 %52, i32 %53)
  %55 = load i32, i32* %3, align 4
  %56 = call i32 @print_reg64(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @COP0_STATUS, align 4
  %59 = call i32 @CVMX_MF_COP0(i32 %57, i32 %58)
  %60 = load i32, i32* %4, align 4
  %61 = call i32 @print_reg64(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %3, align 4
  %63 = load i32, i32* @COP0_BADVADDR, align 4
  %64 = call i32 @CVMX_MF_COP0(i32 %62, i32 %63)
  %65 = load i32, i32* %3, align 4
  %66 = call i32 @print_reg64(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* %4, align 4
  %68 = load i32, i32* @COP0_EPC, align 4
  %69 = call i32 @CVMX_MF_COP0(i32 %67, i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = call i32 @print_reg64(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i32 %70)
  ret void
}

declare dso_local i32 @cvmx_safe_printf(i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i64 @HI32(i32) #1

declare dso_local i64 @LO32(i32) #1

declare dso_local i32 @CVMX_MF_COP0(i32, i32) #1

declare dso_local i32 @print_reg64(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
