; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_bell.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_cl_bell.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SC_EX = common dso_local global i32 0, align 4
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4
@SC_SCR_EX = common dso_local global i32 0, align 4
@STDOUT_FILENO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\07\00", align 1
@O_FLASH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cl_bell(i32* %0) #0 {
  %2 = alloca i32*, align 8
  store i32* %0, i32** %2, align 8
  %3 = load i32*, i32** %2, align 8
  %4 = load i32, i32* @SC_EX, align 4
  %5 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %6 = or i32 %4, %5
  %7 = load i32, i32* @SC_SCR_EX, align 4
  %8 = or i32 %6, %7
  %9 = call i64 @F_ISSET(i32* %3, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @STDOUT_FILENO, align 4
  %13 = call i32 @write(i32 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 1)
  br label %24

14:                                               ; preds = %1
  %15 = load i32*, i32** %2, align 8
  %16 = load i32, i32* @O_FLASH, align 4
  %17 = call i64 @O_ISSET(i32* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = call i32 (...) @flash()
  br label %23

21:                                               ; preds = %14
  %22 = call i32 (...) @beep()
  br label %23

23:                                               ; preds = %21, %19
  br label %24

24:                                               ; preds = %23, %11
  ret i32 0
}

declare dso_local i64 @F_ISSET(i32*, i32) #1

declare dso_local i32 @write(i32, i8*, i32) #1

declare dso_local i64 @O_ISSET(i32*, i32) #1

declare dso_local i32 @flash(...) #1

declare dso_local i32 @beep(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
