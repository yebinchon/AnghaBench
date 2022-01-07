; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_remove_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_remove_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_bp_list_entry = type { i64, %struct.local_bp_list_entry*, i32 }

@local_bp_list = common dso_local global %struct.local_bp_list_entry* null, align 8
@RDIError_NoError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"RDI_clearbreak: %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*)* @arm_rdi_remove_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_rdi_remove_breakpoint(i64 %0, i8* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_bp_list_entry**, align 8
  %8 = alloca %struct.local_bp_list_entry*, align 8
  store i64 %0, i64* %3, align 8
  store i8* %1, i8** %4, align 8
  store %struct.local_bp_list_entry** @local_bp_list, %struct.local_bp_list_entry*** %7, align 8
  br label %9

9:                                                ; preds = %22, %2
  %10 = load %struct.local_bp_list_entry**, %struct.local_bp_list_entry*** %7, align 8
  %11 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %10, align 8
  %12 = icmp ne %struct.local_bp_list_entry* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %9
  %14 = load %struct.local_bp_list_entry**, %struct.local_bp_list_entry*** %7, align 8
  %15 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %14, align 8
  %16 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* %3, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  br label %26

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21
  %23 = load %struct.local_bp_list_entry**, %struct.local_bp_list_entry*** %7, align 8
  %24 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %23, align 8
  %25 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %24, i32 0, i32 1
  store %struct.local_bp_list_entry** %25, %struct.local_bp_list_entry*** %7, align 8
  br label %9

26:                                               ; preds = %20, %9
  %27 = load %struct.local_bp_list_entry**, %struct.local_bp_list_entry*** %7, align 8
  %28 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %27, align 8
  %29 = icmp ne %struct.local_bp_list_entry* %28, null
  br i1 %29, label %30, label %51

30:                                               ; preds = %26
  %31 = load %struct.local_bp_list_entry**, %struct.local_bp_list_entry*** %7, align 8
  %32 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %31, align 8
  store %struct.local_bp_list_entry* %32, %struct.local_bp_list_entry** %8, align 8
  %33 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %8, align 8
  %34 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @angel_RDI_clearbreak(i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @RDIError_NoError, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %30
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @rdi_error_message(i32 %41)
  %43 = call i32 @printf_filtered(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %42)
  br label %44

44:                                               ; preds = %40, %30
  %45 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %8, align 8
  %46 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %45, i32 0, i32 1
  %47 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %46, align 8
  %48 = load %struct.local_bp_list_entry**, %struct.local_bp_list_entry*** %7, align 8
  store %struct.local_bp_list_entry* %47, %struct.local_bp_list_entry** %48, align 8
  %49 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %8, align 8
  %50 = call i32 @xfree(%struct.local_bp_list_entry* %49)
  br label %51

51:                                               ; preds = %44, %26
  ret i32 0
}

declare dso_local i32 @angel_RDI_clearbreak(i32) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @rdi_error_message(i32) #1

declare dso_local i32 @xfree(%struct.local_bp_list_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
