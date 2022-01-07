; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_write_process_memory.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_write_process_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"WriteProcessMemory handle\00", align 1
@GDB_WRITEPROCESSMEMORY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"WriteProcessMemory location\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"WriteProcProcessMemory buf\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"WriteProcessMemory result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32*)* @write_process_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_process_memory(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %12 = load i64, i64* @s, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %29

15:                                               ; preds = %5
  %16 = load i32, i32* @GDB_WRITEPROCESSMEMORY, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @puthandle(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @GDB_WRITEPROCESSMEMORY, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i32 @putpvoid(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @GDB_WRITEPROCESSMEMORY, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = call i32 @putmemory(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @GDB_WRITEPROCESSMEMORY, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = call i32 @getresult(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32* %27, i32* null)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %15, %14
  %30 = load i32, i32* %6, align 4
  ret i32 %30
}

declare dso_local i32 @puthandle(i8*, i32, i32) #1

declare dso_local i32 @putpvoid(i8*, i32, i32) #1

declare dso_local i32 @putmemory(i8*, i32, i32, i32) #1

declare dso_local i32 @getresult(i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
