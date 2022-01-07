; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_create_process.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_wince.c_create_process.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"CreateProcess exec_file\00", align 1
@GDB_CREATEPROCESS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"CreateProcess args\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"CreateProcess flags\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"CreateProcess result\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @create_process to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_process(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @towide(i32 %11, i32* %9)
  store i32 %12, i32* %10, align 4
  %13 = load i32, i32* @GDB_CREATEPROCESS, align 4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @putmemory(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @towide(i32 %17, i32* %9)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* @GDB_CREATEPROCESS, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @putmemory(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* @GDB_CREATEPROCESS, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @putdword(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %23, i32 %24)
  %26 = load i32, i32* @GDB_CREATEPROCESS, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @getresult(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %26, i32* %27, i32* null)
  ret i32 %28
}

declare dso_local i32 @towide(i32, i32*) #1

declare dso_local i32 @putmemory(i8*, i32, i32, i32) #1

declare dso_local i32 @putdword(i8*, i32, i32) #1

declare dso_local i32 @getresult(i8*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
