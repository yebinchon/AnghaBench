; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rom68k-rom.c_rom68k_regname.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_rom68k-rom.c_rom68k_regname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rom68k_regname.regnames = internal global [18 x i8*] [i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [3 x i8] c"D0\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"D1\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"D2\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"D3\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"D4\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"D5\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c"D6\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"D7\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"A0\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"A1\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"A2\00", align 1
@.str.11 = private unnamed_addr constant [3 x i8] c"A3\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"A4\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"A5\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"A6\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"ISP\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"SR\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"PC\00", align 1
@NUM_REGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @rom68k_regname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rom68k_regname(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp uge i64 %5, 18
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %7
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @NUM_REGS, align 4
  %13 = icmp sge i32 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %7, %1
  store i8* null, i8** %2, align 8
  br label %20

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [18 x i8*], [18 x i8*]* @rom68k_regname.regnames, i64 0, i64 %17
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %2, align 8
  br label %20

20:                                               ; preds = %15, %14
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
