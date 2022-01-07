; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_resume.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_PC_REGNUM = common dso_local global i32 0, align 4
@execute_status = common dso_local global i32 0, align 4
@RDIError_NoError = common dso_local global i32 0, align 4
@RDIError_BreakpointReached = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"RDI_execute: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @arm_rdi_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_rdi_resume(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i8], align 1
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i32, i32* @ARM_PC_REGNUM, align 4
  %15 = call i32 @read_register(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @arm_get_next_pc(i32 %16)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %20 = call i32 @arm_rdi_insert_breakpoint(i32 %18, i8* %19)
  br label %21

21:                                               ; preds = %13, %3
  %22 = call i32 @angel_RDI_execute(i32* %8)
  store i32 %22, i32* %7, align 4
  store i32 %22, i32* @execute_status, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32, i32* @RDIError_NoError, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @RDIError_BreakpointReached, align 4
  %29 = icmp ne i32 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @rdi_error_message(i32 %31)
  %33 = call i32 @printf_filtered(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %32)
  br label %34

34:                                               ; preds = %30, %26, %21
  %35 = load i32, i32* %5, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i64 0, i64 0
  %40 = call i32 @arm_rdi_remove_breakpoint(i32 %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  ret void
}

declare dso_local i32 @read_register(i32) #1

declare dso_local i32 @arm_get_next_pc(i32) #1

declare dso_local i32 @arm_rdi_insert_breakpoint(i32, i8*) #1

declare dso_local i32 @angel_RDI_execute(i32*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @rdi_error_message(i32) #1

declare dso_local i32 @arm_rdi_remove_breakpoint(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
