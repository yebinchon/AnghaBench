; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_insert_breakpoint.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_arm_rdi_insert_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.local_bp_list_entry = type { %struct.local_bp_list_entry*, i32, i32 }

@RDIPoint_EQ = common dso_local global i32 0, align 4
@RDIPoint_16Bit = common dso_local global i32 0, align 4
@RDIError_NoError = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"RDI_setbreak: %s\0A\00", align 1
@local_bp_list = common dso_local global %struct.local_bp_list_entry* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @arm_rdi_insert_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @arm_rdi_insert_breakpoint(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.local_bp_list_entry*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i32, i32* @RDIPoint_EQ, align 4
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* %3, align 4
  %11 = call i64 @arm_pc_is_thumb(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* %3, align 4
  %15 = call i64 @arm_pc_is_thumb_dummy(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13, %2
  %18 = load i32, i32* @RDIPoint_16Bit, align 4
  %19 = load i32, i32* %8, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %8, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* %3, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @angel_RDI_setbreak(i32 %22, i32 %23, i32 0, i32* %6)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @RDIError_NoError, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @rdi_error_message(i32 %29)
  %31 = call i32 @printf_filtered(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %28, %21
  %33 = call i64 @xmalloc(i32 16)
  %34 = inttoptr i64 %33 to %struct.local_bp_list_entry*
  store %struct.local_bp_list_entry* %34, %struct.local_bp_list_entry** %7, align 8
  %35 = load i32, i32* %3, align 4
  %36 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %7, align 8
  %37 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %7, align 8
  %40 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** @local_bp_list, align 8
  %42 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %7, align 8
  %43 = getelementptr inbounds %struct.local_bp_list_entry, %struct.local_bp_list_entry* %42, i32 0, i32 0
  store %struct.local_bp_list_entry* %41, %struct.local_bp_list_entry** %43, align 8
  %44 = load %struct.local_bp_list_entry*, %struct.local_bp_list_entry** %7, align 8
  store %struct.local_bp_list_entry* %44, %struct.local_bp_list_entry** @local_bp_list, align 8
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i64 @arm_pc_is_thumb(i32) #1

declare dso_local i64 @arm_pc_is_thumb_dummy(i32) #1

declare dso_local i32 @angel_RDI_setbreak(i32, i32, i32, i32*) #1

declare dso_local i32 @printf_filtered(i8*, i32) #1

declare dso_local i32 @rdi_error_message(i32) #1

declare dso_local i64 @xmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
