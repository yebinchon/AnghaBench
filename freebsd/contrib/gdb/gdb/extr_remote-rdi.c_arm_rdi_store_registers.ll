; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_store_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_store_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_REGS = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@RDIReg_PC = common dso_local global i32 0, align 4
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@RDIReg_CPSR = common dso_local global i32 0, align 4
@RDIError_NoError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"RDI_CPUwrite: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @arm_rdi_store_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_rdi_store_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [3 x i64], align 16
  %6 = alloca [3 x i64], align 16
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp eq i32 %7, -1
  br i1 %8, label %9, label %20

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %16, %9
  %11 = load i32, i32* %2, align 4
  %12 = load i32, i32* @NUM_REGS, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load i32, i32* %2, align 4
  call void @arm_rdi_store_registers(i32 %15)
  br label %16

16:                                               ; preds = %14
  %17 = load i32, i32* %2, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %2, align 4
  br label %10

19:                                               ; preds = %10
  br label %64

20:                                               ; preds = %1
  %21 = load i32, i32* %2, align 4
  %22 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %23 = bitcast i64* %22 to i8*
  %24 = call i32 @deprecated_read_register_gen(i32 %21, i8* %23)
  %25 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %26 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %27 = load i64, i64* %26, align 16
  %28 = call i32 @store_unsigned_integer(i64* %25, i32 4, i64 %27)
  %29 = load i32, i32* %2, align 4
  %30 = load i32, i32* @ARM_PC_REGNUM, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load i32, i32* @RDIReg_PC, align 4
  store i32 %33, i32* %4, align 4
  br label %52

34:                                               ; preds = %20
  %35 = load i32, i32* %2, align 4
  %36 = load i32, i32* @ARM_PS_REGNUM, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @RDIReg_CPSR, align 4
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %34
  %41 = load i32, i32* %2, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %2, align 4
  %45 = icmp sgt i32 %44, 15
  br i1 %45, label %46, label %47

46:                                               ; preds = %43, %40
  br label %64

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = shl i32 1, %48
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %47
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %32
  %53 = load i32, i32* %4, align 4
  %54 = getelementptr inbounds [3 x i64], [3 x i64]* %6, i64 0, i64 0
  %55 = call i32 @angel_RDI_CPUwrite(i32 255, i32 %53, i64* %54)
  store i32 %55, i32* %3, align 4
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* @RDIError_NoError, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %52
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @rdi_error_message(i32 %60)
  %62 = call i32 @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %61)
  br label %63

63:                                               ; preds = %59, %52
  br label %64

64:                                               ; preds = %46, %63, %19
  ret void
}

declare dso_local i32 @deprecated_read_register_gen(i32, i8*) #1

declare dso_local i32 @store_unsigned_integer(i64*, i32, i64) #1

declare dso_local i32 @angel_RDI_CPUwrite(i32, i32, i64*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @rdi_error_message(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
