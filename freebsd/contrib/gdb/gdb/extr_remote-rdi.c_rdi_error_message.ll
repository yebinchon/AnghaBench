; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_rdi_error_message.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_remote-rdi.c_rdi_error_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"no error\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"debuggee reset\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"undefined instruction\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"SWI trapped\00", align 1
@.str.4 = private unnamed_addr constant [52 x i8] c"prefetch abort, execution ran into unmapped memory?\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"data abort, no memory at specified address?\00", align 1
@.str.6 = private unnamed_addr constant [47 x i8] c"address exception, access >26bit in 26bit mode\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"IRQ, interrupt trapped\00", align 1
@.str.8 = private unnamed_addr constant [28 x i8] c"FIQ, fast interrupt trapped\00", align 1
@.str.9 = private unnamed_addr constant [30 x i8] c"a miscellaneous type of error\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"branch through location 0\00", align 1
@.str.11 = private unnamed_addr constant [42 x i8] c"internal error, RDI_open not called first\00", align 1
@.str.12 = private unnamed_addr constant [39 x i8] c"internal error, target world is broken\00", align 1
@.str.13 = private unnamed_addr constant [27 x i8] c"See Operator: WrongByteSex\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"See Operator: Unable to Terminate\00", align 1
@.str.15 = private unnamed_addr constant [53 x i8] c"bad instruction, illegal to execute this instruction\00", align 1
@.str.16 = private unnamed_addr constant [61 x i8] c"illegal instruction, the effect of executing it is undefined\00", align 1
@.str.17 = private unnamed_addr constant [47 x i8] c"internal error, tried to set SPSR of user mode\00", align 1
@.str.18 = private unnamed_addr constant [21 x i8] c"unknown co-processor\00", align 1
@.str.19 = private unnamed_addr constant [36 x i8] c"cannot execute co-processor request\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"recognizably broken co-processor request\00", align 1
@.str.21 = private unnamed_addr constant [31 x i8] c"internal error, bad point yype\00", align 1
@.str.22 = private unnamed_addr constant [35 x i8] c"internal error, unimplemented type\00", align 1
@.str.23 = private unnamed_addr constant [31 x i8] c"internal error, bad point size\00", align 1
@.str.24 = private unnamed_addr constant [35 x i8] c"internal error, unimplemented size\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"last break/watch point was used\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"breakpoint reached\00", align 1
@.str.27 = private unnamed_addr constant [20 x i8] c"watchpoint accessed\00", align 1
@.str.28 = private unnamed_addr constant [50 x i8] c"attempted to clear non-existent break/watch point\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"end of the program reached while stepping\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"you pressed Escape\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"no more break/watch points available\00", align 1
@.str.32 = private unnamed_addr constant [24 x i8] c"incompatible RDI levels\00", align 1
@.str.33 = private unnamed_addr constant [26 x i8] c"debuggee is little endian\00", align 1
@.str.34 = private unnamed_addr constant [23 x i8] c"debuggee is big endian\00", align 1
@.str.35 = private unnamed_addr constant [40 x i8] c"recoverable error in RDI initialization\00", align 1
@.str.36 = private unnamed_addr constant [59 x i8] c"internal error, supervisor state not accessible to monitor\00", align 1
@.str.37 = private unnamed_addr constant [38 x i8] c"internal error, unimplemented message\00", align 1
@.str.38 = private unnamed_addr constant [34 x i8] c"internal error, undefined message\00", align 1
@.str.39 = private unnamed_addr constant [45 x i8] c"undefined error message, should reset target\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @rdi_error_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @rdi_error_message(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  switch i32 %4, label %44 [
    i32 148, label %5
    i32 142, label %6
    i32 137, label %7
    i32 140, label %8
    i32 144, label %9
    i32 156, label %10
    i32 166, label %11
    i32 153, label %12
    i32 154, label %13
    i32 155, label %14
    i32 159, label %15
    i32 145, label %16
    i32 139, label %17
    i32 128, label %18
    i32 138, label %19
    i32 163, label %20
    i32 152, label %21
    i32 165, label %22
    i32 132, label %23
    i32 131, label %24
    i32 164, label %25
    i32 161, label %26
    i32 133, label %27
    i32 162, label %28
    i32 134, label %29
    i32 147, label %30
    i32 158, label %31
    i32 129, label %32
    i32 146, label %33
    i32 143, label %34
    i32 130, label %35
    i32 157, label %36
    i32 151, label %37
    i32 149, label %38
    i32 160, label %39
    i32 141, label %40
    i32 150, label %41
    i32 135, label %42
    i32 136, label %43
  ]

