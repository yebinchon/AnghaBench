; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_continue_debug_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_continue_debug_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@s = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"ContinueDebugEvent pid\00", align 1
@GDB_CONTINUEDEBUGEVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"ContinueDebugEvent tid\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"ContinueDebugEvent status\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"ContinueDebugEvent result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @continue_debug_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @continue_debug_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* @s, align 8
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %24

12:                                               ; preds = %3
  %13 = load i32, i32* @GDB_CONTINUEDEBUGEVENT, align 4
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @putdword(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14)
  %16 = load i32, i32* @GDB_CONTINUEDEBUGEVENT, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @putdword(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %16, i32 %17)
  %19 = load i32, i32* @GDB_CONTINUEDEBUGEVENT, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 @putdword(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %19, i32 %20)
  %22 = load i32, i32* @GDB_CONTINUEDEBUGEVENT, align 4
  %23 = call i32 @getresult(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %22, i32* %8, i32* null)
  store i32 %23, i32* %4, align 4
  br label %24

24:                                               ; preds = %12, %11
  %25 = load i32, i32* %4, align 4
  ret i32 %25
}

declare dso_local i32 @putdword(i8*, i32, i32) #1

declare dso_local i32 @getresult(i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
