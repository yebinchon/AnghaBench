; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }

@RDIError_NoError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"RDI_write: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"RDI_read: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i32, i32, %struct.mem_attrib*, %struct.target_ops*)* @arm_rdi_xfer_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_rdi_xfer_memory(i32 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_attrib*, align 8
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %11, align 8
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %29

17:                                               ; preds = %6
  %18 = load i8*, i8** %8, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @angel_RDI_write(i8* %18, i32 %19, i32* %9)
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* @RDIError_NoError, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %13, align 4
  %26 = call i32 @rdi_error_message(i32 %25)
  %27 = call i32 @printf_filtered(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %26)
  br label %28

28:                                               ; preds = %24, %17
  br label %41

29:                                               ; preds = %6
  %30 = load i32, i32* %7, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = call i32 @angel_RDI_read(i32 %30, i8* %31, i32* %9)
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* @RDIError_NoError, align 4
  %35 = icmp ne i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %29
  %37 = load i32, i32* %13, align 4
  %38 = call i32 @rdi_error_message(i32 %37)
  %39 = call i32 @printf_filtered(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %38)
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %29
  br label %41

41:                                               ; preds = %40, %28
  %42 = load i32, i32* %9, align 4
  ret i32 %42
}

declare dso_local i32 @angel_RDI_write(i8*, i32, i32*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @rdi_error_message(i32) #1

declare dso_local i32 @angel_RDI_read(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
