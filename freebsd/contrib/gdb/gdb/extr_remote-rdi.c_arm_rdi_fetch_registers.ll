; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_fetch_registers.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_fetch_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RDIError_NoError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RDI_CPUread: %s\0A\00", align 1
@ARM_PS_REGNUM = common dso_local global i32 0, align 4
@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@RDIReg_PC = common dso_local global i32 0, align 4
@RDIReg_CPSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @arm_rdi_fetch_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_rdi_fetch_registers(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca [32 x i64], align 16
  %7 = alloca [4 x i8], align 1
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = icmp eq i32 %8, -1
  br i1 %9, label %10, label %46

10:                                               ; preds = %1
  %11 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 0
  %12 = call i32 @angel_RDI_CPUread(i32 255, i32 163839, i64* %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @RDIError_NoError, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %10
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @rdi_error_message(i32 %17)
  %19 = call i32 @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %10
  store i32 0, i32* %2, align 4
  br label %21

21:                                               ; preds = %34, %20
  %22 = load i32, i32* %2, align 4
  %23 = icmp slt i32 %22, 15
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %26 = load i32, i32* %2, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @store_unsigned_integer(i8* %25, i32 4, i64 %29)
  %31 = load i32, i32* %2, align 4
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %33 = call i32 @supply_register(i32 %31, i8* %32)
  br label %34

34:                                               ; preds = %24
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %2, align 4
  br label %21

37:                                               ; preds = %21
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %39 = getelementptr inbounds [32 x i64], [32 x i64]* %6, i64 0, i64 15
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @store_unsigned_integer(i8* %38, i32 4, i64 %40)
  %42 = load i32, i32* @ARM_PS_REGNUM, align 4
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %44 = call i32 @supply_register(i32 %42, i8* %43)
  %45 = load i32, i32* @ARM_PC_REGNUM, align 4
  call void @arm_rdi_fetch_registers(i32 %45)
  br label %90

46:                                               ; preds = %1
  %47 = load i32, i32* %2, align 4
  %48 = load i32, i32* @ARM_PC_REGNUM, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32, i32* @RDIReg_PC, align 4
  store i32 %51, i32* %4, align 4
  br label %73

52:                                               ; preds = %46
  %53 = load i32, i32* %2, align 4
  %54 = load i32, i32* @ARM_PS_REGNUM, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %52
  %57 = load i32, i32* @RDIReg_CPSR, align 4
  store i32 %57, i32* %4, align 4
  br label %72

58:                                               ; preds = %52
  %59 = load i32, i32* %2, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* %2, align 4
  %63 = icmp sgt i32 %62, 15
  br i1 %63, label %64, label %68

64:                                               ; preds = %61, %58
  store i64 0, i64* %5, align 8
  %65 = load i32, i32* %2, align 4
  %66 = bitcast i64* %5 to i8*
  %67 = call i32 @supply_register(i32 %65, i8* %66)
  br label %90

68:                                               ; preds = %61
  %69 = load i32, i32* %2, align 4
  %70 = shl i32 1, %69
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %68
  br label %72

72:                                               ; preds = %71, %56
  br label %73

73:                                               ; preds = %72, %50
  %74 = load i32, i32* %4, align 4
  %75 = call i32 @angel_RDI_CPUread(i32 255, i32 %74, i64* %5)
  store i32 %75, i32* %3, align 4
  %76 = load i32, i32* %3, align 4
  %77 = load i32, i32* @RDIError_NoError, align 4
  %78 = icmp ne i32 %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = load i32, i32* %3, align 4
  %81 = call i32 @rdi_error_message(i32 %80)
  %82 = call i32 @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %81)
  br label %83

83:                                               ; preds = %79, %73
  %84 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @store_unsigned_integer(i8* %84, i32 4, i64 %85)
  %87 = load i32, i32* %2, align 4
  %88 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %89 = call i32 @supply_register(i32 %87, i8* %88)
  br label %90

90:                                               ; preds = %64, %83, %37
  ret void
}

declare dso_local i32 @angel_RDI_CPUread(i32, i32, i64*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @rdi_error_message(i32) #1

declare dso_local i32 @store_unsigned_integer(i8*, i32, i64) #1

declare dso_local i32 @supply_register(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
