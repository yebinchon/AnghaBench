; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_xfer_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_win32-nat.c_child_xfer_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_attrib = type { i32 }
%struct.target_ops = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"gdb: write target memory, %d bytes at 0x%08lx\0A\00", align 1
@current_process_handle = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"gdb: read target memory, %d bytes at 0x%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @child_xfer_memory(i64 %0, i8* %1, i32 %2, i32 %3, %struct.mem_attrib* %4, %struct.target_ops* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mem_attrib*, align 8
  %12 = alloca %struct.target_ops*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.mem_attrib* %4, %struct.mem_attrib** %11, align 8
  store %struct.target_ops* %5, %struct.target_ops** %12, align 8
  store i32 0, i32* %13, align 4
  %14 = load i32, i32* %10, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %6
  %17 = load i32, i32* %9, align 4
  %18 = load i64, i64* %7, align 8
  %19 = trunc i64 %18 to i32
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @DEBUG_MEM(i8* %21)
  %23 = load i32, i32* @current_process_handle, align 4
  %24 = load i64, i64* %7, align 8
  %25 = trunc i64 %24 to i32
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @WriteProcessMemory(i32 %23, i32 %25, i8* %26, i32 %27, i32* %13)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %16
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %30, %16
  %32 = load i32, i32* @current_process_handle, align 4
  %33 = load i64, i64* %7, align 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @FlushInstructionCache(i32 %32, i32 %34, i32 %35)
  br label %53

37:                                               ; preds = %6
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %7, align 8
  %40 = trunc i64 %39 to i32
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @DEBUG_MEM(i8* %42)
  %44 = load i32, i32* @current_process_handle, align 4
  %45 = load i64, i64* %7, align 8
  %46 = trunc i64 %45 to i32
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 @ReadProcessMemory(i32 %44, i32 %46, i8* %47, i32 %48, i32* %13)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %37
  store i32 0, i32* %13, align 4
  br label %52

52:                                               ; preds = %51, %37
  br label %53

53:                                               ; preds = %52, %31
  %54 = load i32, i32* %13, align 4
  ret i32 %54
}

declare dso_local i32 @DEBUG_MEM(i8*) #1

declare dso_local i32 @WriteProcessMemory(i32, i32, i8*, i32, i32*) #1

declare dso_local i32 @FlushInstructionCache(i32, i32, i32) #1

declare dso_local i32 @ReadProcessMemory(i32, i32, i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