5:                                                ; preds = %1
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %45

6:                                                ; preds = %1
  store i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %45

7:                                                ; preds = %1
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %45

8:                                                ; preds = %1
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %45

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %45

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %45

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %45

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %45

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %45

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %45

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0), i8** %2, align 8
  br label %45

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.11, i64 0, i64 0), i8** %2, align 8
  br label %45

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.12, i64 0, i64 0), i8** %2, align 8
  br label %45

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.13, i64 0, i64 0), i8** %2, align 8
  br label %45

19:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.14, i64 0, i64 0), i8** %2, align 8
  br label %45

20:                                               ; preds = %1
  store i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.15, i64 0, i64 0), i8** %2, align 8
  br label %45

21:                                               ; preds = %1
  store i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.16, i64 0, i64 0), i8** %2, align 8
  br label %45

22:                                               ; preds = %1
  store i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.17, i64 0, i64 0), i8** %2, align 8
  br label %45

23:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i8** %2, align 8
  br label %45

24:                                               ; preds = %1
  store i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.19, i64 0, i64 0), i8** %2, align 8
  br label %45

25:                                               ; preds = %1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.20, i64 0, i64 0), i8** %2, align 8
  br label %45

26:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.21, i64 0, i64 0), i8** %2, align 8
  br label %45

27:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.22, i64 0, i64 0), i8** %2, align 8
  br label %45

28:                                               ; preds = %1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.23, i64 0, i64 0), i8** %2, align 8
  br label %45

29:                                               ; preds = %1
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i64 0, i64 0), i8** %2, align 8
  br label %45

30:                                               ; preds = %1
  store i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i64 0, i64 0), i8** %2, align 8
  br label %45

31:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i64 0, i64 0), i8** %2, align 8
  br label %45

32:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.27, i64 0, i64 0), i8** %2, align 8
  br label %45

33:                                               ; preds = %1
  store i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.28, i64 0, i64 0), i8** %2, align 8
  br label %45

34:                                               ; preds = %1
  store i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.29, i64 0, i64 0), i8** %2, align 8
  br label %45

35:                                               ; preds = %1
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.30, i64 0, i64 0), i8** %2, align 8
  br label %45

36:                                               ; preds = %1
  store i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.31, i64 0, i64 0), i8** %2, align 8
  br label %45

37:                                               ; preds = %1
  store i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.32, i64 0, i64 0), i8** %2, align 8
  br label %45

38:                                               ; preds = %1
  store i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.33, i64 0, i64 0), i8** %2, align 8
  br label %45

39:                                               ; preds = %1
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.34, i64 0, i64 0), i8** %2, align 8
  br label %45

40:                                               ; preds = %1
  store i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.35, i64 0, i64 0), i8** %2, align 8
  br label %45

41:                                               ; preds = %1
  store i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.36, i64 0, i64 0), i8** %2, align 8
  br label %45

42:                                               ; preds = %1
  store i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.37, i64 0, i64 0), i8** %2, align 8
  br label %45

43:                                               ; preds = %1
  store i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.38, i64 0, i64 0), i8** %2, align 8
  br label %45

44:                                               ; preds = %1
  store i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.39, i64 0, i64 0), i8** %2, align 8
  br label %45

45:                                               ; preds = %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %33, %32, %31, %30, %29, %28, %27, %26, %25, %24, %23, %22, %21, %20, %19, %18, %17, %16, %15, %14, %13, %12, %11, %10, %9, %8, %7, %6, %5
  %46 = load i8*, i8** %2, align 8
  ret i8* %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
