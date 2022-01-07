; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_readchar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-e7000.c_readchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@e7000_desc = common dso_local global i32 0, align 4
@SERIAL_TIMEOUT = common dso_local global i32 0, align 4
@echo = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [36 x i8] c"Timeout reading from remote system.\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Serial communication error\00", align 1
@remote_debug = common dso_local global i64 0, align 8
@gdb_stdout = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @readchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @readchar(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %5

5:                                                ; preds = %9, %1
  %6 = load i32, i32* @e7000_desc, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @serial_readchar(i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %5
  %10 = load i32, i32* %4, align 4
  %11 = icmp sgt i32 %10, 127
  br i1 %11, label %5, label %12

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @SERIAL_TIMEOUT, align 4
  %15 = icmp eq i32 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %39

20:                                               ; preds = %16
  store i64 0, i64* @echo, align 8
  %21 = call i32 @error(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

22:                                               ; preds = %12
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %22
  %26 = call i32 @error(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i64, i64* @remote_debug, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @putchar_unfiltered(i32 %32)
  %34 = load i32, i32* @gdb_stdout, align 4
  %35 = call i32 @gdb_flush(i32 %34)
  br label %36

36:                                               ; preds = %31, %28
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @normal(i32 %37)
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %36, %19
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local i32 @serial_readchar(i32, i32) #1

declare dso_local i32 @error(i8*) #1

declare dso_local i32 @putchar_unfiltered(i32) #1

declare dso_local i32 @gdb_flush(i32) #1

declare dso_local i32 @normal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
